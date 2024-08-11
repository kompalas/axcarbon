from random import seed
import numpy as np
import argparse

parser = argparse.ArgumentParser("Create inputs for simulation.")
parser.add_argument("--type", "-t", dest="input_type", 
                    choices=["binary", "decimal"], default="decimal",
                    help="Numerical representation of the input numbers. "
                         "Choices are decimal (default) and binary")
parser.add_argument("--num-inputs", "-n", type=int, default=1e4, dest='num_inputs',
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
                    choices=["tab", "space", "underscore"], default='tab',
                    help="Separator between consecutive inputs. "
                         "Choices are: space, tab (default) and underscore")
parser.add_argument("--signed", action='store_true',
                    help='Set for using signed integers as inputs. Only affects decimal numbers')
args = parser.parse_args()

if args.deterministic:
    seed(101)

args.separator = {"tab": '\t',
                  "space": ' ',
                  "underscore": '_'
                 }.get(args.separator)

input_vectors = []
for bitwidth in args.bits:

    # decimal inputs
    if args.input_type == "decimal":
        if args.signed:
            # adding 1 to the high range to include highest value
            number = np.random.randint(-2 ** (bitwidth - 1), 2 ** (bitwidth - 1) - 1 + 1, size=args.num_inputs, dtype=np.int64)
        else:
            # if bitwidth > 64:
            #     input_vectors.append(
            #         np.random.randint(0, 2 ** bitwidth - 1, size=args.num_inputs, dtype=np.u)
            #     )
            # else:
            number = np.random.randint(0, 2**bitwidth-1, size=args.num_inputs, dtype=np.uint64)

    # binary inputs
    elif args.input_type == "binary":
            # adding 1 to the high range to include highest value
        number = np.random.randint(0, 2**bitwidth-1 + 1, size=args.num_inputs, dtype=np.uint64)

        bin_func = lambda num: bin(num)[2:].zfill(bitwidth)
        number = np.array(list(map(bin_func, number)))

    input_vectors.append(number)

with open(args.out_file, "w") as fin:
    for i in range(args.num_inputs):
        line = [str(vector[i]) for vector in input_vectors]
        fin.write(args.separator.join(line))
        fin.write("\n")

