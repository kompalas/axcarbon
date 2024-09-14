import argparse
import os
import shutil


def main():
    parser = argparse.ArgumentParser(description='Create a header file for the C equivalent of approximate circuits')
    parser.add_argument('--ax-array', type=int, required=True, nargs='+', help='Array of approximate values')
    parser.add_argument('--c-file', type=str, required=True, help='Name of the C file')
    parser.add_argument('--header-file', type=str, required=True, help='Name of the header file')
    parser.add_argument('--results-dir', type=str, required=True, help='Directory to store the results')
    args = parser.parse_args()

    os.makedirs(args.results_dir, exist_ok=True)
    c_file = os.path.join(args.results_dir, os.path.basename(args.c_file))
    if not os.path.exists(c_file):
        shutil.copy(args.c_file, args.results_dir)
        with open(c_file, 'r') as f:
            c_code = f.read()
        include = f"#include \"{os.path.basename(args.header_file)}\"\n"
        c_code = include + c_code
        with open(c_file, 'w') as f:
            f.write(c_code)

    str_array = ', '.join([str(value) for value in args.ax_array])

    c_header = f"""#ifndef AX_VALUES
#define AX_VALUES

// Define the array of values
int ax_values[{len(args.ax_array)}] = {{{str_array}}};

#endif // AX_VALUES
"""

    header_file = os.path.join(args.results_dir, os.path.basename(args.header_file))
    with open(header_file, 'w') as f:
        f.write(c_header)
    print(f"Header file created: {header_file}")


if __name__ == "__main__":
    main()