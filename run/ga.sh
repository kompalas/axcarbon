#!/bin/bash
set -eou pipefail

circuit="$1"

scriptdir="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
maindir="$HOME/ax_map_accel/circuit_generation"
maindir="/workspace/ax_map_accel/circuit_generation"

python3 $maindir/main.py \
	--circuit $circuit \
	--libfile nangate45 \
        --name ga_${circuit} \
        --ga \
        --generations 100 \
        --population-size 200 \
        --tournament-participants 0.05 \
        --tournament-probability 0.9 \
        --number-of-objectives 2 \
        --error-metric nmed \
        --gene-type discrete \
        --candidate-type constant \
        --initial-weight 20 \
        --threads 10 \
        --save-frequency 5 \
