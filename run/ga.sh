#!/bin/bash
set -eou pipefail

circuit="$1"

scriptdir="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
maindir="$HOME/axcarbon"

python3 $maindir/main.py \
	--circuit $circuit \
	--libfile nangate45 \
        --name ga_${circuit} \
        --ga \
        --generations 10 \
        --population-size 20 \
        --tournament-participants 0.05 \
        --tournament-probability 0.9 \
        --error-metric variance \
        --hw-metric delay \
        --gene-type discrete \
        --candidate-type constant \
        --initial-weight 20 \
        --threads 10 \
        --save-frequency 5 \
