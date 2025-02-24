import argparse
import subprocess
import os
import pandas as pd
from types import SimpleNamespace
from src.create_inputs import create_inputs
from src.utils import get_tb_template
from src.evaluation.errors import calculate_error_metrics


circuit_properties = {
    # 8-bit unsigned multipliers
    'mul8u_1JJQ': {'bits': [8, 8], 'outbits': 16, 'signed': False, 'inputs': ['A', 'B'], 'output': 'O',
                   'url': "https://raw.githubusercontent.com/ehw-fit/approxlib/v1.2022/multiplers/8x8_unsigned/pareto_pwr_mae/mul8u_1JJQ.v"},
    'mul8u_ZB3': {'bits': [8, 8], 'outbits': 16, 'signed': False, 'inputs': ['A', 'B'], 'output': 'O',
                  'url': "https://raw.githubusercontent.com/ehw-fit/approxlib/v1.2022/multiplers/8x8_unsigned/pareto_pwr_mae/mul8u_ZB3.v"},
    'mul8u_4X5': {'bits': [8, 8], 'outbits': 16, 'signed': False, 'inputs': ['A', 'B'], 'output': 'O',
                  'url': "https://raw.githubusercontent.com/ehw-fit/approxlib/v1.2022/multiplers/8x8_unsigned/pareto_pwr_mae/mul8u_4X5.v"},
    'mul8u_DG8': {'bits': [8, 8], 'outbits': 16, 'signed': False, 'inputs': ['A', 'B'], 'output': 'O',
                    'url': "https://raw.githubusercontent.com/ehw-fit/approxlib/v1.2022/multiplers/8x8_unsigned/pareto_pwr_mae/mul8u_DG8.v"},
    'mul8u_GTR': {'bits': [8, 8], 'outbits': 16, 'signed': False, 'inputs': ['A', 'B'], 'output': 'O',
                   'url': "https://raw.githubusercontent.com/ehw-fit/approxlib/v1.2022/multiplers/8x8_unsigned/pareto_pwr_mae/mul8u_GTR.v"},
    'mul8u_L93': {'bits': [8, 8], 'outbits': 16, 'signed': False, 'inputs': ['A', 'B'], 'output': 'O',
                   'url': "https://raw.githubusercontent.com/ehw-fit/approxlib/v1.2022/multiplers/8x8_unsigned/pareto_pwr_mae/mul8u_L93.v"},
    'mul8u_18UH': {'bits': [8, 8], 'outbits': 16, 'signed': False, 'inputs': ['A', 'B'], 'output': 'O',
                    'url': "https://raw.githubusercontent.com/ehw-fit/approxlib/v1.2022/multiplers/8x8_unsigned/pareto_pwr_mae/mul8u_18UH.v"},
    'mul8u_17MJ': {'bits': [8, 8], 'outbits': 16, 'signed': False, 'inputs': ['A', 'B'], 'output': 'O',
                    'url': "https://raw.githubusercontent.com/ehw-fit/approxlib/v1.2022/multiplers/8x8_unsigned/pareto_pwr_mae/mul8u_17MJ.v"},
    # 8-bit unsigned adders
    'add8u_1HG': {'bits': [8, 8], 'outbits': 9, 'signed': False, 'inputs': ['A', 'B'], 'output': 'O',
                   'url': "https://raw.githubusercontent.com/ehw-fit/approxlib/v1.2022/adders/8_unsigned/pareto_pwr_mae/add8u_1HG.v"},
    'add8u_6PT': {'bits': [8, 8], 'outbits': 9, 'signed': False, 'inputs': ['A', 'B'], 'output': 'O',
                   'url': "https://raw.githubusercontent.com/ehw-fit/approxlib/v1.2022/adders/8_unsigned/pareto_pwr_mae/add8u_6PT.v"},
    'add8u_6P8': {'bits': [8, 8], 'outbits': 9, 'signed': False, 'inputs': ['A', 'B'], 'output': 'O',
                   'url': "https://raw.githubusercontent.com/ehw-fit/approxlib/v1.2022/adders/8_unsigned/pareto_pwr_mae/add8u_6P8.v"},
    'add8u_6SM': {'bits': [8, 8], 'outbits': 9, 'signed': False, 'inputs': ['A', 'B'], 'output': 'O',
                   'url': "https://raw.githubusercontent.com/ehw-fit/approxlib/v1.2022/adders/8_unsigned/pareto_pwr_mae/add8u_6SM.v"},
    'add8u_6S4': {'bits': [8, 8], 'outbits': 9, 'signed': False, 'inputs': ['A', 'B'], 'output': 'O',
                   'url': "https://raw.githubusercontent.com/ehw-fit/approxlib/v1.2022/adders/8_unsigned/pareto_pwr_mae/add8u_6S4.v"},
    'add8u_6R6': {'bits': [8, 8], 'outbits': 9, 'signed': False, 'inputs': ['A', 'B'], 'output': 'O',
                   'url': "https://raw.githubusercontent.com/ehw-fit/approxlib/v1.2022/adders/8_unsigned/pareto_pwr_mae/add8u_6R6.v"},
    'add8u_0TP': {'bits': [8, 8], 'outbits': 9, 'signed': False, 'inputs': ['A', 'B'], 'output': 'O',
                   'url': "https://raw.githubusercontent.com/ehw-fit/approxlib/v1.2022/adders/8_unsigned/pareto_pwr_mae/add8u_0TP.v"},
    'add8u_00M': {'bits': [8, 8], 'outbits': 9, 'signed': False, 'inputs': ['A', 'B'], 'output': 'O',
                   'url': "https://raw.githubusercontent.com/ehw-fit/approxlib/v1.2022/adders/8_unsigned/pareto_pwr_mae/add8u_00M.v"},
    'add8u_02Y': {'bits': [8, 8], 'outbits': 9, 'signed': False, 'inputs': ['A', 'B'], 'output': 'O',
                   'url': "https://raw.githubusercontent.com/ehw-fit/approxlib/v1.2022/adders/8_unsigned/pareto_pwr_mae/add8u_02Y.v"},
    # 16-bit unsigned adders
    'add16u_1A5': {'bits': [16, 16], 'outbits': 17, 'signed': False, 'inputs': ['A', 'B'], 'output': 'O',
                   'url': "https://raw.githubusercontent.com/ehw-fit/approxlib/v1.2022/adders/16_unsigned/pareto_pwr_mae/add16u_1A5.v"},
    'add16u_0GN': {'bits': [16, 16], 'outbits': 17, 'signed': False, 'inputs': ['A', 'B'], 'output': 'O',
                   'url': "https://raw.githubusercontent.com/ehw-fit/approxlib/v1.2022/adders/16_unsigned/pareto_pwr_mae/add16u_0GN.v"},
    'add16u_126': {'bits': [16, 16], 'outbits': 17, 'signed': False, 'inputs': ['A', 'B'], 'output': 'O',
                   'url': "https://raw.githubusercontent.com/ehw-fit/approxlib/v1.2022/adders/16_unsigned/pareto_pwr_mae/add16u_126.v"},
    'add16u_0P8': {'bits': [16, 16], 'outbits': 17, 'signed': False, 'inputs': ['A', 'B'], 'output': 'O',
                   'url': "https://raw.githubusercontent.com/ehw-fit/approxlib/v1.2022/adders/16_unsigned/pareto_pwr_mae/add16u_0P8.v"},
    'add16u_0HE': {'bits': [16, 16], 'outbits': 17, 'signed': False, 'inputs': ['A', 'B'], 'output': 'O',
                   'url': "https://raw.githubusercontent.com/ehw-fit/approxlib/v1.2022/adders/16_unsigned/pareto_pwr_mae/add16u_0HE.v"},
    'add16u_07T': {'bits': [16, 16], 'outbits': 17, 'signed': False, 'inputs': ['A', 'B'], 'output': 'O',    
                   'url': "https://raw.githubusercontent.com/ehw-fit/approxlib/v1.2022/adders/16_unsigned/pareto_pwr_mae/add16u_07T.v"},
    'add16u_0KU': {'bits': [16, 16], 'outbits': 17, 'signed': False, 'inputs': ['A', 'B'], 'output': 'O',
                   'url': "https://raw.githubusercontent.com/ehw-fit/approxlib/v1.2022/adders/16_unsigned/pareto_pwr_mae/add16u_0KU.v"},
    'add16u_0SL': {'bits': [16, 16], 'outbits': 17, 'signed': False, 'inputs': ['A', 'B'], 'output': 'O',
                   'url': "https://raw.githubusercontent.com/ehw-fit/approxlib/v1.2022/adders/16_unsigned/pareto_pwr_mae/add16u_0SL.v"},
    'add16u_067': {'bits': [16, 16], 'outbits': 17, 'signed': False, 'inputs': ['A', 'B'], 'output': 'O',
                   'url': "https://raw.githubusercontent.com/ehw-fit/approxlib/v1.2022/adders/16_unsigned/pareto_pwr_mae/add16u_067.v"},
}


