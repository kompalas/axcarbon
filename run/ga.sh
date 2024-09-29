#!/bin/bash
set -eou pipefail

circuit="${1?Specify the circuit as the first positional argument}"
library="${2?Specify the library as the second positional argument}"

scriptdir="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
maindir="$HOME/axcarbon"

# copy library c files into the libs/ directory
cp $maindir/libs/$library/c/library* $maindir/libs/
rm -f $maindir/libs/library.o $maindir/libs/_library.so

python3 $maindir/main.py \
	--circuit $circuit \
	--libfile $library \
        --name ga_${circuit} \
        --ga \
        --generations 80 \
        --population-size 100 \
        --error-metric mre \
        --hw-metric area \
        --error-constraint 0.05 \
        --gene-type discrete \
        --approximation-type glp \
        --initial-weight 200 \
        --threads 10 \
        --save-frequency 5 \
        --tournament-participants 0.2 \
        --tournament-probability 0.9 \
        --crossover-probability 0.8 \
        --mutation-probability 0.05 \

results=$(grep -A 2 "Pareto front contains" latest_log_file | tail -n 3)
curl -d "GA ($circuit) finished: $results" ntfy.sh/axcarbon