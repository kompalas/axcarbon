#!/bin/bash
set -eou pipefail

circuit="${1?Specify the circuit as the first positional argument}"

scriptdir="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
maindir="$HOME/axcarbon"

python3 $maindir/main.py \
	--circuit $circuit \
	--libfile asap7 \
        --name ga_${circuit} \
        --ga \
        --generations 20 \
        --population-size 200 \
        --tournament-participants 0.05 \
        --tournament-probability 0.8 \
        --error-metric variance \
        --hw-metric area \
        --gene-type discrete \
        --candidate-type constant \
        --initial-weight 10 \
        --threads 10 \
        --save-frequency 5 \
        # --mutation-probability 0.3

results=$(grep -A 2 "Pareto front contains" latest_log_file | tail -n 3)
curl -d "GA ($circuit) finished: $results" ntfy.sh/axcarbon