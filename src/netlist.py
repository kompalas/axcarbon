"""All utilities to parse verilog into python objects"""
import re
import logging
import os.path
from collections import OrderedDict
from time import time
from copy import deepcopy
from src import project_dir
from src.cfile import build_c_netlist_text, build_c_netlist_text_main_structure, create_shared_cfile
from src.utils import signed_io_verilog, check_is_fp, check_fp_format

__all__ = ['Netlist', 'parse_verilog_netlist']

logger = logging.getLogger(__name__)


class Netlist:
    """Parsed Verilog netlist"""
    def __init__(self, circuit, gates_dict, netlist_file=None):
        t = time()
        self.circuit = circuit
        self.gate_dict = deepcopy(gates_dict)
        self.netlist_data = {}

        # figure out if inputs and/or outputs are signed (only from a non-given netlist file)
        if netlist_file is None:
            netlist_file = f"{project_dir}/circuits/{self.circuit}/top.sv"
            signed_inputs, signed_outputs = signed_io_verilog(vfile=netlist_file.replace(".sv", ".v"))
            self.netlist_data['signed_inputs'] = signed_inputs
            self.netlist_data['signed_outputs'] = signed_outputs

        parse_verilog_netlist(netlist_data=self.netlist_data,
                              netlist_file=netlist_file)

        # figure out if the circuit is floating point
        floating_point_dict = {}
        floating_point_dict['is_fp'] = check_is_fp(circuit)
        if floating_point_dict['is_fp']:
            bits = set(self.netlist_data['bits_per_unique_input'].values()).pop()
            assert bits in [16, 32], "Floating point bit width must be 16 or 32"
            floating_point_dict['bits'] = bits
            # NOTE: FP16 may be included in the future
            format, sign_bits, exp_bits, mantissa_bits = check_fp_format(circuit)
            floating_point_dict['format'] = format
            floating_point_dict['sign_bits'] = sign_bits
            floating_point_dict['exponent_bits'] = exp_bits
            floating_point_dict['mantissa_bits'] = bits - floating_point_dict['sign_bits'] - floating_point_dict['exponent_bits']
        self.netlist_data['floating_point'] = floating_point_dict

        # create initial description in c
        self.cfile = os.path.join(project_dir, 'circuits', self.circuit, f'top.c')
        # NOTE: DO NOT SORT the wires + outputs
        self.net_id = OrderedDict([
            (net, id_num) for id_num, net in enumerate(
                self.netlist_data['wires'] + self.netlist_data['outputs']
            )
        ])
        logger.info(f'Initialized netlist in {time() - t:.3f}s')

    def update_net_id_with_inputs(self):
        """Add the input wires to the dictionary with wire id"""
        # TODO: This step has no impact in the C-file. Does this causes a mismatch between wires and their index in the C-file?
        already_logged = len(self.net_id)
        self.net_id.update(
            OrderedDict([
                (net, id_num + already_logged)
                for id_num, net in enumerate(self.netlist_data['inputs'])
            ])
        )

    def contains(self):
        """Return all the contents recorded during Verilog parsing"""
        return list(self.netlist_data.keys())

    def build_cfile(self, graph, write_to=None):
        """Write complete cfile to use for ctypes calculation"""
        assert graph.annotated, \
            "Cannot write C-file without the topological ordering of the graph. Please annotate first"

        main_structure = build_c_netlist_text_main_structure(self, graph)
        final_netl_c = build_c_netlist_text(self, main_structure, input_file_separator='_',
                                            add_accumulate_func='mac' in self.circuit.lower(),
                                            add_multiply_func='mult' in self.circuit.lower())

        with open(write_to or self.cfile, "w") as f:
            f.write(final_netl_c)
        logger.debug(f"C-netlist: {final_netl_c}")
        logger.debug(f"Writing C-netlist to: {write_to}")

        # prepare for c types error calculation
        create_shared_cfile(self.circuit, write_to)

    def build_vfile(self, approximations, write_to=None):
        """Write verilog file of the approximate netlist"""
        # TODO: This is hard-coded to the 5 output ports below.
        outports = ["Z", "ZN", "S", "CO", "Y"]
        final_netlist = ''
        replaced_wires = dict(approximations)

        # Remove any wires that have already been assigned
        for already_assigned_wire in self.netlist_data['replaced']:
            if already_assigned_wire in replaced_wires:
                replaced_wires.pop(already_assigned_wire)

        if 'normalized' not in self.netlist_data:
            self.normalize_multiline_gate_descriptions()
        init_netlist = self.netlist_data['normalized']

        for line in init_netlist.split('\n'):
            newline = line

            for port in outports:
                found_outport = re.search(rf"[.]{port}\((.+?)\)", newline)
                if found_outport:
                    if found_outport.group(1) in replaced_wires:
                        newline = newline.replace(found_outport.group(), f".{port}()")
            final_netlist += newline + "\n"

        replacements = '\n'.join([
            f"  assign {net} = 1'b{value};" for net, value in replaced_wires.items()
        ])
        final_netlist = re.sub("endmodule", f"\n{replacements}\nendmodule", final_netlist)

        write_to = self.netlist_data['vfile'].replace('.sv', '_approx.sv') \
            if write_to is None else write_to

        with open(write_to, 'w') as f:
            f.write(final_netlist)

    def normalize_multiline_gate_descriptions(self):
        """Normalize multi-line gate descriptions into single lines."""
        normalized_netlist = ""
        last_match_end = 0  # Keep track of where the last regex match ended
        netlist = self.netlist_data['raw']

        # Iterate through all gate matches using the provided regex
        for match in self.netlist_data['gates_regex'].finditer(netlist):
            # Append any content before the current gate match
            normalized_netlist += netlist[last_match_end:match.start()]
            
            # Extract the gate and its full description
            gate_full = match.group(0)
            gate_type = match.group('gate_type')
            gate_name = match.group('gate_name')
            gate_info = re.sub('[,.]|\n\s*', '', match.group('info')).split(' ')
            gate_info = ', '.join(['.' + assignment for assignment in gate_info])
            
            # Rebuild the gate into a single line
            gate_single_line = f"{gate_type} {gate_name} ({gate_info});"
            normalized_netlist += gate_single_line
            
            # Update last match end to the end of the current match
            last_match_end = match.end()
        
        # Append any remaining content after the last gate
        normalized_netlist += netlist[last_match_end:]
        self.netlist_data['normalized'] = normalized_netlist

    def __str__(self):
        return 'Netlist for ' + self.circuit

    def __repr__(self):
        return 'Netlist for ' + self.circuit


