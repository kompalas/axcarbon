import math
import argparse


def calculate_error_metrics(expected_file, output_file, output_bitwidth=32):
    # Initialize variables
    errors = 0
    mre = 0.0
    med = 0.0
    min_error = math.inf
    max_error = 0
    count = 0
    sum_squared = 0  # For variance calculation
    sum_diff = 0     # For variance calculation
    med_max = pow(2, output_bitwidth) - 1

    with open(expected_file, 'r') as f_expected, open(output_file, 'r') as f_output:
        for line_idx, (exp_line, out_line) in enumerate(zip(f_expected, f_output)):
            exp = float(exp_line.strip())
            out = float(out_line.strip())

            count += 1
            if out != exp:
                diff = abs(out - exp)

                # Update min and max error
                if diff < min_error:
                    min_error = diff
                if diff > max_error:
                    max_error = diff

                # Update error metrics
                errors += 1
                if exp != 0:
                    mre += diff / abs(exp)
                med += diff

                # Update variance variables
                sum_diff += diff
                sum_squared += diff ** 2

            else:
                min_error = 0

            # print(exp_line, exp)
            # print(out_line, out)
            # if line_idx > 5:
            #     break

    # Calculate error metrics
    total_inputs = count
    error_rate = errors / total_inputs if total_inputs > 0 else 0.0
    mean_relative_error = mre / total_inputs if total_inputs > 0 else 0.0
    mean_error_distance = med / total_inputs if total_inputs > 0 else 0.0
    normalized_med = (med / total_inputs) / med_max if total_inputs > 0 and med_max != 0 else 0.0
    range_error = max_error - min_error

    # Calculate variance
    if total_inputs > 0:
        mean_diff = sum_diff / total_inputs
        variance = (sum_squared / total_inputs) - (mean_diff ** 2)
    else:
        variance = 0.0

    # Store results in a dictionary
    error_metrics = {
        'total_inputs': total_inputs,
        'error_rate': error_rate,
        'mean_relative_error': mean_relative_error,
        'mean_error_distance': mean_error_distance,
        'normalized_mean_error_distance': normalized_med,
        'min_error': min_error,
        'max_error': max_error,
        'range': range_error,
        'error_variance': variance,
    }

    return error_metrics


if __name__ == '__main__':

    parser = argparse.ArgumentParser(description='Calculate error metrics')
    parser.add_argument('--expected-file', type=str, help='Expected file')
    parser.add_argument('--output-file', type=str, help='Outputs file')
    parser.add_argument('--output-width', type=int, default=32, help='Output bitwidth')
    args = parser.parse_args()

    error_metrics = calculate_error_metrics(args.expected_file, args.output_file, args.output_width)

    print(f"Total Inputs: {error_metrics['total_inputs']:.3e}")
    print(f"Error Rate: {error_metrics['error_rate']:.3e}")
    print(f"MRE: {error_metrics['mean_relative_error']:.3e}")
    print(f"MED: {error_metrics['mean_error_distance']:.3e}")
    print(f"NMED: {error_metrics['normalized_mean_error_distance']:.3e}")
    print(f"Min Error: {error_metrics['min_error']:.3e}")
    print(f"Max Error: {error_metrics['max_error']:.3e}")
    print(f"Error Range: {error_metrics['range']:.3e}")
    print(f"Variance: {error_metrics['error_variance']:.3e}")
