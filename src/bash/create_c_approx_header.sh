#!/bin/bash
# Create C-header files for each approximate netlist in the GA results

set -eou pipefail
# set -x

expdir=${1?"Specify the directory at which GA results are stored"}
# if the last character of expdir is a slash, remove it
if [[ ${expdir: -1} == "/" ]]; then
    len=$((${#expdir}-1))
    expdir=${expdir:0:$len}
fi
if [ -z "$(ls -A $expdir/netlists)" ]; then
    echo "Error: No netlists found in $expdir/netlists"
    exit 1
fi

maindir="$HOME/axcarbon"
# figure out circuit name from current directory
circuit="$(echo $expdir | awk -F'_' '{for (i=1; i<=NF; i++) if ($i ~ "ga") print $(i+1)}')"
circdir="$maindir/circuits/$circuit"

# iterate over each approximate netlist
for netl in $(find $expdir/netlists/ -name "approx[0-9]*.sv" | sort -V); do
    echo $netl
    cp $netl hdl/top.v
    netl_id="${netl##*approx}"
    netl_id="${netl_id%.sv}"

    # get the chromosome from the the logfile of ga_pareto.py
    pareto_logfile=$(find $expdir -name "pareto*.log")  # or pareto_${exp_name}.log
    chromosome=( $(grep "Chromosome $netl_id:" $pareto_logfile | awk -F'[' '{print $NF}' | awk '{gsub("]", "", $0); gsub(" ", "", $0); print}' | awk -F',' '{for (i=1; i<=NF;i++) print $i}') )
    cfile=$circdir/top.c

    python3 $maindir/src/evaluation/create_c_approx_header.py \
        --results-dir $expdir/cfiles \
        --c-file $cfile \
        --ax-array "${chromosome[@]}" \
        --header-file approx${netl_id}.h

done