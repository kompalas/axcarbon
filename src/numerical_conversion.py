import argparse
import struct
import os
import matplotlib.pyplot as plt
import numpy as np


def decimal_to_binary(decimal, bitwidth):
    return f'{decimal:0{bitwidth}b}'


def binary_to_decimal(binary_str, signed=False):
    # convert to binary string if not already
    if isinstance(binary_str, (list, tuple, np.ndarray)):
        binary_str = ''.join(str(x) for x in binary_str)

    # Handle signed binary numbers using 2's complement
    if signed and binary_str[0] == '1':  # If the sign bit is 1, it's a negative number
        # Invert the bits and add 1 to get the positive representation
        inverted_bits = ''.join('1' if bit == '0' else '0' for bit in binary_str)
        decimal_value = int(inverted_bits, 2) + 1
        return -decimal_value
        # TODO: Handle signed binary numbers
        # sign = -1 if binary_str[0] == '1' else 1
        # return sign * int(binary_str[1:], 2)
    try:
        return int(binary_str, 2)
    except TypeError:
        print(f"Error converting binary string to decimal: {binary_str}")
        print(type(binary_str))
        raise


def binary_to_ieee754(binary_str, precision='FP32'):
    if precision == 'FP32':
        exp_bits = 8
        mantissa_bits = 23
        bias = 127
    elif precision == 'FP16':
        exp_bits = 5
        mantissa_bits = 10
        bias = 15
    elif precision == 'bfloat16':
        exp_bits = 8
        mantissa_bits = 7
        bias = 127
    else:
        raise ValueError("Unsupported precision. Use 'FP32', 'FP16', or 'bfloat16'.")

    total_bits = 1 + exp_bits + mantissa_bits
    
    # convert to binary string if not already
    if isinstance(binary_str, (list, tuple, np.ndarray)):
        binary_str = ''.join(str(x) for x in binary_str)

    # Pad the binary string to the correct size if needed
    binary_str = binary_str.zfill(total_bits)

    # Extract sign, exponent, and mantissa from the binary string
    sign_bit = int(binary_str[0], 2)
    exponent = int(binary_str[1:1 + exp_bits], 2)
    mantissa = binary_str[1 + exp_bits:]

    # Determine the sign (-1 for 1, +1 for 0)
    sign = (-1) ** sign_bit

    if exponent == (2 ** exp_bits - 1):
        # Special cases: infinity or NaN
        # if int(mantissa, 2) == 0:
        #     return float('inf') if sign > 0 else float('-inf')
        # else:
        #     return float('nan')
        # NOTE: Commenting out the above correct behavior, and simplifying to 0.0 for now.
        #       This helps produce a valid number in all cases
        return 0.0
    elif exponent == 0:
        # Subnormal number
        exponent_val = 1 - bias
        mantissa_val = int(mantissa, 2) / (2 ** mantissa_bits)
        return sign * mantissa_val * (2 ** exponent_val)
    else:
        # Normalized number
        exponent_val = exponent - bias
        mantissa_val = 1 + int(mantissa, 2) / (2 ** mantissa_bits)
        return sign * mantissa_val * (2 ** exponent_val)


