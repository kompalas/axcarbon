#!/bin/bash

set -eou pipefail
set -x

circuits=("mult_uint8b_7nm" "mult_uint8b_14nm" "mult_uint8b_28nm" "mult_uint8b_45nm")
libraries=("asap7" "variability14" "fdsoi28" "nangate45")
inputs="8 8"


for i in "${!circuits[@]}"; do
    circuit="${circuits[$i]}"
    library="${libraries[$i]}"

    if [ $i -ne 0 ]; then
        mkdir -p circuits/$circuit
        cp circuits/${circuits[0]}/top.v circuits/${circuits[0]}/tb.v circuits/$circuit/
    fi

    ./run/setup_circuit.sh $circuit $library null $inputs
    ./run/ga.sh $circuit $library
    logdir="$(find logs/ -type d -name "*ga_${circuit}*" | sort -rV | head -n 1)"
    ./run/get_results.sh $logdir $library
    ./src/bash/create_c_approx_header.sh $logdir
    cp -r $logdir saved_logs/intmult/

done