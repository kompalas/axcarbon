__all__ = ['Edge']


class Edge:
    """DAG edge"""
    def __init__(self, net, origin="", origin_pin="", destination="", destination_pin="", activity=None):
        self.net = net
        self.origin = origin
        self.origin_pin = origin_pin
        self.destination = destination
        self.destination_pin = destination_pin
        self.activity = activity
        self.weight = None
        # og stats to recover from
        self.og = {
            'origin': origin,
            'origin_pin': origin_pin,
            'destination': destination,
            'destination_pin': destination_pin
            }
        self.changed = False

    def set_origin(self, new_origin):
        """Set new origin"""
        self.origin = new_origin
        self.changed = True
    
    def set_origin_pin(self, new_origin_pin):
        """Set new origin pin"""
        self.origin_pin = new_origin_pin
        self.changed = True

    def set_destination(self, new_destination):
        """Set new destination"""
        self.destination = new_destination
        self.changed = True

    def set_destination_pin(self, new_destination_pin):
        """Set new destination_pin"""
        self.destination_pin = new_destination_pin
        self.changed = True

    def reset(self):
        """Reset to initial attributes"""
        for key, value in self.og:
            setattr(self, key, value)
        self.changed = False

    def __str__(self):
        return f'DAG Edge {self.net}: {self.origin}({self.origin_pin}) -> {self.destination}({self.destination_pin})'

    def __repr__(self):
        return f'DAG Edge {self.net}: {self.origin}({self.origin_pin}) -> {self.destination}({self.destination_pin})'

