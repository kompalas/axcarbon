"""Gate class representing a standard cell described in verilog"""
from itertools import product
import random
import logging
import numpy as np

__all__ = ['Gate']
logger = logging.getLogger(__name__)


class Gate:
    """Gate object as described in a Verilog netlist"""
    def __init__(self, name, gtype, inputs, input_pins, outputs, output_pins):
        """
        Initialize netlist gate object
        :param name: the name of the node (e.g., U2)
        :param gtype: the cell type (e.g., NAND2_X1)
        :param inputs: list of input wires
        :param input_pins: list of input pins
        :param outputs: list of output wires
        :param output_pins: list of output pins
        """
        self.type = gtype
        self.name = name
        # configure inputs and outputs
        assert len(inputs) == len(input_pins), \
            f"""Gate inputs mismatch: {len(inputs)} input gates don't match \
                with {len(input_pins)} input pins"""
        self.input_wires = inputs
        self.input_pins = input_pins
        assert len(outputs) == len(output_pins), \
            f"""Gate outputs mismatch: {len(outputs)} output gates don't match \
                with {len(output_pins)} output pins"""
        self.output_wires = outputs
        self.output_pins = output_pins

        # dictionary containing all io information
        self.io = {}
        self.create_ref_dict()

        # delay characteristics of the gate. Specify self.delay[from][to][<delay_metric>]
        self._delay = {
            from_pin: {
                to_pin: {
                    **{'negative_unate': {}, 'positive_unate': {}}
                } for to_pin in output_pins
            } for from_pin in input_pins
        }
        # set of different arc senses provided by delay report
        self.arc_senses = set()
        self.annotated = False
        self._default_transitions = {}

    @property
    def max_delay(self):
        """Maximum delay + 6 * stdevs among all timing transitions"""
        return max([
            self._delay[inp_pin][out_pin][sense][f'delay_{rise_or_fall}'] + \
                6 * self._delay[inp_pin][out_pin][sense][f'stdev_{rise_or_fall}']
            for inp_pin, out_pin, rise_or_fall, sense in product(
                self.input_pins,
                self.output_pins,
                ['rise', 'fall'],
                self.arc_senses
            )
        ])

    @property
    def delay_metrics(self):
        """Get all the delay metrics recorded"""
        # random io pins and arc sense is used to get the keys
        return list(
            self._delay[self.input_pins[0]][self.output_pins[0]]
            [random.sample(self.arc_senses, 1)].keys()
        )

    def set_delay(self, pin_from, pin_to, sense, metric, value):
        """Set delay information"""
        assert pin_from in self.input_pins, \
            f"""The specified input port {pin_from} does not correspond to the 
            input ports of the gate ({self.input_pins})"""
        assert pin_to in self.output_pins, \
            f"""The specified output port {pin_to} does not correspond to the 
            output ports of the gate ({self.output_pins})"""

        self._delay[pin_from][pin_to][sense.lower()][metric.lower()] = value

    def set_default_transition(self, input_pin, output_pin, sense, delay_metric):
        """Set the default timing transition for a pair of input/output pins"""
        self._default_transitions[(input_pin, output_pin)] = sense, delay_metric

    def get_delay(self, pin_from, pin_to, metric=None, sense=None):
        """Get delay information"""
        try:
            # if a default transition is included, return its delay
            if (pin_from, pin_to) in self._default_transitions:
                sense, metric = self._default_transitions[(pin_from, pin_to)]
                return self._delay[pin_from][pin_to][sense][metric]
        except KeyError:
            logger.error("\nInvalid timing transition.\nThe most probable cause for this error is a "
                         "transition that appeared in the critical path during the delay_stats test "
                         "was not documented by the report with analytical delay calculation of all timing "
                         "arcs.\nConsider re-running both the delay annotation and stats gathering.\n"
                         "Ignoring this for now, and the gate will be annotated with the default delay.\n"
                         "The error message was caused by the following timing transitions:")
            logger.error(f"Node {self.name}, {self.type}")
            logger.error(f"Pins: from {pin_from} to {pin_to}")
            logger.error(f"Default transitions: {self._default_transitions}")
            logger.error(f"Default transitions for specified pins: {self._default_transitions[(pin_from, pin_to)]}")
            logger.error(f"Timing transitions for specified pins: {self._delay[pin_from][pin_to]}")
            logger.error(f"Sense and metric requested: {sense}, {metric}")
            # TODO: it may not be needed to raise this error.
            # raise

        # if no metric specified get the median (or average) of all delay transitions and senses
        if metric is None:
            return np.median([
                self._delay[pin_from][pin_to][sense][delay_type]
                for sense, delay_type in product(self.arc_senses, ['delay_rise', 'delay_fall'])
                if delay_type in self._delay[pin_from][pin_to][sense].keys()
            ])
        # if no sense specified, pick one at random
        if sense is None:
            sense = random.sample(self.arc_senses, k=1)
        return self._delay[pin_from][pin_to][sense][metric]

    def get_default_transition(self, input_pin, output_pin):
        """Get the default timing transition for a pair of input/output pins, if it exists"""
        if (input_pin, output_pin) in self._default_transitions:
            return self._default_transitions[(input_pin, output_pin)]
        return None

    def create_ref_dict(self):
        """Reference dict with io of the gate"""
        self.io['input_pins'] = dict(zip(self.input_wires, self.input_pins))
        self.io['input_wires'] = dict(zip(self.input_pins, self.input_wires))
        self.io['output_pins'] = dict(zip(self.output_wires, self.output_pins))
        self.io['output_wires'] = dict(zip(self.output_pins, self.output_wires))

    def __str__(self):
        return self.__class__.__name__ + ' ' + self.name + ': ' + self.type

    def __repr__(self):
        return self.__class__.__name__ + ' ' + self.name + ': ' + self.type

