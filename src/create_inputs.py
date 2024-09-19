from random import seed
import numpy as np
import argparse
from src.numerical_conversion import ieee754_to_binary, decimal_to_binary


def two_floats(value):
    values = value.split()
    if len(values) != 2:
        raise argparse.ArgumentError("The argument must contain two values")
    values = list(map(float, values))
    if sorted(values) != values:
        raise argparse.ArgumentError("The minimum value must be smaller than the maximum value")
    return values


def main():
    parser = argparse.ArgumentParser("Create inputs for simulation.")
    parser.add_argument("--type", "-t", dest="input_type", 
                        choices=["binary", "decimal", "ieee754"], default="decimal",
                        help="Numerical representation of the input numbers. "
                            "Choices are decimal (default) and binary")
    parser.add_argument("--num-inputs", "-n", type=int, default=10000, dest='num_inputs',
                        help="Define number of input samples (default 10,000)")
    parser.add_argument("--bits", "-b", type=int, nargs='+',
                        help='''Specify bitwidth for each input, separated by space.\
                            The number of entries defines the number of input vectors\
                                (columns in the input text file)''')
    parser.add_argument("--deterministic", '-d', action='store_true',
                        help='Set for deterministically generated outputs')
    parser.add_argument("--out-file", "-o", dest='out_file', default='./inputs.txt',
                        help="Location of output file (default './inputs.txt'")
    parser.add_argument("--separator", "--sep", dest="separator", 
                        choices=["tab", "space", "underscore", "none"], default='tab',
                        help="Separator between consecutive inputs. "
                            "Choices are: space, nothing/none, tab (default) and underscore")
    parser.add_argument("--signed", action='store_true',
                        help='Set for using signed integers as inputs. Only affects decimal numbers')
    parser.add_argument("--safety-bits", type=int, nargs='+', default=[],
                        help='Specify safety bitwidth for each input, separated by space. Default is 0')
    parser.add_argument("--override-range", type=two_floats,
                        help="Override the range of numbers that can be generated. "
                            "Specify the minimum and maximum values")
    args = parser.parse_args()

    if args.deterministic:
        seed(101)

    args.separator = {"tab": '\t',
                    "space": ' ',
                    "underscore": '_',
                    "none": '',
                    "nothing": ''
                    }.get(args.separator)

    if len(args.safety_bits) == 0:
        args.safety_bits = [0] * len(args.bits)
    elif len(args.safety_bits) == 1:
        args.safety_bits = args.safety_bits * len(args.bits)
    elif len(args.safety_bits) != len(args.bits):
        raise ValueError("The '--safety-bits' must be empty, have one argument, or have "
                        "as many arguments asthe number of bitwidths")

    input_vectors = []
    for bitwidth, safety_bits in zip(args.bits, args.safety_bits):
        dtype = np.uint64 if not args.signed else np.int64

        # Define the range of numbers that can be generated
        if args.override_range is not None:
            num_range = args.override_range
        elif args.input_type == "decimal" and args.signed:
            num_range = (-(2 ** (bitwidth - 1 - safety_bits)), (2 ** (bitwidth - 1 - safety_bits)) - 1)
        else:
            num_range = (0, (2 ** (bitwidth - safety_bits)) - 1)

        # Generate the numbers
        number = np.random.randint(num_range[0], num_range[1] + 1, size=args.num_inputs, dtype=dtype)

        # Convert to binary if necessary
        if args.input_type == "binary":
            bin_func = lambda num: decimal_to_binary(num, bitwidth)
            number = np.array(list(map(bin_func, number)))
        
        elif args.input_type == "ieee754":
            precision = 'FP32' if bitwidth == 32 else 'bfloat16'  # 'FP16'
            bin_func = lambda num: ieee754_to_binary(num, precision=precision)
            number = np.array(list(map(bin_func, number)))

        input_vectors.append(number)

    with open(args.out_file, "w") as fin:
        for i in range(args.num_inputs):
            line = [str(vector[i]) for vector in input_vectors]
            fin.write(args.separator.join(line))
            fin.write("\n")


if __name__ == "__main__":
    main()