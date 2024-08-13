"""Evaluate the pareto front from a completed GA run"""
from matplotlib import pyplot as plt
from collections import namedtuple
from glob import glob
from itertools import combinations
import pickle 
import argparse
import logging
import re
import os
from src import ALL_CIRCUITS, project_dir
from src.utils import get_gates_dict, get_cancel_dict
from src.utils import translate_netlist_to_gates_and_wires, gates_to_nodes, wires_to_edges
from src.netlist import Netlist
from src.graph import DAG
from src.nsga2.utils import get_candidates, error_metric_arg
from src.nsga2.objectives import calc_fitness

logger = logging.getLogger(__name__)


def open_population_file(experiment_dir, generation=-1):
    """Open the GA results population file"""
    gen_results = glob(f"{experiment_dir}/population*.pkl")
    max_gen = max([int(re.search("population(\d+).pkl", resfile).group(1)) for resfile in gen_results])
    # get experiment name
    exper = re.search(
        ".*/(.*?)/$",
        experiment_dir + '/' if experiment_dir[-1] != '/' else experiment_dir
    ).group(1)

    # figure out population file based on arguments
    if generation == -1:
        if os.path.exists(experiment_dir + 'final_population.pkl'):
            popfile = 'final_population.pkl'
            gen_str = 'the final generation'
        else:
            popfile = f'population{max_gen}.pkl'
            gen_str = f'generation {max_gen}'
    else:
        popfile = f'population{generation}.pkl'
        gen_str = f'generation {generation}'

    logger.info(f"Evaluating the pareto front from {gen_str} of experiment {exper}...\n")
    logger.info(f'Opening file: {experiment_dir + popfile}')
    slash = '/' if experiment_dir[-1] != '/' else ''
    with open(experiment_dir + slash + popfile, 'rb') as f:
        population = pickle.load(f)
    return population


def extract_fronts(population, to_keep, use_all_fronts=False):
    """Extract pareto front"""
    Individual = namedtuple('Individual', ['objectives', 'features'])

    # depending on what was saved, evaluate the population
    if isinstance(population, list):
        all_fronts = []
        for front in population:
            all_features, all_objectives = front
            population_front = []
            for indiv_id, (features, objectives) in enumerate(zip(all_features, all_objectives)):
                ind = Individual(features=features, objectives=objectives)
                population_front.append(ind)
            all_fronts.append(population_front)
    else:
        all_fronts = population.fronts

    pareto = []
    seen = []
    pareto_features_collection = sorted(
        [indiv for front in all_fronts for indiv in front],
        key=lambda ind: ind.objectives[0]
    ) if use_all_fronts else sorted(all_fronts[0], key=lambda ind: ind.objectives[0])

    for ind in pareto_features_collection:
        if ind.features not in seen:
            seen.append(ind.features)
            new_ind = Individual(
                features=ind.features, objectives=ind.objectives
            )
            pareto.append(new_ind)

    pareto = pareto if len(pareto) <= to_keep else pareto[:to_keep]
    logger.info(f"Keeping {len(pareto)} solutions")
    assert len(pareto) > 0

    return all_fronts, pareto


def prepare(circuit, libfile):
    gates_dict = get_gates_dict(libfile=libfile + '.v')
    netlist = Netlist(circuit, gates_dict)
    gates, wires = translate_netlist_to_gates_and_wires(netlist)
    nodes = gates_to_nodes(gates)
    edges = wires_to_edges(wires)
    graph = DAG(name=netlist.circuit, nodes=nodes, edges=edges,
                output_wires=netlist.netlist_data['outputs'])
    netlist.build_cfile(graph)
    candidates, variables_range = get_candidates(netlist, graph, candidate_type=None, reduced=False)
    cancel_dict = get_cancel_dict(gates_dict)
    return netlist, graph, candidates, cancel_dict, variables_range


def logger_cfg(logfile=None):
    logging.getLogger("matplotlib").setLevel(logging.INFO)
    logger.setLevel(logging.DEBUG)

    stream_formatter = logging.Formatter('%(levelname)s %(message)s')
    stream_handler = logging.StreamHandler()
    stream_handler.setFormatter(stream_formatter)
    stream_handler.setLevel(logging.INFO)
    logger.addHandler(stream_handler)

    if logfile:
        file_formatter = logging.Formatter(
            '%(asctime)s %(levelname)s: %(message)s', datefmt='%d/%m/%Y %H:%M:%S'
        )
        file_handler = logging.FileHandler(logfile, mode='w')
        file_handler.setFormatter(file_formatter)
        file_handler.setLevel(logging.DEBUG)
        logger.addHandler(file_handler)
    return logger


