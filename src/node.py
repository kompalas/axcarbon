"""Description of node used in a DAG, along with random variable classes
representing delay distribution of each timing transition"""
import math
import numpy as np
from functools import total_ordering
from scipy import stats
from src.gate import Gate

__all__ = ['Node']


class Node(Gate):
    """Alias of Gate for DAG node"""
    def __init__(self, name, gtype, inputs, input_pins, outputs, output_pins):
        super().__init__(name=name, gtype=gtype,
                         inputs=inputs, input_pins=input_pins,
                         outputs=outputs, output_pins=output_pins)
        self.delay = {}

    def init_delay(self, transition=None):
        """Record delay statistics for timing transitions"""
        # iterate over all combinations (transitions) of input/output pins
        for inp_pin in self.input_pins:
            self.delay[inp_pin] = {}
            for out_pin in self.output_pins:
                # save delay distribution for specific input/output pin
                self.delay[inp_pin][out_pin] = self.get_delay(inp_pin, out_pin,
                                                           metric=f'delay_{transition}' if transition else None)

            # when 'any' is used, save the max (or average) of all distribution from each input pin
            self.delay[inp_pin]['any'] = max(self.delay[inp_pin].values())

        self.delay['any'] = {
            output_pin: max([
                self.delay[input_pin][output_pin] for input_pin in self.input_pins
            ])
            for output_pin in self.output_pins
        }