def ieee754_to_binary(float_num, precision='FP32'):
    if precision == 'FP32':
        exp_bits = 8
        mantissa_bits = 23
        bias = 127
        format_char = 'f'  # For 32-bit single-precision
    elif precision == 'FP16':
        exp_bits = 5
        mantissa_bits = 10
        bias = 15
        format_char = 'e'  # For 16-bit half-precision (FP16)
    elif precision == 'bfloat16':
        exp_bits = 8
        mantissa_bits = 7
        bias = 127
        # bfloat16 requires us to handle the conversion manually, as there's no native 'struct' support.
        # We will handle it similar to FP32 but only extract the first 16 bits (sign, exponent, 7 bits of mantissa).
        format_char = 'f'  # Start with 32-bit single-precision
    else:
        raise ValueError(f"Unsupported precision {precision}. Use 'FP32', 'FP16', or 'bfloat16'.")

    # Convert the float to raw binary bytes
    if precision == 'bfloat16':
        # Convert the number to 32-bit IEEE 754 float binary first (we'll truncate this for bfloat16)
        float_as_int = struct.unpack('>I', struct.pack('>f', float_num))[0]
        # Truncate to 16 bits (bfloat16 only keeps the first 16 bits)
        binary_str = bin(float_as_int >> 16)[2:].zfill(16)
    else:
        # Use struct to convert the float to its binary representation
        packed = struct.pack('>' + format_char, float_num)
        binary_str = ''.join(f'{byte:08b}' for byte in packed)

    # For FP16, we need to truncate the FP32 representation to 16 bits manually (if struct doesn't support 'e')
    if precision == 'FP16':
        # Convert the FP32 binary to 16 bits by truncating the appropriate bits
        float_as_int = struct.unpack('>I', struct.pack('>f', float_num))[0]
        sign = (float_as_int >> 31) & 0x1
        exponent = (float_as_int >> 23) & 0xFF
        mantissa = float_as_int & 0x7FFFFF
        exponent_fp16 = max(0, min(31, exponent - 127 + 15))  # Recompute exponent for FP16
        mantissa_fp16 = mantissa >> 13  # Truncate mantissa for FP16
        binary_str = f'{sign:01b}{exponent_fp16:05b}{mantissa_fp16:010b}'
        
    return binary_str


def convert_binary_to_decimal(args):
    """Convert binary numbers to integers.
    """
    with open(args.input_file, 'r') as f:
        inputs = f.readlines()
    
    with open(args.output_file, 'w') as f:
        for line in inputs:
            decimal_line = args.output_separator.join(
                str(
                    binary_to_decimal(x, signed=args.signed_binary)
                )
                for x in line.strip().split(args.input_separator)
            )
            f.write(decimal_line)
            f.write('\n')


def convert_binary_to_decimal_ieee754(args):
    """Convert binary inputs and outputs to IEEE-754 format.
    """
    with open(args.input_file, 'r') as f:
        data = f.readlines()

    with open(args.output_file, 'w') as f:
        for line in data:
            binary_numbers = line.strip().split(args.input_separator)

            floats = [binary_to_ieee754(binary, precision=args.ieee754_format) for binary in binary_numbers]
            if args.keep_output_only:
                floats = [floats[-1]]

            # Write the converted numbers to the output file
            f.write(args.output_separator.join([f"{float:.5f}" for float in floats]) + '\n')

    print(f'Converted inputs/outputs to IEEE-754 format and saved to: {args.output_file}')


