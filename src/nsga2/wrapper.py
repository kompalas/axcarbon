import logging
import os.path
from functools import partial
#from pympler import asizeof
from src import project_dir
from src.nsga2.evolution import Evolution
from src.nsga2.problem import Problem
from src.nsga2.utils import get_candidates
from src.nsga2.objectives import calc_fitness, null_objective_function
from src.nsga2.utils import get_candidates, sanity_test
from src.utils import get_cancel_dict, get_overrides, get_cp_net_indices

logger = logging.getLogger(__name__)


class EvolutionWrapper:
    def __init__(self, args, netlist, graph):

        resdir = logging.getLogger().logdir
        baseline_data_file = os.path.join(project_dir, 'results', 'baseline', args.circuit + '.txt')

        candidates, variables_range = get_candidates(
            netlist=netlist, graph=graph,
            candidate_type=args.candidate_type,
            results_dir=resdir,
            reduced=args.reduced
        )
        logger.info(f"Total approximation candidates: {len(candidates)}")
        logger.debug(f"Candidates: {candidates}")

        objective_function = partial(
            calc_fitness,
            candidates=candidates,
            variables_range=variables_range,
            cancel_dict=get_cancel_dict(netlist.gate_dict),
            error_metric=args.error_metric,
            netlist=netlist,
            graph=graph,
            constrained=args.constrained,
            single_objective=args.num_of_objectives == 1,
        )
        problem = Problem(
            objective_functions=[objective_function] + [null_objective_function] * (args.num_of_objectives - 1),
            num_of_variables=len(candidates),
            variables_range=variables_range,
            variable_type=args.gene_type,
            baseline_data_file=baseline_data_file,
            weighted_variables=args.weighted_genes,
            biased_indices=get_cp_net_indices(graph, candidates) if not args.unweighted_new_individuals else None,
            initial_weight=args.initial_weight,
            overrides=get_overrides(args.circuit, netlist, candidates) if args.override else None
        )
        self.evolution = Evolution(
            problem=problem,
            num_of_generations=args.generations,
            num_of_individuals=args.population_size,
            num_of_tour_participants=int(args.tournament_participants * args.population_size)
                if args.tournament_participants is not None else (
                    int(0.05 * args.population_size) if int(0.05 * args.population_size) > 0 else 1
                ),
            tournament_prob=args.tournament_probability,
            crossover_param=args.crossover_probability,
            mutation_param=args.mutation_probability
                if args.mutation_probability is not None else 1 / len(candidates),
            threads=args.threads,
            save_frequency=args.save_frequency,
            load_from=args.loaded_population
        )

        #logger.debug(f"GA size {asizeof.asizeof(GA)}")
        #logger.debug(f"Graph size {asizeof.asizeof(graph)}")
        #logger.debug(f"Netlist size {asizeof.asizeof(netlist)}")

        sanity_test(objective_function, variables_range)

    def evolve(self):
        self.evolution.evolve()

    def plot_last_pareto(self):
        self.evolution.plot_last_pareto()