if __name__ == "__main__":

    parser = argparse.ArgumentParser('Evaluating pareto front from GA')
    parser.add_argument("--circuit", "-c", choices=ALL_CIRCUITS,
                        help=f"Select circuit. Possible options: {' | '.join(ALL_CIRCUITS)}")
    parser.add_argument("--libfile", "--lf", default='nangate45',
                        help="Select verilog library for standard cells. Default: 'nangate45'")
    parser.add_argument('--experiment', '-e', dest='exp_dir',
                        help='Directory where experimental results are stored')
    parser.add_argument('--results-directory', '-rd', dest='results_dir',
                        help='Directory where approximate netlists and other results will be stored')
    parser.add_argument('--generation', '-g', type=int, default=-1, dest='gen',
                        help='''Generation to study results. If not specified,
                        the final generation is selected (-1)''')
    parser.add_argument("--to-keep", "-k", type=int, default=20,
                        help="Set the amount of pareto solutions to keep, from the lowest error and upwards")
    parser.add_argument("--use-all-fronts", '-a', action='store_true', dest='use_all_fronts',
                        help="Set to combine all fronts and pick 'pareto' as the solutions with lowest error")
    parser.add_argument("--error-metric", dest="error_metric", type=error_metric_arg, default='nmed',
                        help="Choose the error metric as one of the objectives for the GA. Choices: "
                             "{' | '.join(str_to_error_metric_map)}. Default is NMED")
    args = parser.parse_args()

    # configure experiment and results directory
    expdir = args.exp_dir + '/' if args.exp_dir[-1] != '/' else args.exp_dir
    # get experiment name
    exper = re.search(".*/(.*?)/$", expdir + '/' if expdir[-1] != '/' else expdir).group(1)
    if args.results_dir is not None and not os.path.exists(args.results_dir):
        os.mkdir(args.results_dir)

    # initialize logging
    logger_cfg(logfile=os.path.join(project_dir, 'logs', f'pareto__{args.circuit}_{exper}.log'))
    logger.info(f"Command line args: {args.__dict__}")

    pop = open_population_file(experiment_dir=expdir, generation=args.gen)
    logger.info("----------------------------------")

    all_fronts, pareto = extract_fronts(population=pop, to_keep=args.to_keep, use_all_fronts=args.use_all_fronts)

    # logger.info("Examining all population fronts...")
    # for i, front in enumerate(all_fronts):
    #     logger.info(f"Front {i}: {len(front)} solutions")
    #     if len(front) > 0:
    #         grouped_objectives = list(zip(*[ind.objectives for ind in front]))
    #         logger.info(f"\tError: {min(grouped_objectives[0]):.3e} - {max(grouped_objectives[0]):.3e}")
    #         logger.info(f"\tDelay: {min(grouped_objectives[1]):.3e} - {max(grouped_objectives[1]):.3e}")
    #         try:
    #             logger.info(f"\tStdev: {min(grouped_objectives[2]):.3e} - {max(grouped_objectives[2]):.3e}")
    #         except IndexError:
    #             continue
    # logger.info("----------------------------------")

    logger.info("Analyzing pareto front...")
    for idx, ind in enumerate(pareto):
        logger.info(f"Chromosome {idx}: {ind.features}")
        logger.info(f"\tError: {ind.objectives[0]:.3e}")
        logger.info(f"\tDelay: {ind.objectives[1]:.3e}")
        try:
            logger.info(f"\tStdev: {ind.objectives[2]:.3e}")
        except IndexError:
            continue
    logger.info("----------------------------------")

    if args.results_dir is not None:

        logger.info("Plotting pareto from estimation measurements")
        grouped_objectives = list(zip(*[ind.objectives for ind in pareto]))

        fig, axes = plt.subplots(
            nrows=1, ncols=len(grouped_objectives)-1, figsize=(7*(len(grouped_objectives) - 1), 5)
        )
        axes = [axes] if len(grouped_objectives) <= 2 else axes

        all_pareto_lines = []
        for axis, (y_metric, x_metric) in zip(axes, combinations(enumerate(['Error', 'Delay', 'Stdev']), r=2) ):
            axis.set_xlabel(x_metric[1])
            axis.set_ylabel(y_metric[1])
            lines = axis.plot(grouped_objectives[x_metric[0]], grouped_objectives[y_metric[0]], 'bx--')
            all_pareto_lines += lines

        # save figure
        plt.savefig(f"{args.results_dir}/pareto.pdf")

        # save lines of figure for reproduction
        # NOTE: when reconstructing, use 'ax.plot(*line.get_date())' for each saved line object
        with open(f"{args.results_dir}/estimated_pareto_lines.pkl", "wb") as f:
            pickle.dump(all_pareto_lines, f)

        logger.info(f"Saved pareto subplots from optimization in {args.results_dir}")
        logger.info("----------------------------------")

        logger.info("Creating pareto netlists...")
        netlist, graph, candidates, cancel_dict, variables_range = prepare(args.circuit, args.libfile)

        # if len(pareto[0].features) != len(netlist.netlist_data['wires'] + netlist.netlist_data['outputs']):
        if len(pareto[0].features) != len(candidates):
            logger.debug(f"Found {len(pareto[0].features)} features but {len(candidates)} candidates.")
            logger.debug(f"{candidates}")
            with open(expdir + "candidates.pkl", "rb") as f:
                candidates = pickle.load(f)
            variables_range = [(0, 1, -1) for _ in range(len(candidates))]
            logger.info(f"Loaded candidates from {expdir + 'candidates.pkl'}")
        logger.debug(f"Candidates {len(candidates)}: {candidates}")

        for idx, individual in enumerate(pareto):

            obj = calc_fitness(
                chromosome=individual.features,
                candidates=candidates,
                variables_range=variables_range,
                cancel_dict=cancel_dict,
                netlist=netlist,
                graph=graph,
                error_metric=args.error_metric,
                write_verilog_to=f'{args.results_dir}/approx{idx}.sv'
                    if args.results_dir is not None else None,
                )
            logger.debug(f"Objectives for netlist {idx}: {obj}")

        logger.info(f"All netlists of approximate solutions of the pareto front have "
                    f"been created as 'approx<NETLIST_ID>.sv'""")
        logger.info(f"Saved approximate netlists in {args.results_dir}")

    logger.info(f"Saved log for of the evaluation in {logger.handlers[1].baseFilename}")

