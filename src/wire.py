import logging

__all__ = ['Wire']
logger = logging.getLogger(__name__)


class Wire:
    """
    Class to represent wires from a Verilog netlist
    """
    def __init__(self, name, origin="", origin_pin=""):
        """
        Initialize wire object
        :param name: wire name, as appears in the Verilog netlist
        :param origin: name of the origin gate
        :param origin_pin: output pin of the origin gate
        """
        self.name = name
        self.origin = origin
        self.origin_pin = origin_pin
        self.destinations = []
        self.destination_pins = []
        self.data = {}
        self.create_ref_dict()
        self.activity = {}

    def create_ref_dict(self):
        self.data['origin'] = {self.origin: self.origin_pin}
        self.data['origin_pin'] = {self.origin_pin: self.origin}
        self.data['dest'] = dict(zip(self.destinations, self.destination_pins))

    def set_activity(self, t0, t1, tx, tc, tg, ig):
        assert 0.99 <= t0 + t1 <= 1.01, f"{t0}, {t1}"
        self.activity['t0'] = t0
        self.activity['t1'] = t1
        self.activity['tx'] = tx
        self.activity['tc'] = tc
        self.activity['tg'] = tg
        self.activity['ig'] = ig

    def set_sap(self, sap):
        self.activity['sap'] = sap

    def mean_value(self):
        return 0 if self.activity['t0'] >= self.activity['t1'] else 1

    def add_destination(self, gate_name, gate_pin):
        self.destinations.append(gate_name)
        self.destination_pins.append(gate_pin)

    def add_origin(self, origin_gate, origin_gate_pin):
        if self.origin:
            logger.warning(f'Changing origin of wire {self.name} from {self.origin} to {origin_gate}')
        self.origin = origin_gate
        if self.origin_pin:
            logger.warning(f'Changing origin pin of wire {self.name} from {self.origin_pin} to {origin_gate_pin}')
        self.origin_pin = origin_gate_pin

    def __str__(self):
        return f'Wire {self.name} from {self.origin}({self.origin_pin})'

    def __repr__(self):
        return f'Wire {self.name} from {self.origin}({self.origin_pin})'

