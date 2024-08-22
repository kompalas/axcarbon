#!/bin/bash
set -eou pipefail

circuit="$1"

scriptdir="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
maindir="$HOME/ax_map_accel/circuit_generation"
maindir="/workspace/ax_map_accel/circuit_generation"

python3 $maindir/main.py \
	--circuit $circuit \
	--libfile nangate45 \
        --name mult_table_${circuit} \
        --prepare-mult

