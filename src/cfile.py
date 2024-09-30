import ctypes
import subprocess
import os
import logging
from natsort import natsorted
from src import project_dir


__all__ = [
    'create_shared_cfile', 'build_c_netlist_text_main_structure', 'build_c_netlist_text',
]

logger = logging.getLogger(__name__)


def create_shared_cfile(circuit, written_in=None):

    cmd = f"{project_dir}/src/bash/get_shared_clib.sh {project_dir}/libs/library.c"
    subprocess.run(cmd, shell=True, check=True)
    _lib = ctypes.CDLL(os.path.join(project_dir, 'libs', '_library.so'), mode=ctypes.RTLD_GLOBAL)

    cfile = written_in or os.path.join(project_dir, 'circuits', circuit, 'top.c')
    cmd = f"{project_dir}/src/bash/get_shared_clib.sh {cfile}"
    logger.debug(f"Command to create shared library:\n{cmd}")
    subprocess.run(cmd, shell=True, check=True)
    # cdll_shared_lib = ctypes.CDLL(f"{project_dir}/circuits/{circuit}/_top_{circuit}.so", mode=ctypes.RTLD_GLOBAL)
    #
    # return cdll_shared_lib


def build_c_netlist_text_main_structure(netlist, graph):
    """Build main part of C-netlist file, based on the graph topological ordering"""
    # TODO: Inputs are not taken into account in the C-netlist file. Fix!
    # TODO: Order of written IO pins depends on the netlist, but it may not be the same order
    #       as the one in the C libary. If the sanity test fails, check this also.
    netl_c = ''
    null_counter = 0

    ## TODO: Find a way to make this dict reflect the already replaced edges from the
    ##       input netlist.
    replaced = {
        (edge.net, replacement) for edge, _, replacement in graph.replaced_edges
    }

    # iterate over all nodes
    for node in [graph.get_node[node_name] for node_name in graph.top_sort]:

        # get wires that drive the input pins of the node
        inp_nets = [
            [
                edge.net for edge in graph.get_edges['->' + node.name]
                if edge.destination_pin == pin
            ][0]
            for pin in node.input_pins
        ]

        outp_nets = []
        # get the wires driven by the output pins of the node, if exist
        for pin in netlist.gate_dict[node.type][1]:
            # this returns if node has not been approximated
            outnets = [
                edge.net for edge in graph.get_edges[node.name + '->']
                if edge.origin_pin == pin
            ]
            # this includes the replaced wires of the node's output
            outnets += [
                edge.net for edge, *_ in graph.replaced_edges
                if edge.origin == node.name and edge.origin_pin == pin
            ]
            # if no wires were found, this means the node has an output pin
            # which is not used in this netlist. Replace with null pointer
            if not outnets:
                outp_nets.append('&null' + str(null_counter))
                null_counter += 1
            else:
                outp_nets.append(
                    '&' + outnets[0]
                    # if the wire is part of a bus output wire
                    if not (outnets[0] in netlist.netlist_data['outputs'] and
                            outnets[0] in netlist.netlist_data['unique_outputs'])
                    # if the output wire is not a bus, single output wire
                    else f'&{outnets[0]}[0]'
                )

        # keep only the output wires not declared so far and are not circuit outputs
        undec_outp_nets = {
            outp_net for outp_net in outp_nets
            # if the wire has not been declared above
            if 'int ' + outp_net.replace('&', '') + ';' not in netl_c and
            # and if the wire is not an output bus wire
            outp_net.replace('&', '') not in netlist.netlist_data['outputs'] and
            # abd if the wire is not an output non-bus wire
            outp_net.replace('&', '').replace('[0]', '') not in netlist.netlist_data['outputs']
        }
        # declare the output wires
        for outp_net in undec_outp_nets:
            netl_c += '\n\tint ' + outp_net.replace('&', '') + ';'

        # write call to node-equivalent function
        netl_c += '\n\t' + node.type + "( " + ', '.join(inp_nets + outp_nets) + ');'

        # this is a work-around for a single output of a single wire (non-bus output), so that even a single output
        # wire gets assigned its correct index in the ax_values array of the chromosome
        outp_net_ids = {
            outp_net:
            netlist.net_id[outp_net.replace("&", "")]
            if outp_net.replace('&', '').replace('[0]', '') not in netlist.netlist_data["outputs"]
            else netlist.net_id[outp_net.replace('&', '').replace('[0]', '')]
            for outp_net in outp_nets
            if 'null' not in outp_net and
            (outp_net.replace('&', '') in netlist.net_id or
             outp_net.replace('&', '').replace('[0]', '') in netlist.net_id)
        }

        # write function call to approximate the value of the outputs of the node by their corresponding position
        # in the ax values array
        for outp_net in outp_nets:
            if 'null' not in outp_net and outp_net in outp_net_ids:
                netl_c += f'\n\t{outp_net.replace("&", "")} = assign_value_to_net(' \
                          f'ax_values, {outp_net_ids[outp_net]}, {outp_net.replace("&", "")}' \
                          f');'

        # write replacement assignment for node outputs, right by the side of the call
        netl_c += ''.join([
            ' ' + net_replaced + ' = ' + value_replacement + ';'
            for net_replaced, value_replacement in replaced
            if f'&{net_replaced}' in undec_outp_nets
        ])

    # write replacement assignment for circuit outputs at the end
    netl_c += ''.join([
        '\n\t' + net + ' = ' + rpl + ';'
        for net, rpl in replaced if net in netlist.netlist_data['outputs']
    ])
    return netl_c