def parse_verilog_netlist(netlist_data, netlist_file):
    """
    Extract useful information from a Verilog netlist file.
    ---------
    netlist_data: a dictionary to populate with the extracted info
    netlist_file: the file containing the Verilog description of the netlist
    ---------
    return: Nothing. The netlist_data dictionary has been populated
    """

    # read netlist file
    with open(netlist_file, "r") as f:
        netlist_str = f.read()

    # save raw netlist string
    netlist_data['raw'] = netlist_str
    netlist_data['vfile'] = netlist_file
    logger.debug(f"Complete netlist: {netlist_str}")

    # report whether inputs are signed numbers
    if 'signed_inputs' in netlist_data and 'signed_outputs' in netlist_data:
        logger.debug(f"Are inputs/outputs signed? {netlist_data['signed_inputs']}/{netlist_data['signed_outputs']}")

    # save module name
    netlist_data['module'] = re.search(r'module (.*?) \(', netlist_str).group(1)
    logger.debug(f"Netlist module name: {netlist_data['module']}")

    # this determines the order of the unique inputs and outputs later on
    io_order = re.search(r'module .*? \((.*?)\);', netlist_str, re.DOTALL).group(1).split(',')
    io_order = [io.strip() for io in io_order]

    # get netlist inputs
    all_inputs = re.findall(r"input\s+?(.*?);", netlist_str)
    inputs = []
    # split them even if a bus is used as input
    for inp in all_inputs:
        # if multiple wires (bus)
        if re.search(r"\[\d+:0\]", inp):
            for msb in range(int(re.search(r"\[(\d+)[:]0\]", inp).group(1)) + 1):
                inputs.append(re.search(r"\]\s+(.*)", inp.strip()).group(1) + "[" + str(msb) + "]")
        else:
            split_inps = inp.split(", ")
            for split_inp in split_inps:
                inputs.append(split_inp)
    # save inputs as unique strings
    netlist_data['inputs'] = inputs
    logger.debug(f"Netlist inputs: {inputs}")

    unique_inputs = {re.sub('\[.*\]', '', inp_wire) for inp_wire in inputs}
    unique_inputs = [input_wire for input_wire in io_order if input_wire in unique_inputs]
    netlist_data['unique_inputs'] = unique_inputs
    logger.debug(f"Netlist unique inputs: {unique_inputs}")

    bits_per_unique_input = {
        unique_input: max(
            int(re.search(r'.*\[(\d+)\]', inp).group(1))
            if re.search(r'.*\[(\d+)\]', inp)
            else 0
            for inp in inputs
            if re.search(unique_input, inp)
        ) + 1
        for unique_input in unique_inputs
    }
    netlist_data['bits_per_unique_input'] = bits_per_unique_input
    logger.debug(f'Netlist bits per unique input: {bits_per_unique_input}')

    inputs_by_name = {
        main_input: sorted(
            [inp for inp in inputs if re.search(main_input, inp)],
            key=lambda x: int(re.search(r'\[(\d+)\]', x).group(1)),
            reverse=True
        )
        for main_input in unique_inputs
        if len([single_input for single_input in inputs if re.search(main_input, single_input)]) > 1
    }
    netlist_data['inputs_by_name'] = inputs_by_name
    logger.debug(f"Netlist inputs by name: {inputs_by_name}")

    # get netlist outputs
    all_outputs = re.findall(r"output\s+?(.*?);", netlist_str)
    outputs = []
    # same as above, split into unique strings in the case of multiwire bus
    for outp in all_outputs:
        if re.search(r"\[\d+:0\]", outp):
            for msb in range(int(re.search(r"\[(\d+)\:0\]", outp).group(1)) + 1):
                outputs.append(re.search(r"\]\s+(.*)", outp.strip()).group(1) + \
                               "[" + str(msb) + "]")
        else:
            outputs.append(outp)
    # store outputs
    netlist_data['outputs'] = outputs
    logger.debug(f"Netlist outputs: {outputs}")

    unique_outputs = {re.sub('\[.*\]', '', output_wire) for output_wire in outputs}
    unique_outputs = [output_wire for output_wire in io_order if output_wire in unique_outputs]
    netlist_data['unique_outputs'] = unique_outputs
    logger.debug(f"Netlist unique outputs: {unique_outputs}")

    bits_per_unique_output = {
        unique_output: max(
            int(re.search(r'.*\[(\d+)\]', outp).group(1))
            if re.search(r'.*\[(\d+)\]', outp)
            else 0
            for outp in outputs
            if re.search(unique_output, outp)
        ) + 1
        for unique_output in unique_outputs
    }
    netlist_data['bits_per_unique_output'] = bits_per_unique_output
    logger.debug(f'Netlist bits per unique output: {bits_per_unique_output}')

    outputs_by_name = {
        main_output: sorted(
            [outp for outp in outputs if re.search(main_output, outp)],
            key=lambda x: int(re.search(r'\[(\d+)\]', x).group(1)),
            reverse=True
        )
        for main_output in unique_outputs
        if len([single_output for single_output in outputs if re.search(main_output, single_output)]) > 1
    }
    netlist_data['outputs_by_name'] = outputs_by_name
    logger.debug(f"Netlist outputs by name: {outputs_by_name}")
    netlist_data['single_output_sorted'] = list(outputs_by_name.values())[0] \
        if len(outputs_by_name) > 0 else []

    # get netlist wires (not input or output wires)
    wires = re.findall(r"\bmodule.*wire\s+(.*?);", netlist_str, re.DOTALL)
    netlist_data['wires'] = re.split(r",\n*?\s+", wires[0])
    logger.debug(f"Netlist wires: {netlist_data['wires']}")

    # regex for each line that contains a standard cell
    # NOTE: if any following process fails because of a parsing error, check this first
    #  This could also be the cause of a KeyError in the DAG (or DAG translation)
    gates_regex = re.compile(r"""(?P<gate_type>[\w\d_]+?) (?P<gate_name>[\w\d_]*?) \(\s+?[.](?P<info>.*?)\s+?\);""", re.DOTALL)
    netlist_data['gates_regex'] = gates_regex

    gates = []
    for gate in re.finditer(gates_regex, netlist_str):
        gtype = gate[1]
        name = gate[2]  
        # save info as <IO_PIN(WIRE)>
        gate_info = re.sub('[,.]|\n\s*', '', gate[3]).split(' ')
        gates.append((gtype, name, *gate_info))
    # store gate type, name and info
    netlist_data['gates'] = gates
    logger.info(f"Found {len(gates)} gates")
    logger.debug(f"Netlist gates: {gates}")

    # get netlist constants (with assign keyword), if they exist
    constants = re.findall(r"assign (.*?)\s*=\s*(.*?);", netlist_str)
    if len(constants) == 1 and len(constants[0]) == 2 and ',' in constants[0][1]:
        for idx, constant_str in enumerate(constants[0][1].split(',')):
            if idx == 0:
                new_constants = [(constants[0][0], constant_str)]
            else:
                left, right = re.split('\s*=\s*', constant_str)
                new_constants.append((left.strip(), right.strip()))
        constants = new_constants
    netlist_data['constants'] = constants
    netlist_data['replaced'] = {replaced: replacement for replaced, replacement in constants}
    logger.debug(f"Netlist constants:  {constants}")