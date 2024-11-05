#!/bin/bash
# set -eou pipefail
# set -x

for i in $(seq 2 8); do

    for j in $(seq 1 3); do

        # ./run/setup_circuit.sh mult_int${i}b_egfet_${j} egfet null $i
        # ./run/ga.sh mult_int${i}b_egfet_${j} egfet
        logdir="$(find saved_logs/egfet -type d -name "*ga_mult_int${i}b_egfet_${j}*" | sort -rV | head -n 1)"
        echo ga_mult_int${i}b_egfet_${j}
        ls -la $logdir/netlists/ | wc -l
        tail $logdir/eval_results.csv
        echo -e "\n"

    done

done