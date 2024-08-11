import re
import glob
import os
import logging

project_dir = os.path.dirname(os.path.dirname(__file__))

ALL_CIRCUITS = [
    re.search(r'[^\\/]*$', path).group()
    for path in glob.glob(f"{project_dir}/circuits/*")
]

MAX_ERROR = 2**33
MAX_DELAY = 10
MAX_STDEV = 1

MAX_CROWDING_DISTANCE = 10**9