def build_c_netlist_binary_filetest(netlist, inputs_separator='_'):
    inputs_file = f"{project_dir}/circuits/{netlist.circuit}/inputs.txt"
    outputs_file = f"{project_dir}/circuits/{netlist.circuit}/outputs.txt"

    output_name = next(iter(netlist.netlist_data['unique_outputs']))  # single output is expected
    len_define = 'int ' + ', '.join([
        f'len{i + 1}={bits}' for i, bits in enumerate(netlist.netlist_data['bits_per_unique_input'].values())
    ]) + f', len0=outsize;'

    bin_arrays_define = 'int ' + ', '.join([
        f'{input}_bin[{bits}]' for input, bits in netlist.netlist_data['bits_per_unique_input'].items()
    ]) + f', {output_name}_bin[outsize];'

    split_binary_arrays_parse = '\n'.join([
        f'char *{input}_str = strtok(line, "{inputs_separator}");' if i == 0 else f'\t\tchar *{input}_str = strtok(NULL, "{inputs_separator}");'
        for i, input in enumerate(netlist.netlist_data['unique_inputs'])
    ]) + f'\n\t\tchar *y_true_str = strtok(NULL, "{inputs_separator}");'

    binary_strings_to_arrays = '\n'.join([
        f'binary_string_to_array({input}_str, {input}_bin, &len{i+1});' if i == 0 else f'\t\t\tbinary_string_to_array({input}_str, {input}_bin, &len{i+1});'
        for i, input in enumerate(netlist.netlist_data['unique_inputs'])
    ]) + '\n\t\t\tbinary_string_to_array(y_true_str, y_true_bin, &len0);'

    check_string_parsing = ' && '.join([
        f'{input}_str != NULL' for input in netlist.netlist_data['unique_inputs']
    ]) + f' && y_true_str != NULL'

    debug_write_arrays_to_output_file = ''
    for i, input in enumerate(netlist.netlist_data['unique_inputs']):
        debug_write_arrays_to_output_file += f'''
\t\t\t// for (int c=0; c<len{i+1}; c++)
\t\t\t//     fprintf(fo, "%d", {input}_bin[len{i+1}-c-1]);
\t\t\t// fprintf(fo, "{inputs_separator}");'''

    unique_io = netlist.netlist_data['unique_inputs'] + netlist.netlist_data['unique_outputs']
    io_bins = ', '.join(natsorted(io + '_bin' for io in unique_io))

    data = f"""
// Helper function to convert a binary string into an array of integers (0 or 1).
void binary_string_to_array(char *bin_str, int bin_array[], int *len) {{
    *len = strlen(bin_str);
    for (int i = 0; i < *len; i++) {{
        bin_array[i] = bin_str[*len - 1 - i] - '0'; // Convert '0' or '1' char to integer 0 or 1.
    }}
}}

void binary_filetest(int ax_values[], int (*{output_name}_storage)[outsize], int (*y_true_storage)[outsize]) {{
	// Storage for all result arrays from multiple iterations
	// int {output_name}_storage[MAX_LINES][outsize];
	// int y_true_storage[MAX_LINES][outsize];

    char file[] = "{inputs_file}";
    FILE *f = fopen(file, "r");
    if (f == NULL)
        exit(1);
	// char fileo[] = "{outputs_file}";
    // FILE *fo = fopen(fileo, "w");
    // if (fo == NULL)
    //    exit(1);

    // Arrays to store binary numbers.
    {bin_arrays_define}
    int y_true_bin[outsize];
	// Length of each binary array.
    {len_define}

    // Read each line from the file.
    char line[MAX_LENGTH];
	int line_count = 0;
    while (fgets(line, sizeof(line), f)  && line_count < MAX_LINES) {{

        // Remove newline character from the line, if any.
        line[strcspn(line, "\\n")] = '\\0';

		// Split the line
        {split_binary_arrays_parse}

		// Convert each binary string to an array of integers.
        if ({check_string_parsing}) {{
            {binary_strings_to_arrays}

			{debug_write_arrays_to_output_file}
            {netlist.circuit}_top(ax_values, {io_bins});
        
			// Store the result_array in the larger storage array.
            for (int i = 0; i < outsize; i++) {{
                {output_name}_storage[line_count][i] = {output_name}_bin[outsize - i - 1];
			    y_true_storage[line_count][i] = y_true_bin[outsize - i - 1];
            }}

			// for(int c=0; c<outsize; c++)
			//	fprintf(fo, "%d", y_true_bin[outsize-c-1]);
			// fprintf(fo, "{inputs_separator}");
			// for (int c=0; c<outsize; c++)
			//  fprintf(fo, "%d", {output_name}_bin[outsize-c-1]);
			// fprintf(fo, "\\n");

			line_count++;
		}}
	}}

    fclose(f);
    // fclose(fo);
}}"""
    return data


