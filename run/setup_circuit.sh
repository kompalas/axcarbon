#!/usr/bin/bash
# Use circuit as the first argument and an integer of bits for every input after that
# example usage: ./setup_circuit.sh mult8 8 8

set -euo pipefail
set -x

circuit=${1?"Specify the circuit as first positional argument"}
library=${2?"Specify the library as the second positional argument"}
# if inputs already exist, leave the second positional argument unset
inputs_exist=${3:-"True"}

maindir="$HOME/axcarbon"
circdir="$maindir/circuits/$circuit"

enable_safety_bits="0"
safety_bits="1"

mkdir -p $maindir/hdl
mkdir -p $maindir/sim

# get rtl description and synthesize design
cp $circdir/top.v hdl/

# create initial inputs file, if input bitwidth is specified
if [[ ! "$inputs_exist" == "True" ]]; then
    bits_num=$(($#-2))

    safety_bits_array=()
    for ((i=0; i<$bits_num; i++)); do
        if [[ "$enable_safety_bits" == "1" ]]; then
            safety_bits_array+=($safety_bits)
        else
            safety_bits_array+=("0")
        fi
    done

    # size of input dataset
    num_inputs_optim="100000"
    num_inputs_eval="1000000"

    # check if inputs are supposed to be signed numbers
    if grep -q "input signed" ./hdl/top.v; then
        signed="--signed"
    else
        signed=""
    fi

    # generate inputs for optimization dataset
    python3 $maindir/src/create_inputs.py \
        --num-inputs $num_inputs_optim \
        --deterministic \
        --type binary \
        --separator underscore \
        --bits ${@:3:$bits_num} \
        --safety-bits ${safety_bits_array[@]} \
        --out-file sim/inputs.txt \
        $signed

    cp $circdir/tb.v sim/top_tb.v
    simclk="10.0"
    sed -i "/parameter PERIOD=/ c\parameter PERIOD=$simclk;" ./sim/top_tb.v

    # rtl simulation to record output
    rm -rf work_lib/
    rm -rf rtl_simv.daidir/
    sed -i "/parameter NUM_INPUTS=/ c\parameter NUM_INPUTS=$num_inputs_optim;" sim/top_tb.v
    make rtl_sim
    paste -d"_" sim/inputs.txt sim/output.txt > $circdir/inputs.txt

    # convert inputs to their decimal values
    python3 $maindir/src/utils.py \
        --input-binary-file $circdir/inputs.txt \
        --output-decimal-file $circdir/inputs_decimal.txt \
        --input-separator underscore \
        --output-separator underscore

    # generate inputs for evaluation
    python3 $maindir/src/create_inputs.py \
        --num-inputs $num_inputs_eval \
        --deterministic \
        --type binary \
        --separator underscore \
        --bits ${@:3:$bits_num} \
        --safety-bits ${safety_bits_array[@]} \
        --out-file sim/inputs.txt \
        $signed

    rm -rf work_lib/
    rm -rf rtl_simv.daidir/
    sed -i "/parameter NUM_INPUTS=/ c\parameter NUM_INPUTS=$num_inputs_eval;" sim/top_tb.v
    make rtl_sim
    paste -d"_" sim/inputs.txt sim/output.txt > $circdir/inputs_eval.txt

    # convert inputs to their decimal values
    python3 $maindir/src/utils.py \
        --input-binary-file $circdir/inputs_eval.txt \
        --output-decimal-file $circdir/inputs_eval_decimal.txt \
        --input-separator underscore \
        --output-separator underscore

fi

# get baseline measurements for the circuit
source $maindir/run/baseline_eval.sh $circuit $library

# save netlist
cp $maindir/gate/top.v $circdir/top.sv

# get delay annotations from sta delay report
delay_rpt="$maindir/reports/${top_design}_${synclk}${tunit}.delay_calc.pt.rpt"
if ! [ -f "$delay_rpt" ]; then
    echo "Perform STA with delay calculation to annotate gates. Exiting..."
    exit 1
fi
if grep -qi "error" $delay_rpt; then
    echo "Errors found in delay calculation. Cannot proceed. Exiting..."
    exit 1
fi

# annotate each gate with the delay calculation report
source $maindir/src/bash/annotate_gates.sh $circuit $delay_rpt

# get delay stats if test folder is not used. Decided by user input
# while :
# do
#     read -p "Ready to extract delay stats? (Y/N) : " -N 1 -t 120 input
#     echo ""

#     case $input in
#         # execute test to extract delay stats from 500 approximate netlists
#         [yY]*)
            cd $maindir/test/cp_delay_stats
            rm -f $circdir/gate_delay_stats.pkl
            ./run.sh $circuit 100 $library
#             break
#             ;;

#         # abort executing the test
#         [nN]*)
#             echo "Test aborted. Please remember to extract delay stats later."
#             break
#             ;;

#         # continue to ask for a valid input
#         *) echo "Invalid input. Please enter Y/y or N/n"
#             ;;
#     esac
# done


