"""Contains main object to control the evolution of the genetic algorithm"""
import os
import pickle
import random
import logging
import concurrent.futures as cf
import multiprocessing as mp
from copy import deepcopy
from datetime import datetime
from glob import glob
from time import time
from functools import partial
#from memory_profiler import profile
from collections import namedtuple
from matplotlib import rcParams
from matplotlib import pyplot as plt
plt.set_loglevel("info")
pil_logger = logging.getLogger('PIL')
pil_logger.setLevel(logging.INFO)

from src.nsga2.population import Population
from src.nsga2 import MAX_CROWDING_DISTANCE
from src.nsga2.utils import GeneType

logger = logging.getLogger(__name__)
PopulationProxy = namedtuple('PopulationProxy', 'features objectives fronts')


class Evolution:
    """Class to execute the evolution of the genetic algorithm"""
    def __init__(
            self,
            problem,
            num_of_generations=1000, num_of_individuals=100,
            num_of_tour_participants=2, tournament_prob=0.8,
            crossover_param=0.9, mutation_param=0.1,
            threads=1, save_frequency=1, load_from=None
        ):
        self.problem = problem
        self.num_of_generations = num_of_generations
        self.num_of_individuals = num_of_individuals
        self.num_of_tour_participants = num_of_tour_participants
        self.tournament_prob = tournament_prob
        self.save_frequency = save_frequency
        self.population = None
        self.last_pareto_front = None

        # TODO: find a better way to assign params for continuous (real-valued) genes
        self.crossover_param = crossover_param if self.problem.variable_type == GeneType.Discrete else 20
        self.mutation_param = mutation_param if self.problem.variable_type == GeneType.Discrete else 50

        # parallel execution variables
        self.sols_per_thread = self.num_of_individuals // threads
        self.remaining_sols = self.num_of_individuals % threads
        self.starts = {
            thread_id:  thread_id * self.sols_per_thread + min(self.remaining_sols, thread_id)
            for thread_id in range(threads)
        }
        self.ends = {
            i: start + self.sols_per_thread if i >= self.remaining_sols else start + self.sols_per_thread + 1
            for i, start in self.starts.items()
        }
        if self.problem.variable_type == GeneType.Continuous and threads > 1:
            self.starts = {key: item for key, item in self.starts.items() if key < threads // 2}
            self.ends = {key: item for key, item in self.ends.items() if key < threads // 2}
        self.original_threads = threads
        self.threads = max(self.starts.keys()) + 1

        # activate serial or parallel execution based on number of threads
        self.create_children = self.create_children_serial if threads == 1 else self.create_children_parallel
        if load_from:
            self.create_initial_population = partial(self.load_initial_population, load_from)
        else:
            self.create_initial_population = self.create_initial_population_serial \
                if threads == 1 else self.create_initial_population_parallel
        logger.info(f"{'Serial' if threads == 1 else 'Parallel'} execution on "
                    f"{'a single' if threads == 1 else threads} thread(s)")

        # select selection, crossover and mutation functions based on the type
        # of genes in the chromosomes: continues values or discrete
        self.__selection_factory = {
            GeneType.Continuous: self.tournament,
            GeneType.Discrete: self.tournament
        }
        self.__crossover_factory = {
            GeneType.Continuous: self.sbc_crossover,
            GeneType.Discrete: self.uniform_crossover_single_child
        }
        self.__mutation_factory = {
            GeneType.Continuous: self.pol_mutation,
            GeneType.Discrete: self.random_mutation
        }
        self.__selection_f = self.__selection_factory.get(
            self.problem.variable_type
        )
        self.__crossover_f = self.__crossover_factory.get(
            self.problem.variable_type
        )
        self.__mutation_f = self.__mutation_factory.get(
            self.problem.variable_type
        )

        logger.debug(f"Solutions per thread: {self.sols_per_thread}")
        logger.debug(f"Remaining solutions: {self.remaining_sols}")

        logger.debug(f"Tournament participants: {self.num_of_tour_participants}")
        logger.debug(f"Selection function: {self.__selection_f.__name__}")
        logger.debug(f"Crossover function: {self.__crossover_f.__name__}")
        logger.debug(f"Crossover parameter: {self.crossover_param}")
        logger.debug(f"Mutation function: {self.__mutation_f.__name__}")
        logger.debug(f"Mutation parameter: {self.mutation_param}")
        logger.info(f"Results for this run are saved in {self.problem.resdir}")

    # @profile
    def evolve(self):
        """Main function for evolution of Genetic Algorithm"""
        self.on_start()
        population = self.get_initial_population()
        # iterate for given generations
        for i in range(self.num_of_generations):
            s = time()
            logger.debug(f'Beginning generation {i}')
            population = self.evolve_single_generation(population)
            self.on_generation(i, population, time() - s)

        self.on_completion(population)

    # @profile
    def evolve_single_generation(self, population):
        # create children
        ss = time()
        children_proxy = self.create_children(population)

        children = []
        for ind_id in range(len(children_proxy.features)):
            individual = self.problem.generate_individual()
            individual.set_features(children_proxy.features[ind_id])
            individual.set_objectives(children_proxy.objectives[ind_id])
            children.append(individual)

        logger.debug(f"{len(children)} children created")
        population.extend(children)

        logger.info(f"Created children in time: {time() - ss:.3f}")
        return self.merge_and_sort_population(population)

    def plot_last_pareto(self):
        if self.last_pareto_front is None:
            return

        logger.info(f"Plotting pareto front from generation {self.last_completed_generation}")
        grouped_objectives = list(zip(*[ind.objectives for ind in self.last_pareto_front]))

        # font ans latex parameters
        rcParams['font.size'] = "14"
        rcParams.update({
            "text.usetex": True,
            "font.family": "serif",
            "font.serif": ["Computer Modern Roman"]
        })
        fig, axis = plt.subplots(figsize=(5, 3))

        axis.plot(grouped_objectives[0], grouped_objectives[1], 'bx--')
        axis.set_xlabel('Objective 1')
        axis.set_ylabel('Objective 2')
        axis.grid()
        plt.tight_layout()
        savefile = os.path.join(self.problem.resdir, 'pareto.pdf')
        plt.savefig(savefile, bbox_inches='tight')
        logger.info(f"Plotted pareto plot in {savefile}")

    def get_initial_population(self):
        # initialize and sort population in fronts
        s = time()
        population = self.create_initial_population()
        logger.info(f"Created initial population in time: {time() - s:.3f}")
        s = time()
        self.fast_nondominated_sort(population)
        logger.debug(f"Initial non-dominated sort time: {time() - s:.3f}")
        # calculate crowding distance
        s = time()
        for front in population.fronts:
            self.calculate_crowding_distance(front, population)
        logger.debug(f"Initial calculation of crowding distance in time: {time() - s:.3f}s")
        return population

    def merge_and_sort_population(self, population):
        # sort merged population, which now becomes parent population
        ss = time()
        self.fast_nondominated_sort(population)
        logger.debug(f"Sorted extended population in time: {time() - ss:.3f}")
        population.population = []

        new_population = Population()
        front_num = 0
        ss = time()
        # populate new population, front by front
        while len(new_population) + len(population.fronts[front_num]) <= self.num_of_individuals:
            # calculate crowding distance of current front
            self.calculate_crowding_distance(population.fronts[front_num], population)
            new_population.extend(population.fronts[front_num])
            front_num += 1
        logger.debug(f"Calculated crowding distance of extended population in time: {time() - ss:.3f}")

        # calculate crowding distance of last front, which overflows the extended population (needs to be truncated)
        ss = time()
        self.calculate_crowding_distance(population.fronts[front_num], population)
        # sort last front by crowding distance
        population.fronts[front_num].sort(key=lambda individual: individual.crowding_distance, reverse=True)
        # the last individuals, as determined by crowding distance, are discarded
        new_population.extend(population.fronts[front_num][0:self.num_of_individuals - len(new_population)])
       
        logger.debug(f"New population length: {len(new_population)}")
        logger.debug(f"Truncated last front by crowding distance in time: {time() - ss:.3f}")
        del population

        # sort new population and calculate crowding distance
        ss = time()
        self.fast_nondominated_sort(new_population)
        for front in new_population.fronts:
            self.calculate_crowding_distance(front, new_population)
        logger.debug(f"Sorted and calculated crowding distance of new population in time: {time() - ss:.3f}")

        return new_population

    def on_start(self):
        """Utility function at beginning of evolution"""
        os.makedirs(self.problem.resdir, exist_ok=True)
        files_to_rm = glob(f"{self.problem.resdir}/population*.pkl")
        for file_to_rm in files_to_rm:
            os.remove(file_to_rm)

        # log information to start
        start_time = datetime.now()
        logger.info("----------------------------------")
        logger.info("Started at {}".format(start_time.strftime("%d/%m/%Y %H:%M:%S")))
        logger.info("---------- Generation 0 ----------")

    def on_generation(self, generation, population, time_elapsed):
        """Utility function at the end of each generation"""
        # save population to file
        if self.save_frequency != -1 and generation % self.save_frequency == 0:
            with open(self.problem.resdir + f'/population{generation}.pkl', 'wb') as f:
                # save only the chromosomes and objective values
                simplified_fronts = []
                for front in population.fronts:
                    features, objectives = [], []
                    for individual in front:
                        features.append(individual.features)
                        objectives.append(individual.objectives)
                    simplified_fronts.append([features, objectives])

                pickle.dump(simplified_fronts, f)
            logger.debug(f"Saving current population in {self.problem.resdir}/population{generation}.pkl")

        # log information
        logger.info(f"Pareto front contains {len(population.fronts[0])} solutions")
        # separate each objective into a tuple and print its range
        grouped_objectives = list(zip(*[ind.objectives for ind in population.fronts[0]]))
        for obj_idx, obj_list in enumerate(grouped_objectives):
            logger.info(f"Objective {obj_idx} ranges: {min(obj_list):.3e} -> {max(obj_list):.3e}")

        # save last pareto front
        self.last_pareto_front = deepcopy(population.fronts[0])
        self.last_completed_generation = generation

        for i, front in enumerate(population.fronts[1:]):
            logger.debug(f"Front {i+1}: {len(front)} solutions")
        logger.info(f"Generation time: {time_elapsed:.3f}s")
        logger.info(f"------- Ended generation {generation} -------")
        if generation < self.num_of_generations - 1:
            logger.info(f"---------- Generation {generation + 1} ----------")

    def on_completion(self, population):
        """Utility function at the end of the evolution"""
        final_time = datetime.now()
        logger.info("Ended at {}".format(final_time.strftime("%d/%m/%Y %H:%M:%S")))
        logger.info("------------------------------------")

        if self.save_frequency != -1:
            with open(self.problem.resdir + f'/final_population.pkl', 'wb') as f:
                # save only the chromosomes and objective values
                simplified_fronts = []
                for front in population.fronts:
                    features, objectives = [], []
                    for individual in front:
                        features.append(individual.features)
                        objectives.append(individual.objectives)
                    simplified_fronts.append([features, objectives])

                pickle.dump(simplified_fronts, f)

        logger.info(f"Saved final population in {self.problem.resdir}/final_population.pkl")

    def load_initial_population(self, file):
        """Load initial population from a given pickle file"""
        with open(file, 'rb') as f:
            loaded_population = pickle.load(f)

        population = Population()
        for front_features, front_objectives in loaded_population:
            for features, objectives in zip(front_features, front_objectives):
                individual = self.problem.generate_individual()
                individual.set_features(features)
                individual.set_objectives(objectives)
                population.append(individual)

        assert len(population) == self.num_of_individuals, f'Wrong number of individuals loaded: got {len(population)}' \
                                                           f' but expected {self.num_of_individuals}'
        return population

    def create_initial_population_serial(self):
        """Create population of random individuals using a single process"""
        population = Population()
        for ind_id in range(self.num_of_individuals):
            individual = self.problem.generate_individual()
            # calculate the objectives of each individual
            self.problem.calculate_objectives(individual, thread_index=0)
            population.append(individual)
        return population

    def create_initial_population_per_thread(self, thread_id):
        """Execute the serial operation of a single thread to create individuals
        for the initial population"""
        # population should be partitioned to <self.threads> slices, each with
        # <self.sols_per_thread> individuals plus some of the <self.remaining_sols>
        # individuals, equally distributed to all available threads
        start = thread_id*self.sols_per_thread + min(self.remaining_sols, thread_id)
        end = start + self.sols_per_thread
        if thread_id < self.remaining_sols:
            end += 1

        individuals = []
        for ind_id in range(start, end):
            individual = self.problem.generate_individual()
            # calculate the objectives of each individual
            self.problem.calculate_objectives(individual, thread_index=thread_id)
            individuals.append(individual)
        return individuals

    # @profile
    def create_initial_population_parallel(self, *args):
        """Create population of random individuals using multiple processes"""
        population = Population()
        with cf.ProcessPoolExecutor(max_workers=self.original_threads) as executor:
            for part_of_population in executor.map(
                    self.create_initial_population_per_thread,
                    range(self.original_threads)
            ):
                population.extend(part_of_population)

        # reconstruct population
        rec_population = Population()
        for idx in range(self.num_of_individuals):
            individual = self.problem.generate_individual()
            individual.set_features(population.population[idx].features)
            individual.set_objectives(population.population[idx].objectives)
            rec_population.append(individual)
        return rec_population
        # return population

    def create_children_parallel_core(self, population, thread_id=None):
        """Core function to create and evaluate children"""
        part_of_population = []
        for index in range(self.starts[thread_id], self.ends[thread_id]):
            #logger.debug(f'Core: {thread_id} {index}')
            # select two non-equal parents
            parent1 = self.__selection_f(population)
            parent2 = parent1
            while parent1 == parent2:
                parent2 = self.__selection_f(population)
            # crossover the parents' chromosomes to get children
            children = self.__crossover_f(parent1, parent2)
            for child in children:
                # stochastically mutate the children's chromosomes
                self.__mutation_f(child)
                # calculate their objective function
                self.problem.calculate_objectives(child, thread_index=thread_id)
                part_of_population.append(child)

        return part_of_population

    def create_children_parallel(self, population):
        """Create children from a parent population. Schedule in parallel all children evaluations"""
        children = []
        fit_per_thread = partial(self.create_children_parallel_core, population)

        with cf.ProcessPoolExecutor(max_workers=self.threads) as executor:
        # with cf.ThreadPoolExecutor(max_workers=self.threads) as executor:
            for part_of_population in executor.map(fit_per_thread, range(self.threads)):
                children.extend(part_of_population)

        features, objectives = [], []
        for individual in children:
            features.append(individual.features)
            objectives.append(individual.objectives)

        children_proxy = PopulationProxy(features=features, objectives=objectives, fronts=[])
        return children_proxy

    def create_children_serial_core(self, population, thread_id=None):
        """Core function to create and evaluate children"""
        # select two non-equal parents
        parent1 = self.__selection_f(population)
        parent2 = parent1
        while parent1 == parent2:
            parent2 = self.__selection_f(population)
        # crossover the parents' chromosomes to get children
        children = self.__crossover_f(parent1, parent2)
        for child in children:
            # stochastically mutate the children's chromosomes
            self.__mutation_f(child)
            # calculate their objective function
            self.problem.calculate_objectives(child, thread_index=thread_id)
        return children

    def create_children_serial(self, population):
        """Create children from a parent population. Single process"""
        features, objectives = [], []
        while len(features) < len(population):
            some_children = self.create_children_serial_core(population=population, thread_id=0)
            for individual in some_children:
                features.append(individual.features)
                objectives.append(individual.objectives)
                #logger.info(f"Created child no {len(features)} out of {len(population)}")

        children_proxy = PopulationProxy(features=features, objectives=objectives, fronts=[])
        return children_proxy

    def fast_nondominated_sort(self, population):
        """Function to sort population into fronts based on domination"""
        population.fronts = [[]]
        for individual in population:
            individual.domination_count = 0
            individual.dominated_solutions = []
            for other_individual in population:
                if individual.dominates(other_individual):
                    individual.dominated_solutions.append(other_individual)
                elif other_individual.dominates(individual):
                    individual.domination_count += 1
            if individual.domination_count == 0:
                individual.rank = 0
                population.fronts[0].append(individual)

        i = 0
        while len(population.fronts[i]) > 0:
            temp = []
            for individual in population.fronts[i]:
                for other_individual in individual.dominated_solutions:
                    other_individual.domination_count -= 1
                    if other_individual.domination_count == 0:
                        other_individual.rank = i+1
                        temp.append(other_individual)
            i = i+1
            population.fronts.append(temp)

    def calculate_crowding_distance(self, front, population):
        """Calculate crowding distance of a particular front"""
        if any(objective is None for objective in self.problem.max_objectives + self.problem.min_objectives):
            self.problem.set_max_min_objectives(population=population)

        if len(front) > 0:
            solutions_num = len(front)
            for individual in front:
                individual.crowding_distance = 0

            # for m in range(len(front[0].objectives)):
            #     front.sort(key=lambda individual: individual.objectives[m])
            #     front[0].crowding_distance = self.problem.max_objectives[m]
            #     front[solutions_num-1].crowding_distance = self.problem.max_objectives[m]
            #     for index, value in enumerate(front[1:solutions_num-1]):
            #         front[index].crowding_distance = (front[index+1].crowding_distance - front[index-1].crowding_distance) /\
            #                                          (self.problem.max_objectives[m] - self.problem.min_objectives[m])

            for m in range(len(front[0].objectives)):
                front.sort(key=lambda individual: individual.objectives[m])
                front[0].crowding_distance = MAX_CROWDING_DISTANCE  # front[solutions_num-1].objectives[m]
                front[solutions_num-1].crowding_distance = MAX_CROWDING_DISTANCE  # front[solutions_num-1].objectives[m]
                scale = front[solutions_num-1].objectives[m] - front[0].objectives[m]
                for i in range(1, solutions_num-1):
                    try:
                        front[i].crowding_distance += (front[i+1].objectives[m] - front[i-1].objectives[m])/scale
                    except ZeroDivisionError:
                        front[i].crowding_distance = 0

            # for m in range(len(front[0].objectives)):
                # front[0].crowding_distance = MAX_CROWDING_DISTANCE
                # front[solutions_num-1].crowding_distance = MAX_CROWDING_DISTANCE
                # m_values = [individual.objectives[m] for individual in front]
                # scale = max(m_values) - min(m_values)
                # if scale == 0:
                #     scale = 1
                # for i in range(1, solutions_num-1):
                #     front[i].crowding_distance += (front[i+1].objectives[m] - front[i-1].objectives[m])/scale

    def crowding_operator(self, individual, other_individual):
        """Compare two individuals based on their rank and crowding distance"""
        if (individual.rank < other_individual.rank) or \
            ((individual.rank == other_individual.rank) and (individual.crowding_distance > other_individual.crowding_distance)):
            return 1
        else:
            return -1

    def sbc_crossover(self, parent1, parent2):
        """Simulated binary crossover for real-valued genes"""
        child1 = self.problem.generate_individual()
        child2 = self.problem.generate_individual()

        for i in range(len(child1.features)):
            beta = self.__get_beta()
            x1 = (parent1.features[i] + parent2.features[i])/2
            x2 = abs((parent1.features[i] - parent2.features[i])/2)
            child1.features[i] = x1 + beta*x2
            child2.features[i] = x1 - beta*x2
        return child1, child2

    def uniform_crossover_single_child(self, *parents):
        """Uniform crossover for discrete-valued genes"""
        child = self.problem.generate_individual()

        for i in range(len(child.features)):
            # if crossover is selected for this gene...
            if random.random() < self.crossover_param:
                # ...the child randomly takes a chromosome of one parent
                parent = random.choice(parents)
                child.features[i] = parent.features[i]
        # return as a tuple
        return child,

    def __get_beta(self):
        u = random.random()
        if u <= 0.5:
            return (2*u)**(1/(self.crossover_param+1))
        return (2*(1-u))**(-1/(self.crossover_param+1))

    def pol_mutation(self, child):
        """Polynomial mutation for real-valued genes"""
        for gene in range(len(child.features)):
            u, delta = self.__get_delta()
            if u < 0.5:
                child.features[gene] += delta*(child.features[gene] - self.problem.variables_range[gene][0])
            else:
                child.features[gene] += delta*(self.problem.variables_range[gene][1] - child.features[gene])
            # if new features are too high, clip to highest boundaries
            if child.features[gene] < self.problem.variables_range[gene][0]:
                child.features[gene] = self.problem.variables_range[gene][0]
            elif child.features[gene] > self.problem.variables_range[gene][1]:
                child.features[gene] = self.problem.variables_range[gene][1]

    def __get_delta(self):
        u = random.random()
        if u < 0.5:
            return u, (2*u)**(1/(self.mutation_param + 1)) - 1
        return u, 1 - (2*(1-u))**(1/(self.mutation_param + 1))

    def random_mutation(self, child):
        """Random mutation for discrete-valued genes"""
        for gene in range(self.problem.num_of_variables):
            # randomly change a selected number of genes
            if self.__choose_with_prob(self.mutation_param):
                child.features[gene] = random.choice([
                    vrange for vrange in self.problem.variables_range[gene] if vrange != child.features[gene]
                ])

    def tournament(self, population):
        """Tournament selection function"""
        participants = random.sample(
            population.population, self.num_of_tour_participants
        )
        best = None
        for participant in participants:
            if best is None or \
                    (self.crowding_operator(participant, best) == 1
                     and self.__choose_with_prob(self.tournament_prob)):
                best = participant
        return best

    def __choose_with_prob(self, prob):
        """Assess if a given probability exceeds a randomly obtained one"""
        if random.random() <= prob:
            return True
        return False

