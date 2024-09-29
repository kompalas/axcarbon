import argparse
import numpy as np
from src.numerical_conversion import binary_to_ieee754


def mac_result(in_a, in_b, in_c):
    return (in_a * in_b) + in_c


def fpmac_check(*inputs_output):
    return mac_result(*inputs_output[:-1]) == inputs_output[-1]


def fpmac_file_check(inputs_file, output_file, ieee754_format='FP32', input_separator='_'):
    with open(inputs_file, 'r') as f:
        input_data = f.readlines()
    with open(output_file, 'r') as f:
        output_data = f.readlines()

    if set(input_data[0].strip().replace(input_separator, '')) == {'0', '1'}:
        check_binary_inputs(input_data, output_data, ieee754_format, input_separator)
    else:
        check_float_inputs(input_data, input_separator)


def check_float_inputs(input_data, input_separator='_'):
    errors = 0
    diffs = []
    for inputs in input_data:
        float_inputs_output = [float(input) for input in inputs.strip().split(input_separator)]

        if not fpmac_check(*float_inputs_output):
            errors += 1
            diff = mac_result(*float_inputs_output[:3]) - float_inputs_output[-1]
            diffs.append(diff)
        #     print(f'Error!\t\tInputs: {float_inputs} and output: {float_output} (expected: {mac_result(*float_inputs)})')
        # else:
        #     print(f'Correct!\tInputs: {float_inputs} and output: {float_output} (expected: {mac_result(*float_inputs)})')

    print("Mean difference: ", np.mean(diffs))
    print("Max difference: ", np.max(diffs))
    print(f"Total errors: {errors}/{len(input_data)}={errors/len(input_data)*100:.2f}%")



def check_binary_inputs(input_data, output_data, ieee754_format='FP32', input_separator='_'):
    errors = 0
    diffs = []
    for inputs, output in zip(input_data, output_data):
        binary_inputs = inputs.strip().split(input_separator)
        float_inputs = [binary_to_ieee754(binary, precision=ieee754_format) for binary in binary_inputs]
        float_output = binary_to_ieee754(output.strip(), precision=ieee754_format)

        if not fpmac_check(*float_inputs, float_output):
            errors += 1
            diff = float_output - mac_result(*float_inputs)
            diffs.append(diff)
        #     print(f'Error!\t\tInputs: {float_inputs} and output: {float_output} (expected: {mac_result(*float_inputs)})')
        # else:
        #     print(f'Correct!\tInputs: {float_inputs} and output: {float_output} (expected: {mac_result(*float_inputs)})')

    print("Mean difference: ", np.mean(diffs))
    print("Max difference: ", np.max(diffs))
    print(f"Total errors: {errors}/{len(input_data)}={errors/len(input_data)*100:.2f}%")


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='FPMAC functional check')
    parser.add_argument('--input-file', help='Input file')
    parser.add_argument('--output-file', help='Output file')
    parser.add_argument('--ieee754-format', choices=['FP32', 'FP16', 'bfloat16'], default='FP32', help='IEEE754 format')
    parser.add_argument('--input-separator', default='_', help='Separator for input binary numbers')
    args = parser.parse_args()

    args.input_file = 'circuits/macfp32_14nm/inputs_eval_ieee754.txt'
    args.output_file = 'sim/output.txt'
    args.ieee754_format = 'FP32'

    fpmac_file_check(args.input_file, args.output_file, args.ieee754_format, args.input_separator)
    