def check_inputs_ieee754(args):
    """Perform a sanity check on the inputs and outputs in IEEE-754 format.
    """
    with open(args.input_file, 'r') as f:
        data = f.readlines()

    limits = (1e-30, 1e30)
    limits = None
    bins = 'auto'

    errors = 0
    wrong_results = []
    wrong_predictions = []

    for line_idx, line in enumerate(data):
        in_a_bin, in_b_bin, in_c_bin, out_bin = line.strip().split('_')

        in_a = binary_to_ieee754(in_a_bin, precision=args.ieee754_format)
        in_b = binary_to_ieee754(in_b_bin, precision=args.ieee754_format)
        in_c = binary_to_ieee754(in_c_bin, precision=args.ieee754_format)
        out = binary_to_ieee754(out_bin, precision=args.ieee754_format)

        mac_result = (in_a * in_b) + in_c
        if out != mac_result:
            errors += 1
            wrong_results.append(mac_result)
            wrong_predictions.append(out)
        else:
            assert in_c == out == mac_result

        if line_idx == 0: # or out == mac_result:
            print(f'Format: {args.ieee754_format}')
            print(f'Input A: {in_a_bin} -> {in_a}')
            print(f'Input B: {in_b_bin} -> {in_b}')
            print(f'Input C: {in_c_bin} -> {in_c}')
            print(f'Output: {out_bin} -> {out}')
            print(f"MAC result: {mac_result}")

    print(f'Total number of inputs: {line_idx + 1:,}')
    print(f'Number of errors: {errors:,}')
    print(f'Percentage of errors: {100 * errors/(line_idx + 1):.2f}%')
    return

    if limits is not None:
        wrong_predictions = [x for x in wrong_predictions if limits[0] < x < limits[1]]
        wrong_results = [x for x in wrong_results if limits[0] < x < limits[1]]

    print(f'Number of errors within limits: {len(wrong_results):,}')

    # Create a figure and axis objects
    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(12, 6))

    # Set x-axis to be logarithmic
    ax1.set_xscale('log')
    ax2.set_xscale('log')
    if limits is not None:
        ax1.set_xlim(*limits)
        ax2.set_xlim(*limits)
 
    # Plot histogram for wrong results
    ax1.hist(wrong_results,
             bins=bins,
             alpha=0.7,
            #  density=True,
             color='blue',
             edgecolor='black')
    ax1.set_title('Histogram of Wrong Results')
    ax1.set_xlabel('Value')
    ax1.set_ylabel('Frequency')

    # Plot histogram for wrong predictions
    ax2.hist(wrong_predictions,
             bins=bins,
             alpha=0.7,
            #  density=True,
             color='red',
             edgecolor='black')
    ax2.set_title('Histogram of Wrong Predictions')
    ax2.set_xlabel('Value')
    ax2.set_ylabel('Frequency')

    plt.tight_layout()

    # Save the figure
    from src import project_dir
    savefile = os.path.join(project_dir, 'results', 'figures', 'fp_errors_histogram.png')
    fig.savefig(savefile)
    print(f'Figure saved at: {savefile}')


if __name__ == '__main__':

    # import sys
    # fnum = sys.argv[1]
    # bnum = ieee754_to_binary(float(fnum), precision='FP32')
    # print(bnum)
    # exit()

    parser = argparse.ArgumentParser(description='Numerical conversion utilities')
    parser.add_argument('--mode', choices=['convert', 'check'], default='convert', help='Conversion mode')
    parser.add_argument('--convert-from', choices=['binary', 'decimal', 'ieee754'], default='binary', help='Convert from this format')
    parser.add_argument('--convert-to', choices=['binary', 'decimal', 'ieee754'], default='ieee754', help='Convert to this format')
    parser.add_argument('--input-file', type=str, help='Input file')
    parser.add_argument('--output-file', type=str, help='Output file')
    parser.add_argument('--ieee754-format', choices=['FP32', 'FP16', 'bfloat16'], default='bfloat16', help='Floating point format')
    parser.add_argument('--signed-binary', action='store_true', help='Use signed binary numbers')
    parser.add_argument('--keep-output-only', action='store_true', help='Keep only the output in the output file')
    parser.add_argument('--input-separator', choices=["tab", "space", "underscore", "none"], default='underscore', help='Separator used in the input file')
    parser.add_argument('--output-separator', choices=["tab", "space", "underscore", "none"], default='underscore', help='Separator used in the output file')

    args = parser.parse_args()

    args.input_separator = {
        "tab": '\t',
        "space": ' ',
        "underscore": '_',
        "none": '',
        "nothing": ''
    }.get(args.input_separator)
    args.output_separator = {
        "tab": '\t',
        "space": ' ',
        "underscore": '_',
        "none": '',
        "nothing": ''
    }.get(args.output_separator)

    if args.mode == 'convert':
        if args.convert_from == 'binary' and args.convert_to == 'decimal':
            convert_binary_to_decimal(args)
        elif args.convert_from == 'binary' and args.convert_to == 'ieee754':
            convert_binary_to_decimal_ieee754(args)
        else:
            raise NotImplementedError(f"Conversion from {args.convert_from} to {args.convert_to} currently not supported")

    elif args.mode == 'check':
        check_inputs_ieee754(args)
    



