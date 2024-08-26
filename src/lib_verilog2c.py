import os
import re
from src import project_dir

def translate_operation_backup(verilog_line):
    # Process NOT gate separately because of different syntax in Verilog and C
    not_matches = re.findall(r"\bnot\s*\((\w+),\s*(\w+)\);", verilog_line)
    for output, input_signal in not_matches:
        verilog_line = re.sub(rf"not\s*\({output},\s*{input_signal}\);", f"{output} = !{input_signal};", verilog_line)

    # Process AND gate
    and_matches = re.findall(r"\band\s*\((\w+),\s*([\w\s,]+)\);", verilog_line)
    for output, inputs in and_matches:
        inputs_list = inputs.split(',')
        inputs_str = " && ".join([inp.strip() for inp in inputs_list])
        verilog_line = re.sub(rf"and\s*\({output},\s*{inputs}\);", f"{output} = {inputs_str};", verilog_line)

    # Process OR gate
    or_matches = re.findall(r"\bor\s*\((\w+),\s*([\w\s,]+)\);", verilog_line)
    for output, inputs in or_matches:
        inputs_list = inputs.split(',')
        inputs_str = " || ".join([inp.strip() for inp in inputs_list])
        verilog_line = re.sub(rf"or\s*\({output},\s*{inputs}\);", f"{output} = {inputs_str};", verilog_line)
    
    return verilog_line


def translate_operation(logic_gate, io_wires):
    """Function to translate a Verilog logic operation to C code
    """
    def translate_not(signals):
        assert len(signals) == 2, f"NOT gate must have 2 signals, found {len(signals)}"
        return f"{signals[0]} = 1 ^ {signals[1]};"
    
    def translate_and(signals):
        assert len(signals) > 2, f"AND gate must have more than 2 signals, found {len(signals)}"
        return f"{signals[0]} = {' & '.join(signals[1:])};"
    
    def translate_or(signals):
        assert len(signals) > 2, f"OR gate must have more than 2 signals, found {len(signals)}"
        return f"{signals[0]} = {' | '.join(signals[1:])};"

    def translate_xor(signals):
        assert len(signals) > 2, f"XOR gate must have more than 2 signals, found {len(signals)}"
        return f"{signals[0]} = {' ^ '.join(signals[1:])};"

    def translate_buf(signals):
        assert len(signals) == 2, f"BUF gate must have 2 signals, found {len(signals)}"
        return f"{signals[0]} = {signals[1]};"

    # Replace Verilog logical operators with C equivalents
    verilog_gates_factory = {
        "~": translate_not,
        "&": translate_and,
        "|": translate_or,
        "^": translate_xor,
        'not': translate_not,
        'and': translate_and,
        'or': translate_or,
        'buf': translate_buf,
    }
    assert logic_gate in verilog_gates_factory, f"Unsupported logic gate: {logic_gate}"

    # Apply the operator replacements
    io_wires = [wire.strip() for wire in io_wires.split(',')]
    return verilog_gates_factory[logic_gate](io_wires)


def verilog_to_c(verilog_module, return_header=False):
    """Function to parse a Verilog module and convert it to C function
    """
    # Extract module name
    module_name_match = re.search(r"module\s+(\w+)\s*\(", verilog_module)
    module_name = module_name_match.group(1) if module_name_match else "unknown_module"

    # Extract the input and output signals
    try:
        inputs = re.search("input\s+(.+);", verilog_module).group(1)
        inputs = [inp.strip() for inp in inputs.split(',')]
    except AttributeError:
        inputs = []
    try:
        outputs = re.search("output\s+(.+);", verilog_module).group(1)
        outputs = [out.strip() for out in outputs.split(',')]
    except AttributeError:
        outputs = []

    # Extract wire signals (intermediate signals)
    wires = re.findall(r"wire\s+([\w\s,]+);", verilog_module)
    wires = [wire.strip() for wire_list in wires for wire in wire_list.split(',')]
    
    # Start building the C function
    c_function = f"void {module_name}("

    # Add inputs as normal variables in the function
    for input_signal in inputs:
        c_function += f"int {input_signal}, "
    # Add outputs as pointer variables
    for output_signal in outputs:
        c_function += f"int* {output_signal}, "
    # Remove trailing comma and space, then close the function signature
    suffix = ";" if return_header else "{"
    c_function = c_function.rstrip(', ') + f") {suffix}\n"

    if return_header:
        return c_function
    
    # Declare wire signals as local variables
    for wire in wires:
        c_function += f"    int {wire};\n"

    # Extract and convert each logic operation to C
    logic_lines = re.findall(r"\b(not|and|or|buf)\s*\(([\w\s,]+)\);", verilog_module)
    for logic_gate, io_wires in logic_lines:
        c_expr = translate_operation(logic_gate, io_wires)
        # Replace the output signals with pointers
        for output_signal in outputs:
            c_expr = re.sub(rf"\b{output_signal}\b", f"*{output_signal}", c_expr)
        # Add the C expression to the function
        c_function += f"    {c_expr}\n"

    # Close the function
    c_function += "}\n"
    
    return c_function


def verilog_lib_to_clib(input_verilog_lib, output_c_lib, output_header=None):
    """Translate a Verilog library to a C library
    """
    # Read the verilog library
    with open(input_verilog_lib, 'r') as f:
        verilog_lib = f.read()

    # Regular expression to match Verilog module definitions
    # module_regex = re.compile(r'module\s+(\w+)\s*\(([^)]+)\);\s*(.*?)\s*endmodule', re.DOTALL)

    # Find all modules in the library
    modules = re.findall(r'(module.*?endmodule)', verilog_lib, re.DOTALL)
    print(len(modules), 'modules found')

    with open(output_c_lib, 'w') as f:
        for module in modules:
            # try:
            c_code = verilog_to_c(module)
            f.write(c_code)
            # except AttributeError:
            #     pass
            f.write('\n')
    
    if output_header is not None:
        with open(output_header, 'w') as f:
            for module in modules:
                c_header = verilog_to_c(module, return_header=True)
                f.write(c_header)
                f.write('\n')


if __name__ == '__main__':

    input_verilog_lib = os.path.join(project_dir, 'libs', 'asap7', '7nm', 'verilog', 'asap7.v')
    output_c_lib = os.path.join(project_dir, 'libs', 'asap7', '7nm', 'c', 'asap7.c')
    output_header = os.path.join(project_dir, 'libs', 'asap7', '7nm', 'c', 'asap7.h')
    verilog_lib_to_clib(input_verilog_lib, output_c_lib, output_header)
