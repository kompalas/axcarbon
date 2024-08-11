"""DAG class for translating the regular structure of a netlist"""
from collections import deque
from copy import deepcopy
from src import project_dir
from src.edge import Edge
# from memory_profiler import profile
import random
import logging
import math
import pandas as pd
import numpy as np
import pickle
import re
import os.path


__all__ = ['DAG']
logger = logging.getLogger(__name__)


class DAG:
    """Directed acyclic graph"""
    def __init__(self, name, nodes=None, edges=None, annot_file=None, stats_file=None, output_wires=[]):
        """
        Parameters
        ----------
        name : circuit name
        nodes : node objects (src.node) contained in an iterable
        edges : edge objects (src.edge) contained in an iterable
        annot_file : report (.csv) containing all the information about timing transitions
        stats_file : pickle file (.pkl) containing the frequency of appearance of edges in the critical path
        """
        self.name = name
        # initialize nodes and edges
        self.nodes = set(nodes) if nodes is not None else None
        self.edges = set(edges) if edges is not None else None
        logger.debug(f"Nodes: {self.nodes}")
        logger.debug(f"Edges: {self.edges}")
        # configure in-degrees, adjacency matrices and dict to access edges
        self.init_nodes_edges(output_wires)
        logger.debug(f"Adjacency matrix: {self.adj}")
        # annotate nodes with delay information
        self.annotated = False
        self.annotate_delays(
            annot_file=annot_file or f"{project_dir}/circuits/{self.name}/gate_delay.rpt.csv",
            stats_file=stats_file or f"{project_dir}/circuits/{self.name}/gate_delay_stats.pkl",
        )

        # topological sort properties
        # dictionary to keep the positional level of each node in the graph
        self.levels = {}
        # dictionary to keep track of updated nodes
        self.comes_from_node = {}
        self.comes_from_pin = {}
        # dictionary with accumulated random variables up to every output pin
        # of each node
        self.dist = {}
        # list to save topological sort
        self.top_sort = []
        # output node with maximum accumulated delay among all output nodes
        self.max_endnode = None
        self.topol_ord()
        logger.debug(f"Topological sort: {self.top_sort}")
        logger.debug(f"Accumulated delay: {self.dist}")
        # get significance of each node
        self.significance = {}
        self.assign_significance()
        logger.debug(f"Significance: {self.significance}")
        # replaced edges and isolated nodes
        self.replaced_edges = []
        self.replaced = []
        self.isolated_nodes = set()

    def init_nodes_edges(self, output_wires):
        """If provided in initialization, create dict to access edges and nodes (plus other utilities)"""
        if self.nodes is not None and self.edges is not None:
            # create dictionaries to access edges as Edge objects

            edges_net, edges_to, edges_from, edges_both = {}, {}, {}, {}
            for edge in self.edges:

                if edge.net not in edges_net:
                    edges_net[edge.net] = set()
                edges_net[edge.net].add(edge)

                if edge.destination != '':
                    if '->' + edge.destination not in edges_to:
                        edges_to['->' + edge.destination] = set()
                    edges_to['->' + edge.destination].add(edge)

                if edge.origin != '':
                    if edge.origin + '->' not in edges_from:
                        edges_from[edge.origin + '->'] = set()
                    edges_from[edge.origin + '->'].add(edge)

                if edge.origin != '' and edge.destination != '':
                    if edge.origin + '->' + edge.destination not in edges_both:
                        edges_both[edge.origin + '->' + edge.destination] = set()
                    edges_both[edge.origin + '->' + edge.destination].add(edge)

            # combine into a single dictionary and save it in the graph
            self.get_edges = {**edges_net, **edges_to, **edges_from, **edges_both}

            self.adj = {}
            self.rev_adj = {}
            self.in_degree = {node.name: 0 for node in self.nodes}
            self.get_node = {}
            self.input_nodes = set()
            self.output_nodes = set()

            for node in self.nodes:
                if any(wire == '' for wire in node.output_wires):
                    for wire, pin in zip(node.output_wires, node.output_pins):
                        if wire == '':
                            edge = Edge('', node.name, pin)
                            if node.name + '->' not in self.get_edges:
                                self.get_edges[node.name + '->'] = set()
                            self.get_edges[node.name + '->'].add(edge)

            # exit()
            # if True:

                # adjacency matrix
                self.adj[node.name] = {
                    edge.destination for edge in self.get_edges[node.name + '->']
                    if edge.destination != ''
                }
                # reverse adjacency matrix
                self.rev_adj[node.name] = {
                    edge.origin for edge in self.get_edges['->' + node.name]
                    if edge.origin != ''
                }
                # get in degree
                for child in self.adj[node.name]:
                    self.in_degree[child] += 1

                self.get_node[node.name] = node
                if all(edge.origin == '' 
                       for edge in self.get_edges['->' + node.name]):
                    self.input_nodes.add(node.name)
                if any(edge.destination == '' and edge.net in output_wires 
                       for edge in self.get_edges[node.name + '->']):
                    self.output_nodes.add(node.name)

    def replace(self, net, replacement):
        """Replace a wire which drives many edges with a constant value"""

        # a list of lists, each one representing an edge to replace. They contain
        # all edges towards the edge_to_replace destination that have already
        # been approximated 
        already_replaced = []

        # get all edges of the specified net that have not been approximated
        edges_to_replace = [edge for edge in self.get_edges[net] if edge.origin != '']

        for edge_to_replace in edges_to_replace:
            comes_from_output_node = edge_to_replace.origin in self.output_nodes

            self.replace_edge(
                edge_to_replace=edge_to_replace,
                replacement=replacement,
                comes_from_output_node=comes_from_output_node,
                create_new_edge=True
            )

            if not comes_from_output_node:
                # for every edge to replace, there is a unique node destination. Get all edges to that node that
                # have been already approximated. These edges will be used to check if the approximations to that
                # node have made its output constant, no matter of its non-constant inputs
                already_replaced.append([
                    edge for edge in self.get_edges['->' + edge_to_replace.destination]
                    if edge.origin == ''
                ])
        return already_replaced

    def replace_edge(self, edge_to_replace, replacement,
                     comes_from_output_node, create_new_edge):
        """Replace an edge with a specific constant replacement"""
        goes_into_input_node = edge_to_replace.destination in self.input_nodes

        # remove from edges set
        self.edges.remove(edge_to_replace)
        # remove from dictionary to access all edges
        self.get_edges[edge_to_replace.net].remove(edge_to_replace)

        if comes_from_output_node:
            self.get_edges[edge_to_replace.origin + '->'].remove(edge_to_replace)
            # if it was an output edge and there are no more left, remove node from output nodes
            if len(self.get_edges[edge_to_replace.origin + '->']) == 0:
                self.output_nodes.remove(edge_to_replace.origin)
        else:
            self.get_edges['->' + edge_to_replace.destination].remove(edge_to_replace)
            if not goes_into_input_node:
                self.get_edges[edge_to_replace.origin + '->'].remove(edge_to_replace)
                self.get_edges[edge_to_replace.origin + '->' + edge_to_replace.destination].remove(edge_to_replace)
            else:
                if len(self.get_edges['->' + edge_to_replace.destination]) == 0:
                    self.input_nodes.remove(edge_to_replace.destination)

        new_edge = None
        if create_new_edge:
            # now deal with replacement
            with_constant = str(replacement).isdecimal()

            new_edge = Edge(
                net=edge_to_replace.net if with_constant else replacement,
                origin='' if with_constant
                          else random.sample(self.get_edges[replacement], k=1)[0].origin,
                origin_pin='' if with_constant
                              else random.sample(self.get_edges[replacement], k=1)[0].origin_pin,
                destination=edge_to_replace.destination,
                destination_pin=edge_to_replace.destination_pin
            )

            if with_constant and not comes_from_output_node:
                self.edges.add(new_edge)
                self.get_edges[new_edge.net].add(new_edge)
                self.get_edges['->' + new_edge.destination].add(new_edge)

            elif not with_constant:
                # if we replace with an non-input edge
                if new_edge.origin != '':
                    # if we replace an output edge
                    if comes_from_output_node:
                        self.edges.add(new_edge)
                        self.get_edges[new_edge.net].add(new_edge)
                        self.get_edges[new_edge.origin + '->'].add(new_edge)
                        self.output_nodes.add(new_edge.origin)
                    # if we replace an non-output edge
                    else:
                        self.edges.add(new_edge)
                        self.get_edges[new_edge.net].add(new_edge)
                        self.get_edges[new_edge.origin + '->'].add(new_edge)
                        self.get_edges['->' + new_edge.destination].add(new_edge)

                        if new_edge.origin + '->' + new_edge.destination not in self.get_edges:
                            self.get_edges[new_edge.origin + '->' + new_edge.destination] = {new_edge}
                        else:
                            self.get_edges[new_edge.origin + '->' + new_edge.destination].add(new_edge)

                # if we replace with an input edge
                else:
                    # if we replace an non-output edge
                    if not comes_from_output_node:
                        self.edges.add(new_edge)
                        self.get_edges[new_edge.net].add(new_edge)
                        self.get_edges['->' + new_edge.destination].add(new_edge)
                        self.input_nodes.add(new_edge.destination)

            self.replaced_edges.append(
                (edge_to_replace, new_edge, str(replacement))
            )
        # remove from adjacency matrices
        self.update_adj(edge_to_replace, comes_from_output_node, new_edge)

    def update_adj(self, edge_to_replace, comes_from_output_node, new_edge=None):
        """Update adjacency matrices with replaced edge"""

        # iterables needed to not change size of the dictionaries
        no_longer_adj = [
            child for child in self.adj[edge_to_replace.origin]
            if self.get_edges[edge_to_replace.origin + '->' + child] == set()
        ]
        for child in no_longer_adj:
            self.adj[edge_to_replace.origin].remove(child)

        if not comes_from_output_node:
            no_longer_rev_adj = [
                parent for parent in self.rev_adj[edge_to_replace.destination]
                if self.get_edges[parent + '->' + edge_to_replace.destination] == set()
            ]
            for parent in no_longer_rev_adj:
                self.rev_adj[edge_to_replace.destination].remove(parent)
                self.in_degree[edge_to_replace.destination] = max(0, self.in_degree[edge_to_replace.destination] - 1)

        if new_edge is not None and new_edge.origin != '':
            if new_edge.destination not in self.adj[new_edge.origin]:
                self.adj[new_edge.origin].add(new_edge.destination)
            if not comes_from_output_node and new_edge.origin not in self.rev_adj[new_edge.destination]:
                self.rev_adj[new_edge.destination].add(new_edge.origin)

    def isolate_node(self, node_to_isolate_name, constant_output_pin, constant_output_value):
        """Isolate a node from the graph by removing its input connections"""
        # get all non-approximated edges
        edges_to_replace = {
            edge for edge in self.get_edges['->' + node_to_isolate_name] if edge.origin != ''
        }
        for edge_to_replace in edges_to_replace:
            self.replace_edge(
                edge_to_replace=edge_to_replace,
                replacement=0,
                comes_from_output_node=False,  # their origin cannot be an output node
                create_new_edge=True
            )
        self.isolated_nodes.add((node_to_isolate_name, constant_output_pin, constant_output_value))

    def remove_node(self, node_to_remove):
        """Remove a node from the graph"""
        raise NotImplementedError

    def reset(self):
        """Reset to original state by re-instating replaced edges"""
        # TODO: consider resetting graph to original state. Maybe not worth if deepcopy faster
        self.replaced = []
        self.replaced_edges = []

    def annotate_delays(self, annot_file, stats_file):
        """Annotate graph nodes with delay information
        """
        if not os.path.exists(annot_file):
            return

        # read annotation file
        csv_delay = pd.read_csv(annot_file)

        # get dictionary of default transitions, if exists
        try:
            with open(stats_file, "rb") as f:
                delay_stats_dict = pickle.load(f)
        except FileNotFoundError:
            delay_stats_dict = {}

        for node in self.nodes:
            # select delay information for the specific node
            node_data = csv_delay.loc[csv_delay['gate'] == node.name]
            assert not node_data.empty, \
                f"Delay information for node {node.name} was not found in {annot_file}"

            # get delay for every pin combination of the node
            for _, row in node_data.iterrows():
                node.arc_senses.add(row['sense'])

                # keeping only delay-valued keys
                start = 1 + row.index.get_loc('sense')
                for metric, value in row.iloc[start:].iteritems():
                    # if the pins are not included/specified in the netlist, 
                    # do not include that delay transition in the node delay details
                    if row['from'] in node.input_pins and row['to'] in node.output_pins:
                        node.set_delay(row['from'], row['to'], row['sense'], metric, value)

                        if node.name in delay_stats_dict and (row['from'], row['to']) in delay_stats_dict[node.name]:
                            node.set_default_transition(
                                input_pin=row['from'],
                                output_pin=row['to'],
                                sense=delay_stats_dict[node.name][(row['from'], row['to'])][0],
                                delay_metric=delay_stats_dict[node.name][(row['from'], row['to'])][1]
                            )

            logger.debug(f"Set delay information for node {node.name}: {node_data}")
            # store delay information for each node
            node.init_delay()
            node.annotated = True
            logger.debug(f"Set delay for node {node.name}:\n{node.delay}")

        self.annotated = True

    def topol_ord(self):
        """Topological ordering of nodes in the graph"""
        if not self.annotated:
            return

        # NOTE: Accumulated delay of a node is measured at its OUTPUT pins 

        # create copy of in degree to use in topological ordering algorithm
        in_degree = deepcopy(self.in_degree)
        self.dist = {}
        self.comes_from_node = {}
        self.comes_from_pin = {}
        self.top_sort = []

        queue = deque()
        for node in self.nodes:
            self.levels[node.name] = 0

            if self.in_degree[node.name] == 0:
                # first in the queue are the input nodes
                queue.appendleft(node.name)

                # input nodes get the maximum delay distribution as distance
                # from any input pin to all their output pins
                self.dist[node.name] = {}
                for output_pin in node.output_pins:
                    # save the transition with maximum delay from any input pin to the specified output pin
                    self.dist[node.name][output_pin] = [
                        node.delay[input_pin][output_pin]
                            if node.get_default_transition(input_pin, output_pin) is not None
                            else node.delay['any'][output_pin]
                        for input_pin in node.input_pins
                    ][0]

            else:
                # others get infinite delay
                self.dist[node.name] = {output_pin: math.inf for output_pin in node.output_pins}

        while queue:
            # if node reaches zero in-degree, append to topological order
            parent = queue.pop()
            self.top_sort.append(parent)

            # iterate over children
            for child in self.adj[parent]:
                # decrement in-degree for every child studied
                in_degree[child] -= 1
                # edge connecting parent and child nodes
                connect_edge = next(iter(self.get_edges[parent + '->' + child]))

                for child_output_pin in self.get_node[child].output_pins:
                    # check if accumulated delay up to <child> output is smaller than
                    # the accumulated delay up to <parent> plus the delay of <child>
                    if self.dist[child][child_output_pin] < \
                        self.dist[parent][connect_edge.origin_pin] + \
                            self.get_node[child].delay[connect_edge.destination_pin][child_output_pin]:

                        # set the accumulated delay until the output pin of child node
                        # to the sum of the accumulated delay until its input plus the
                        # delay of the child  node itself
                        self.dist[child][child_output_pin] = \
                            self.dist[parent][connect_edge.origin_pin] + \
                                self.get_node[child].delay[connect_edge.destination_pin][child_output_pin]

                        # update tracing node and pin for backward pass
                        self.comes_from_pin[child] = (connect_edge.destination_pin, child_output_pin)
                        self.comes_from_node[child] = parent

                # update level of child
                if self.levels[child] < self.levels[parent] + 1:
                    self.levels[child] = self.levels[parent] + 1
                # check if child has zero in-degree
                if in_degree[child] == 0:
                    queue.appendleft(child)

        assert len(self.top_sort) == len(self.nodes)

    def critical_path(self):
        """Critical path of the graph"""
        if not self.annotated:
            return []

        def comesfrom_rec(node_name, path):
            """Recursive function to get critical path via comes_from_node
            dictionary created during topological ordering"""
            if len(path) == 0:
                path.append(node_name)
            try:
                origin_node = self.comes_from_node[node_name]
                path.append(origin_node)
                return comesfrom_rec(origin_node, path)
            # key error in comes_from_node dict signals an input node, so the recursion stops
            except KeyError:
                return

        def comesfrom(node_name):
            """Wrapper function for recursively tracing the maximum path"""
            path = []
            comesfrom_rec(node_name, path)
            # reverse the direction, from input to output
            return list(reversed(path))

        # get the maximum transition of each output node
        endnodes = [
            (
                node, 						 # output node name
                max(self.dist[node], key=self.dist[node].get), 	 # output pin
                max(self.dist[node].values()) 			 # delay
            )
            for node in self.top_sort if node in self.output_nodes
        ]

        # start from the maximum delay output node and see if it reaches an input node
        self.max_endnode = (None, None, math.inf)
        for endnode in sorted(endnodes, key=lambda x: x[2], reverse=True):
            cp = comesfrom(endnode[0])
            if cp[0] in self.input_nodes:
                self.max_endnode = endnode
                return cp
        return []

    @property
    def cpd(self):
        """Delay of the critical path"""
        return self.max_endnode[2]

    def assign_significance(self):
        """Assign a significance to each node in the graph"""
        for node_name in reversed(self.top_sort):

            # the significance of an output node is the significance of its highest-ranked output bit
            if node_name in self.output_nodes:
                # get only the wires connected to an output of the netlist
                out_wires = [
                    out_wire for out_wire in self.get_node[node_name].output_wires
                    if node_name in self.output_nodes  # TODO: this has not been tested
                    #if out_wire in netlist.netlist_data['outputs']
                ]
                assert out_wires != []

                # check if output is part of a bus
                bus_outputs = [out_wire for out_wire in out_wires if re.search('\[\d+\]', out_wire)]
                # this means that a bus output is included
                if bus_outputs:
                    bit_significance = max(
                        int(re.search('\[(\d+)\]', out_wire).group(1)) for out_wire in bus_outputs
                    )
                # this means that output doe not contain multiple wires
                else:
                    bit_significance = 0

                self.significance[node_name] = 2 ** bit_significance

            # the significance of a non-output node is the sum of its children
            else:
                self.significance[node_name] = sum(
                    self.significance[child_node] for child_node in self.adj[node_name]
                )

    def get_path_edges(self, path):
        """Get the edges comprised in a given path"""
        path_edges = random.sample(self.get_edges['->' + path[0]], k=1)
        for i in range(len(path) - 1):
            path_edges += random.sample(self.get_edges[path[i] + '->' + path[i+1]], k=1)
        path_edges += random.sample(self.get_edges[path[-1] + '->'], k=1)
        return path_edges


