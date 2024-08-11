from src import project_dir, ALL_CIRCUITS
from src.netlist import Netlist
from src.graph import DAG
from src.utils import translate_netlist_to_gates_and_wires, gates_to_nodes, wires_to_edges
from src.utils import get_cancel_dict, get_gates_dict
from src.nsga2.objectives import calc_fitness
from src.nsga2.utils import get_candidates, ErrorMetric
from tqdm import tqdm
import pandas as pd
import random
import os
import argparse
import traceback
import logging

logger = logging.getLogger(__name__)


def logger_cfg(args):
    logger.propagate = False
    logging.getLogger("matplotlib").setLevel(logging.INFO)
    logger.setLevel(logging.DEBUG)
    # formatters
    stream_formatter = logging.Formatter('%(levelname)s %(message)s')
    file_formatter = logging.Formatter(
        '%(asctime)s %(levelname)s: %(message)s', datefmt='%d/%m/%Y %H:%M:%S'
    )
    # handlers
    stream_handler = logging.StreamHandler()
    stream_handler.setFormatter(stream_formatter)
    stream_handler.setLevel(logging.INFO)
    file_handler = logging.FileHandler(args.logfile, mode='w')
    file_handler.setFormatter(file_formatter)
    file_handler.setLevel(logging.DEBUG)
    # add handlers to logger
    logger.addHandler(stream_handler)
    logger.addHandler(file_handler)


def prepare(circuit, libfile):
    gates_dict = get_gates_dict(libfile=libfile + '.v')
    netlist = Netlist(circuit, gates_dict)
    gates, wires = translate_netlist_to_gates_and_wires(netlist)
    nodes = gates_to_nodes(gates)
    edges = wires_to_edges(wires)
    graph = DAG(name=netlist.circuit, nodes=nodes, edges=edges)
    candidates, variables_range = get_candidates(netlist, graph, candidate_type=None, reduced=False)
    cancel_dict = get_cancel_dict(gates_dict)
    netlist.build_cfile(graph)
    return netlist, graph, candidates, cancel_dict, variables_range


def main():
    parser = argparse.ArgumentParser('Create different approximate netlists')
    parser.add_argument("--circuit", "-c", choices=ALL_CIRCUITS,
                        help=f"Select circuit. Possible options: {'|'.join(ALL_CIRCUITS)}")
    parser.add_argument("--libfile", "-lf",
                        default='nangate45',
                        help="Select verilog library for standard cells. Default: 'nangate45'")
    parser.add_argument('--results-dir', '-rd', dest='results_dir',
                        help='Directory where approximate netlists will be stored')
    parser.add_argument("--runs", "-r", type=int, default=100,
                        help="Number of approximate solutions to check")
    parser.add_argument('--deterministic', '-d', action='store_true',
                        help='Specify for a deterministicly-generated random chromosome')
    args = parser.parse_args()

    args.testdir = os.path.join(project_dir, 'test', 'cp_delay_stats')
    args.logfile = os.path.join(args.testdir, 'logs', f'delay_stats_{args.circuit}.log')
    logger_cfg(args)
    logger.info(f"Command line arguments: {args.__dict__}")

    if args.results_dir is None:
        os.makedirs(os.path.join(args.testdir, 'results'), exist_ok=True)
        args.results_dir = os.path.join(args.testdir, 'results', args.circuit)
    os.makedirs(args.results_dir, exist_ok=True)

    if args.deterministic:
        random.seed(101)

    netlist, graph, candidates, cancel_dict, variables_range = prepare(args.circuit, args.libfile)

    gate_delay_csv = os.path.join(project_dir, 'circuits', args.circuit, 'gate_delay.rpt.csv')
    csv_delay = pd.read_csv(gate_delay_csv)

    chrom_length = len(candidates)

    logger.info(f"Creating {args.runs} random approximate netlists")
    for run in tqdm(range(args.runs)):
        chrom = [
            random.choices(
                variables_range[i], weights=[1] * (len(variables_range[i]) - 1) + [20], k=1
            )[0] for i in range(chrom_length)
        ]
        logger.debug(f"Solution {run}")
        logger.debug(f"Chromosome {chrom}")

        calc_fitness(
            chromosome=chrom, candidates=candidates, cancel_dict=cancel_dict,
            netlist=netlist, graph=graph,
            write_cfile_to=os.path.join(project_dir, 'circuits', args.circuit, 'top_approx.c'),
            write_verilog_to=os.path.join(args.results_dir, f'top_approx{run}.sv'),
            error_function='ctypes',
            delay_version=1,
            variables_range=variables_range,
            single_objective=True,
            error_metric=ErrorMetric.NMED
        )
    logger.info(f"Netlists created in {args.results_dir}.")


if __name__ == '__main__':
    try:
        main()
    except Exception:
        if logger is not None:
            # We catch unhandled exceptions here in order to log them to the log file
            # However, using the msglogger as-is to do that means we get the trace twice in stdout - once from the
            # logging operation and once from re-raising the exception. So we remove the stdout logging handler
            # before logging the exception
            handlers_bak = logger.handlers
            logger.handlers = [h for h in logger.handlers if type(h) != logging.StreamHandler]
            logger.error(traceback.format_exc())
            logger.handlers = handlers_bak
        raise
    except KeyboardInterrupt:
        logger.info("")
        logger.info("--- Keyboard Interrupt ---")
    finally:
        if logger.handlers:
            logfiles = [handler.baseFilename for handler in logger.handlers if
                        type(handler) == logging.FileHandler]
            logger.info(f"Log file(s) for this run in {' | '.join(logfiles)}")