def main(mode, circuit, output, num_inputs=1000, expected=None, results=None):
    if mode == "download":
        url = circuit_properties[circuit]['url']
        subprocess.run(["wget", url, "-O", output])
        with open(output, "r") as f:
            circuit_txt = f.read()

        # Replace the module name with the circuit name
        circuit_txt = circuit_txt.replace(f"module {circuit}", f"module top")
        with open(output, "w") as f:
            f.write(circuit_txt)

    elif mode == "inputs":
        bits = circuit_properties[circuit]['bits']
        signed = circuit_properties[circuit]['signed']
        args = SimpleNamespace(bits=bits, signed=signed,
                               num_inputs=num_inputs, input_type='binary',
                               deterministic=True, separator='underscore',
                               safety_bits=[], override_range=None, 
                               ieee754_format='FP32', out_file=output)
        create_inputs(args)

    elif mode == "testbench":
        tb = get_tb_template(circuit_properties[circuit]['bits'],
                             circuit_properties[circuit]['outbits'],
                             circuit_properties[circuit]['inputs'],
                             circuit_properties[circuit]['output'],
                             circuit_properties[circuit]['signed'])
        with open(output, "w") as f:
            f.write(tb)

    elif mode == "errors":
        error_metrics = calculate_error_metrics(expected, output, circuit_properties[circuit]['outbits'])
        print(f"Total Inputs: {error_metrics['total_inputs']:.3e}")
        print(f"Error Rate: {error_metrics['error_rate']:.3e}")
        print(f"MRE: {error_metrics['mean_relative_error']:.3e}")
        print(f"MED: {error_metrics['mean_error_distance']:.3e}")
        print(f"NMED: {error_metrics['normalized_mean_error_distance']:.3e}")
        print(f"Min Error: {error_metrics['min_error']:.3e}")
        print(f"Max Error: {error_metrics['max_error']:.3e}")
        print(f"Error Range: {error_metrics['range']:.3e}")
        print(f"Variance: {error_metrics['error_variance']:.3e}")

    elif mode == "gather":
        if results is not None and os.path.exists(results) and results.endswith('.csv'):
            df = pd.read_csv(results)
            all_circuits = df['CircuitName'].unique()
            all_libs = df['Library'].unique()

            # Gather area, latency and power and save to a single CSV file
            metrics = ['Area', 'Delay', 'Power']
            for metric in metrics:
                metric_df = pd.DataFrame(columns=list(all_libs), index=list(all_circuits))
                for circuit in all_circuits:
                    for lib in all_libs:
                        value = df[(df['CircuitName'] == circuit) & (df['Synclk'] != 0) & (df['Library'] == lib)][metric]
                        if value.empty:
                            continue
                        metric_df.loc[circuit, lib] = value.iloc[0]
                metric_df.to_csv(output, mode='w' if metric == 'Area' else 'a', header=True)

    else:
        raise NotImplementedError(f"Mode {mode} not implemented yet.")


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--mode", choices=["download", "inputs", "testbench", "errors", "gather"], help="Mode of operation")
    parser.add_argument("--circuit", type=str, help="Circuit name")
    parser.add_argument("--output", type=str, help="Output file")
    parser.add_argument("--num-inputs", type=int, default=1000, help="Number of inputs to generate")
    parser.add_argument("--expected", type=str, help="File of expected outputs")
    parser.add_argument("--results", type=str, help="File to store results")
    args = parser.parse_args()
    main(**vars(args))
