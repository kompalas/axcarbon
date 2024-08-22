import math

def calculate_error_metrics(expected_file, output_file):
    # Initialize variables
    errors = 0
    mre = 0.0
    med = 0.0
    min_error = math.inf
    max_error = 0
    count = 0
    med_max = pow(2, 32) - 1

    with open(expected_file, 'r') as f_expected, open(output_file, 'r') as f_output:
        for exp_line, out_line in zip(f_expected, f_output):
            exp = int(exp_line.strip())
            out = int(out_line.strip())

            count += 1
            if out != exp:
                diff = abs(out - exp)
                if diff < min_error:
                    min_error = diff
                if diff > max_error:
                    max_error = diff
                
                errors += 1
                if exp != 0:
                    mre += diff / abs(exp)
                med += diff
            else:
                min_error = 0

    # Calculate error metrics
    total_inputs = count
    error_rate = errors / total_inputs if total_inputs > 0 else 0.0
    mean_relative_error = mre / total_inputs if total_inputs > 0 else 0.0
    mean_error_distance = med / total_inputs if total_inputs > 0 else 0.0
    normalized_med = (med / total_inputs) / med_max if total_inputs > 0 and med_max != 0 else 0.0
    error_variance = max_error - min_error

    # Store results in a dictionary
    error_metrics = {
        'total_inputs': total_inputs,
        'error_rate': error_rate,
        'mean_relative_error': mean_relative_error,
        'mean_error_distance': mean_error_distance,
        'normalized_mean_error_distance': normalized_med,
        'min_error': min_error,
        'max_error': max_error,
        'error_variance': error_variance
    }

    return error_metrics


if __name__ == '__main__':
    import os
    from src import project_dir
    from src.utils import binary_to_decimal

    outputs_bin_file = os.path.join(project_dir, 'sim', 'output.txt')
    expected_bin_file = os.path.join(project_dir, 'sim', 'expected.txt')
    outputs_file = os.path.join(project_dir, 'sim', 'output_dec.txt')
    expected_file = os.path.join(project_dir, 'sim', 'expected_dec.txt')

    binary_to_decimal(outputs_bin_file, outputs_file)
    binary_to_decimal(expected_bin_file, expected_file)
    error_metrics = calculate_error_metrics(expected_file, outputs_file)
    
    for key, value in error_metrics.items():
        print(f'{key}: {value:.3e}')