def build_c_netlist_text(netlist, main_netlist_structure, input_file_separator='_', add_accumulate_func=False, add_multiply_func=False, max_lines=100000):
    """Create the text structure outline of the C-netlist file"""
    unique_io = netlist.netlist_data['unique_inputs'] + netlist.netlist_data['unique_outputs']
    io_pointers = ', '.join(natsorted('int* ' + io for io in unique_io))
    insize = max(netlist.netlist_data['bits_per_unique_input'].values())
    outsize = max(netlist.netlist_data['bits_per_unique_output'].values())

    # this is only used for debugging, not really important to automate
    chromosome_length = len(netlist.netlist_data['wires'] + netlist.netlist_data['outputs'])  # + netlist.netlist_data['inputs'])

    signed_inputs = netlist.netlist_data['signed_inputs']
    signed_outputs = netlist.netlist_data['signed_outputs']

    # configure output integer type based on maximum bitwidth of output
    if outsize < 32:
        outp_int_type = 'int' if signed_outputs else 'unsigned int'
        outp_int_parse_format = 'd' if signed_outputs else 'u'
    elif 32 <= outsize < 64:
        outp_int_type = 'long int' if signed_outputs else 'unsigned long int'
        outp_int_parse_format = 'ld' if signed_outputs else 'lu'
    elif outsize >= 64:
        outp_int_type = 'long long int' if signed_outputs else 'unsigned long long int'
        outp_int_parse_format = 'lld' if signed_outputs else 'llu'

    # configure input integer type based on maximum bitwidth of input
    if insize < 32:
        inp_int_type = 'int' if signed_inputs else 'unsigned int'
        inp_int_parse_format = 'd' if signed_inputs else 'u'
    elif 32 <= insize < 64:
        inp_int_type = 'long int' if signed_inputs else 'unsigned long int'
        inp_int_parse_format = 'ld' if signed_inputs else 'lu'
    elif insize >= 64:
        inp_int_type = 'long long int' if signed_inputs else 'unsigned long long int'
        inp_int_parse_format = 'lld' if signed_inputs else 'llu'

    inp_type = inp_from_file_type = inp_int_type
    inp_parse_format = inp_int_parse_format
    outp_type = outp_int_type
    outp_parse_format = outp_int_parse_format

    # define floating-point variables
    defines=""
    inputs_filename = "inputs_decimal.txt"
    outp_float_type = 'double'
    outp_float_parse_format = 'lf'
    inp_float_type = 'float'  # has to be double and %lf to parse inputs correctly
    inp_float_parse_format = 'lf'
    store_float_type_bits = 'unsigned int'
    floattobinary_conversion = f"{store_float_type_bits} value = data.bits;"

    ######################################################## 
    # Floating-point-specific configurations
    # change specific spots if floating point is used
    if netlist.netlist_data['floating_point']['is_fp']:

        exp_bits = netlist.netlist_data['floating_point']['exponent_bits']
        mant_bits = netlist.netlist_data['floating_point']['mantissa_bits']
        inputs_filename = "inputs_ieee754.txt"
        inp_type = inp_float_type
        inp_from_file_type = 'double'
        inp_parse_format = inp_float_parse_format
        outp_type = outp_float_type
        outp_parse_format = outp_float_parse_format
        fp16_conversion = ""
        mantissa_definition = "unsigned short mantissa = (data.bits >> (23 - MANTISSA_BITS)) & ((1 << MANTISSA_BITS) - 1);"

        if netlist.netlist_data['floating_point']['format'] == 'FP16':
            mantissa_definition = "unsigned int mantissa = data.bits & 0x7FFFFF;  // 23-bit mantissa"
            fp16_conversion = """
    if (exponent == 0xFF) {
        exponent = 0x1F;  // Handle infinity or NaN
        if (mantissa) mantissa = 0x200;  // NaN case
    } else if (exponent == 0) {
        exponent = 0;  // Handle zero or denormalized numbers
    } else {
        exponent = exponent - 127 + 15;  // Adjust exponent for FP16

        // Handle overflow and underflow for exponent
        if (exponent >= (1 << EXPONENT_BITS) - 1) {  // Exponent overflow (FP16 max is 31)
            exponent = (1 << EXPONENT_BITS) - 1;  // Set to infinity
            mantissa = 0;
        } else if (exponent <= 0) {  // Underflow/denormals
            exponent = 0;
            mantissa = 0;  // Set to zero for simplicity (could handle denormals better)
        } else {
            // Truncate and round the mantissa from 23 bits (FP32) to 10 bits (FP16)
            unsigned int mantissa_fp16 = mantissa >> (23 - MANTISSA_BITS);  // Take the top 10 bits

            // Get the rounding bit (the first bit after the 10th mantissa bit)
            unsigned int rounding_bit = (mantissa >> (23 - MANTISSA_BITS - 1)) & 1;
            unsigned int remaining_bits = mantissa & ((1 << (23 - MANTISSA_BITS - 1)) - 1);

            // Round-to-nearest-even:
            if (rounding_bit == 1 && (remaining_bits > 0 || (mantissa_fp16 & 1))) {
                // If rounding bit is 1 and there's something left, or it's a tie and mantissa_fp16 is odd
                mantissa_fp16++;
            }

            // Handle mantissa overflow due to rounding
            if (mantissa_fp16 == (1 << MANTISSA_BITS)) {  // Mantissa overflow
                mantissa_fp16 = 0;  // Reset mantissa
                exponent++;  // Increment exponent
            }

            mantissa = mantissa_fp16;
        }

    }"""

        defines = f"#define EXPONENT_BITS {exp_bits}\n"
        defines += f"#define MANTISSA_BITS {mant_bits}\n"
        defines += f"#define TOTAL_BITS (1 + EXPONENT_BITS + MANTISSA_BITS)\n"
        defines += f"#define EXPONENT_BIAS ((1 << (EXPONENT_BITS - 1)) - 1)\n"

        if netlist.netlist_data['floating_point']['format'] != 'FP32':
            floattobinary_conversion = f"""unsigned short sign = (data.bits >> 31) & 1;
    unsigned short exponent = (data.bits >> 23) & 0xFF;
    {mantissa_definition}
    {fp16_conversion}

    unsigned short value = (sign << (EXPONENT_BITS + MANTISSA_BITS)) | (exponent << MANTISSA_BITS) | mantissa;"""

    ########################################################

    # define the input/output variables in binary format and as function arguments
    all_inps_w_types = ', '.join(f'{inp_type} {io}' for io in netlist.netlist_data['unique_inputs'])
    io_bins = ', '.join(natsorted(io + '_bin' for io in unique_io))
    outp_bin = next(iter(netlist.netlist_data['unique_outputs'])) + '_bin'  # single output is expected

    # check if inputs are signed integers
    signed_inputs_value = 1 if netlist.netlist_data['signed_inputs'] else 0
    signed_outputs_value = 1 if netlist.netlist_data['signed_outputs'] else 0

    # for secondary function: decimal inputs to binary
    transform_to_binary_func = 'decimaltobinary' if not netlist.netlist_data['floating_point']['is_fp'] else 'floattobinary'
    transform_to_binary_call = ''
    for inp in netlist.netlist_data['unique_inputs']:
        transform_to_binary_call += f'\tint {inp}_bin[size];\n\t{transform_to_binary_func}({inp}, {inp}_bin, signed_inputs);\n'
    # and binary output to go into main function
    transform_to_binary_call += f'\tint {outp_bin}[outsize];'

    # for secondary function: binary output to decimal
    transform_back_func = 'binarytodecimal' if not netlist.netlist_data['floating_point']['is_fp'] else 'binarytofloat'
    transform_back_call =f"{outp_type} r = {transform_back_func}({outp_bin}, signed_outputs);"

    # for debugging purposes on the binary-decimal/FP conversions
    debug_inputs = ''
    for inp in netlist.netlist_data['unique_inputs']:
        debug_inputs += f'\t//fprintf(fb2d, " %{inp_parse_format} ", {inp});\n'
        debug_inputs += f'\t//for (c=0; c<size; c++) fprintf(fb2d, "%d", {inp}_bin[size-1-c]);\n'

    # text going into fscanf: first the format and then the inputs as pointers
    fscanf_1 = '"' + input_file_separator.join([
        f'%{inp_parse_format}' for _ in range(len(netlist.netlist_data['unique_inputs']))
    ]) + rf'{input_file_separator}%{outp_parse_format}"'
    fscanf_2 = ', '.join('&' + inp for inp in netlist.netlist_data['unique_inputs'])

    inputs_file = f"{project_dir}/circuits/{netlist.circuit}/{inputs_filename}"
    outputs_file = f"{project_dir}/circuits/{netlist.circuit}/outputs.txt"

    binary_filetest_c = build_c_netlist_binary_filetest(netlist, input_file_separator)

    data = f"""#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <time.h>
#include <math.h>
#include "library.h"
#define MAX_LENGTH 100
#define size {insize}
#define outsize {outsize}
#define MAX_LINES {max_lines}

{defines}

int assign_value_to_net(int *ax_values, int index, int value){{
    if (ax_values[index] == -1) {{
        return value;
    }}
    else {{
        return ax_values[index];
    }}
}}

void {netlist.circuit}_top (int *ax_values, {io_pointers}) {{

{main_netlist_structure}

}}

void decimaltobinary({inp_int_type} n, int* binary, int signed_inputs){{
    int d;
    int c;

    {inp_int_type} temp;
    if (n > 0) {{temp = n;}} else {{temp = -n;}}

    for (c = 0 ; c < size ; c++){{
        d = temp >> c;
        if (d & 1){{
            binary[c] = 1;
        }}
        else {{
            binary[c] = 0;
        }}
    }}

    if (n < 0) {{
        binary[size-1] = 1;
        int first_one = 0;
        for (c = 0; c < size-1; c++) {{

            if ((binary[c] == 1) && (first_one == 0)) {{
                first_one = 1;
                continue;
            }}
            if (first_one == 1) {{
                binary[c] = 1 - binary[c];
            }}
        }}
    }}
}}

void floattobinary({inp_float_type} num, int *binary, int signed_inputs) {{
    // Convert the float to its bit representation
    union {{
        {inp_float_type} input;
        {store_float_type_bits} bits;
    }} data;
    data.input = num;
    {floattobinary_conversion}

    // Verify the original conversion to FP32
	// for (int c = 31; c >= 0; c--) printf("%d", (data.bits >> c) & 1);
	// printf("\\n");

    // Convert bits to binary array
    for (int c = 0; c < TOTAL_BITS; c++) {{
        binary[c] = (value >> c) & 1;
    }}
}}

{inp_int_type} binarytodecimal(int binary[], int signed_outputs){{
    {inp_int_type} d;
    {inp_int_type} result = 0; 
    {inp_int_type} one = 1;
    int sign = 1;
    int c; 
    int temp[outsize];
    for (c = 0; c < outsize; c++) temp[c] = binary[c];
    
    if ((signed_outputs == 1) && (binary[outsize - 1] == 1)) {{
        sign = -1;
        temp[outsize - 1] = 0;
        int first_one = 0;
        for (c = 0; c < outsize-1; c++) {{
            if ((binary[c] == 1) && (first_one == 0)) {{
                first_one = 1;
                continue;
            }}
            if (first_one == 1) {{
                temp[c] = 1 - binary[c];
            }}
        }}
    }}
    
    for (c = 0 ; c < outsize ; c++){{
       d = one << c; 
       result = result + d*temp[c]; 
    }}
    return sign * result;
}}

{outp_float_type} binarytofloat(int *binary, int signed_outputs) {{
	{outp_float_type} result = 0.0;

    // Example: result = -32768000.0
	// mantissa = 1 + 0.953125 | exponent = 151 - 127 = 24 | sign = 1
	// 0  1  0  1  1  1  1 | 1  1  1  0  1  0  0  1 | 1
	// 0  1  2  3  4  5  6 | 7  8  9  10 11 12 13 14| 15

	int sign = binary[TOTAL_BITS - 1];
	int exponent = 0;
	for (int i = 0; i < EXPONENT_BITS; i++) {{
		exponent |= binary[MANTISSA_BITS + i] << i;
	}}
	exponent -= EXPONENT_BIAS;
	// Calculate the mantissa as a fractional value
	double mantissa = 0.0;
	for (int i = 0; i < MANTISSA_BITS; i++) {{
		mantissa += binary[MANTISSA_BITS - 1 - i] * (1.0 / (1 << (i + 1)));
	}}
	mantissa = 1.0 + mantissa;
	// printf("mantissa = %lf | exponent = %d | sign = %d\\n", mantissa, exponent, sign);

	if (exponent == (1 << EXPONENT_BITS) - 1) {{
		result = 0.0;
	}}
	else if (exponent == 0) {{
		if (mantissa == 0.0) {{
			result = 0.0;
		}} else {{
			result = mantissa;
        }}
	}} 
    else {{
        if (exponent > 0) {{
			result = mantissa * (1 << exponent);
		}} else {{
			result = mantissa / (1 << -exponent);
		}}
	}}
    if (sign) {{
        result = -result;
    }}
	return result;
}}

void printbinary(int mysize, int binary[]){{
    int c; 
    for ( c = mysize-1 ; c >=0 ; c--){{
       printf("%d",binary[c]);
    }}
    printf("\\n"); 
}}

{outp_type} top_{netlist.circuit}(int *ax_values, {all_inps_w_types}, int signed_inputs, int signed_outputs){{
    //FILE *fb2d = fopen("{project_dir}/circuits/{netlist.circuit}/b2d.txt", "a");
    //if (fb2d == NULL)
    //   exit(1);
    //int c;

{transform_to_binary_call}

{debug_inputs}
    {netlist.circuit}_top(ax_values, {io_bins});
    {transform_back_call}

    //fprintf(fb2d, " %{outp_parse_format} ", r);
    //for (c=0; c<outsize; c++) fprintf(fb2d, "%d", {outp_bin}[outsize-1-c]);
    //fprintf(fb2d, "\\n");
    //fclose(fb2d);

    return r;
}}

void filetest(int ax_values[], double *error) {{

    char line[MAX_LENGTH];
    {inp_from_file_type} {', '.join(netlist.netlist_data['unique_inputs'])};
    {outp_type} y_true, res;
    {outp_type} err=0;
    {outp_type} min_error=pow(2, {outsize - 2}), max_error=0;
    {outp_type} nabs;
    unsigned int i=0;

    double med=0;
    double mre=0;
    double dev=0, squared_sum=0;     // To accumulate squared differences for variance calculation

    double med_max=0;
    med_max = pow(2, {outsize}) - 1;

    int signed_inputs={signed_inputs_value};
    int signed_outputs={signed_outputs_value};

    char file[] = "{inputs_file}";
    FILE *f = fopen(file, "r");
    if (f == NULL)
        exit(1);

    //FILE *fax = fopen("{project_dir}/circuits/{netlist.circuit}/ax_values.txt", "w");
    //if (fax == NULL)
    //    exit(1);
    //int j;
    //for (j=0; j<{chromosome_length}; j++) fprintf(fax, "%d %d\\n", j, ax_values[j]);
    //fclose(fax);
    
    //FILE *fo = fopen("{outputs_file}", "w");
    //if (fo == NULL)
    //    exit(1);

    while(fscanf(f, {fscanf_1}, {fscanf_2}, &y_true) == {len(netlist.netlist_data['unique_inputs']) + 1}) {{
        i++;
        
        res = top_{netlist.circuit}(ax_values, {', '.join(netlist.netlist_data['unique_inputs'])}, signed_inputs, signed_outputs);
        //fprintf(fo, {fscanf_1[:-1]}{input_file_separator}%{outp_parse_format}\\n", {', '.join(netlist.netlist_data['unique_inputs'])}, y_true, res);
        if(res != y_true) {{
            if (res>y_true) {{
                nabs = res-y_true;
            }} 
            else {{
                nabs = y_true-res;
            }}
            if (nabs < min_error) {{
                min_error = nabs;
            }}
            if (nabs > max_error) {{
                max_error = nabs;
                // For debugging the maximum produced error
				// printf("%d_{fscanf_1[1:-1]}{input_file_separator}%{outp_parse_format}\\n", i, {', '.join(netlist.netlist_data['unique_inputs'])}, y_true, res);
            }}

            err++;
            if(y_true != 0) {{
                if (y_true > 0) {{
                    mre += (float)nabs/(float)y_true;
                }} else {{
                    mre += (float)nabs/(float)(-y_true);
                }}
            }}
            med += nabs;
            dev = nabs - (med / i);
            squared_sum += dev * dev; // Sum up the squared deviations for variance
        }}
        else {{
			min_error=0;
		}}
    }}

    // total inputs
    error[0] = (double) i;
    // error rate
    error[1] = (double)err/(double)i;
    // mean relative error
    error[2] = mre/(double)i;
    // mean error distance
    error[3] = med/(double)i;
    // normalized mean error distance
    if(med_max!=0)
        error[4] = med/(double)i/(double)med_max;
    else
        error[4] = 0.0;
    // minimum error
    error[5] = min_error;
    // maximum error
    error[6] = max_error;
    // error range
    error[7] = max_error - min_error;
    // error variance
    error[8] = squared_sum/(double)i;

    fclose(f);
    //fclose(fo);
}}

{binary_filetest_c}

// void main(int argc, char *argv[]) {{
//     int binary[32] = {{0,0,0,0,1,0,1,0,0,1,1,1,0,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,0,1}};
//     int signed_outputs = 0;
//     {outp_float_type} res = binarytofloat(binary, signed_outputs);
//     printf("Result: %{outp_float_parse_format}\\n", res);
// }}

void main(int argc, char *argv[]) {{
    printf("Arguments %d\\n", argc);

    int pruned_num = argc - 1;
    int ax_values[pruned_num];
    double error[9];
    int i;
    for (i=0; i<9; i++) error[i]=0.0;

    for (i=1; i<argc; i++) {{
        ax_values[i-1] = atoi(argv[i]);
    }}
    filetest(ax_values, error);
    //for (i=0; i<8; i++) printf("%f\\n", error[i]);

    printf("Total Inputs: %.3e\\n", error[0]);
    printf("Error Rate: %.3e\\n", error[1]);
    printf("MRE: %.3e\\n", error[2]);
    printf("MED: %.3e\\n", error[3]);
    printf("NMED: %.3e\\n", error[4]);
    printf("Min Error: %.3e\\n", error[5]);
    printf("Max Error: %.3e\\n", error[6]);
    printf("Error Range: %.3e\\n", error[7]);
    printf("Variance: %.3e\\n", error[8]);

}}
"""    

    if add_accumulate_func:
        data += f"""
{outp_type} ACCUMULATE({all_inps_w_types}) {{
    {outp_type} res;
    int signed_inputs={signed_inputs_value};
    int signed_outputs={signed_outputs_value};
    int ax_values[{chromosome_length}] = {{-1}};
    res = top_{netlist.circuit}(ax_values, {', '.join(netlist.netlist_data['unique_inputs'])}, signed_inputs, signed_outputs);
    return res;
}}
"""

    elif add_multiply_func:
                data += f"""
{outp_type} MULTIPLY({all_inps_w_types}) {{
    {outp_type} res;
    int signed_inputs={signed_inputs_value};
    int signed_outputs={signed_outputs_value};
    int ax_values[{chromosome_length}] = {{-1}};
    res = top_{netlist.circuit}(ax_values, {', '.join(netlist.netlist_data['unique_inputs'])}, signed_inputs, signed_outputs);
    return res;
}}
"""

    return data