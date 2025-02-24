# !/bin/bash
set -eou pipefail
# set -x

which_circuits=${1?"Specify which circuits to evaluate. Options are: all, mul8u, add8u, add16u"}

mul8u=("mul8u_1JJQ" "mul8u_ZB3" "mul8u_4X5" "mul8u_DG8" "mul8u_GTR" "mul8u_L93" "mul8u_18UH" "mul8u_17MJ")
add8u=("add8u_1HG" "add8u_6PT" "add8u_6P8" "add8u_6SM" "add8u_6S4" "add8u_6R6" "add8u_0TP" "add8u_00M" "add8u_02Y")
add16u=("add16u_1A5" "add16u_0GN" "add16u_126" "add16u_0P8" "add16u_0HE" "add16u_07T" "add16u_0KU" "add16u_0SL" "add16u_067")

# circuits to evaluate
if [ $which_circuits == "all" ]; then
    circuits=(${mul8u[@]} ${add8u[@]} ${add16u[@]})
elif [ $which_circuits == "mul8u" ]; then
    circuits=(${mul8u[@]})
elif [ $which_circuits == "add8u" ]; then
    circuits=(${add8u[@]})
elif [ $which_circuits == "add16u" ]; then
    circuits=(${add16u[@]})
else
    echo "Invalid option for selecting circuits: $which_circuits. Options are: all, mul8u, add8u, add16u"
    exit 1
fi

libs=("asap7" "variability14" "fdsoi28" "nangate45")

maindir="$HOME/axcarbon"
top_design="top"
synclk="0"
num_inputs="10000"


for circuit in "${circuits[@]}"; do
    echo "Circuit: $circuit"
    circdir="$maindir/circuits/$circuit"
    mkdir -p $circdir
    mkdir -p $circdir/reports
    mkdir -p $circdir/netlists
    mkdir -p $circdir/errors

    # file where results will be gathered
    resfile="$maindir/circuits/$circuit/results.csv"
    if ! [ -f "$resfile" ]; then
        echo "CircuitName,Library,Synclk,Simclk,Area,Delay,Power,MED" > $resfile
    fi

    # download the circuit's Verilog file if it doesn't exist
    if ! [ -f "$circdir/top.v" ]; then
        python3 $maindir/src/misc/evoapprox.py \
            --mode download \
            --circuit $circuit \
            --output $circdir/top.v
    fi
    # create the inputs file if it doesn't exist
    if ! [ -f "$circdir/inputs.txt" ]; then
        python3 $maindir/src/misc/evoapprox.py \
            --mode inputs \
            --circuit $circuit \
            --num-inputs $num_inputs \
            --output $circdir/inputs.txt 
    fi
    # create the testbench file if it doesn't exist
    if ! [ -f "$circdir/tb.v" ]; then
        python3 $maindir/src/misc/evoapprox.py \
            --mode testbench \
            --circuit $circuit \
            --output $circdir/tb.v
    fi

    # run the evaluation for each library
    for libname in "${libs[@]}"; do
        
        # check if there are reports for the circuit
        mkdir -p $circdir/reports/$libname
        if ! [ -z "$( ls -A $circdir/reports/$libname )" ]; then
            echo "Reports already exist for circuit $circuit and library $libname"
            continue
        fi

        # create test directory
        mkdir -p $maindir/test/evoapprox
        testdir="$maindir/test/evoapprox/${circuit}_${libname}"
        if ! [ -d "$testdir" ]; then
            tar -xzvf $maindir/test/eval.tar.gz -C $maindir/test
            mv $maindir/test/eval $testdir
        fi

        # set up libraries
        delay_incr="0.1"
        if [[ $libname == "asap7" ]]; then
            libpath="$maindir/libs/asap7/db"
            libcpath="$maindir/libs/asap7/c"
            libverilog="$maindir/libs/asap7/verilog"
            lib="asap7.db"
            tunit="ps"
            delay_incr="100"
            if ! grep -q "set_dont_use {asap7" $testdir/scripts/synthesis.tcl; then
                sed -i "28i set_dont_use {asap7/FAxp33_ASAP7_6t_R}" $testdir/scripts/synthesis.tcl
            fi

        elif [[ $libname == "nangate45" ]]; then
            libpath="$maindir/libs/nangate45/db"
            libcpath="$maindir/libs/nangate45/c"
            libverilog="$maindir/libs/nangate45/verilog"
            lib="nangate45.db"
            tunit="ns"
        elif [[ $libname == "variability14" ]]; then
            libpath="$maindir/libs/variability14/db"
            libcpath="$maindir/libs/variability14/c"
            libverilog="$maindir/libs/variability14/verilog"
            lib="predicted_0.db"
            tunit="ns"
        elif [[ $libname == "fdsoi28" ]]; then
            libpath="$maindir/libs/fdsoi28/db"
            libcpath="$maindir/libs/fdsoi28/c"
            libverilog="$maindir/libs/fdsoi28/verilog"
            lib="28nm_FDSOI_0.9V_300K.db"
            tunit="ns"
        elif [[ $libname == "egfet" ]]; then
            libpath="$maindir/libs/egfet/db"
            libcpath="$maindir/libs/egfet/c"
            libverilog="$maindir/libs/egfet/verilog"
            lib="EGFET_1.0V_enabled.db"
            tunit="ns"
            delay_incr="100000"
        else
            echo "Invalid library option: ${libname}. Options are: asap7, variability14, fdsoi28, nangate45, egfet"
            exit 1
        fi

        # prepare testbench, inputs and true outputs for simulation
        cp $circdir/top.v $testdir/hdl/
        cp $circdir/tb.v $testdir/sim/top_tb.v
        awk -F'_' '{for (i=1; i<NF; i++) {printf("%s", $i); if(i<NF-1) printf("_")} printf("\n")}' $circdir/inputs.txt > $testdir/sim/inputs.txt
        awk -F'_' '{print $NF}' $circdir/inputs.txt > $testdir/sim/expected.txt
        num_inputs="$(wc -l $testdir/sim/inputs.txt | awk '{print $1}')"
        sed -i "/parameter NUM_INPUTS=/ c\parameter NUM_INPUTS=$num_inputs;" $testdir/sim/top_tb.v

        # setup environment
        sed -i "/ENV_LIBRARY_PATH=/ c\export ENV_LIBRARY_PATH=\"$libpath\"" $testdir/scripts/env.sh
        sed -i "/ENV_LIBRARY_DB=/ c\export ENV_LIBRARY_DB=\"$lib\"" $testdir/scripts/env.sh
        sed -i "/ENV_LIBRARY_VERILOG_PATH=/ c\export ENV_LIBRARY_VERILOG_PATH=\"$libverilog\"" $testdir/scripts/env.sh
        sed -i "/ENV_CLK_PERIOD=/ c\export ENV_CLK_PERIOD=\"$synclk\"" $testdir/scripts/env.sh

        # report files from synopsys tools
        area_rpt="$testdir/reports/${top_design}_${synclk}${tunit}.area.rpt"
        delay_rpt="$testdir/reports/${top_design}_${synclk}${tunit}.timing.pt.rpt"
        power_rpt="$testdir/reports/${top_design}_${synclk}${tunit}.power.ptpx.rpt"


        ################# Evaluation ######################

        cd $testdir

        # synthesis to get area
        make dcsyn
        if grep -qi "^error" $testdir/logs/dcsyn.log; then
            echo "Error: Synthesis failed for circuit $circuit"
            exit 1
        fi
        area="$(awk '/Total cell area/ {print $NF}' $area_rpt)"
        # Skip if area is zero
        if (( $(echo "$area == 0.0" | bc -l) )); then
            echo "Error: Area is zero for circuit $circuit"
            exit 1
        fi

        # STA to get delay
        make sta
        if grep -qi "^error" $testdir/logs/ptsta.log; then
            echo "Error: STA failed for circuit $circuit"
            exit 1
        fi
        delay="$(grep "data arrival time" $delay_rpt | awk 'NR==1 {print $NF}')"

        # rtl simulations to get the expected outputs
        rm -rf work_lib
        make rtl_sim
        if grep -qi "^error" $testdir/logs/sim.log; then
            echo "Error: RTL simulation failed for circuit $circuit"
            exit 1
        fi
        mv $testdir/sim/output.txt $testdir/sim/expected.txt

        simclk="$delay"
        while true; do
            sed -i "/parameter PERIOD=/ c\parameter PERIOD=$simclk;" $testdir/sim/top_tb.v

            # gate level simulation to get errors
            rm -rf work_gate_lib
            rm -rf gate_simv.daidir
            make gate_sim
            python3 $maindir/src/misc/evoapprox.py \
                --mode errors \
                --circuit $circuit \
                --output $testdir/sim/output.txt \
                --expected $testdir/sim/expected.txt 2>&1 | tee $circdir/errors/$libname.txt
            med="$(awk '/^MED:/ {print $NF}' $circdir/errors/$libname.txt)"

            if [ 1 -eq "$(awk -v e=$med 'BEGIN {if (e>0) print "1"; else print "0"}')" ]; then
                # increment the simulation clock period to avoid timing errors
                simclk="$(awk -v d=$simclk -v incr=$delay_incr 'BEGIN {print d+incr}' | awk '{printf "%.2f\n", $1}')"
            else
                # break only if the error is zero
                break
            fi
        done



        # get power
        make power
        power="$(awk '/Total Power/ {print $4}' $power_rpt)"

        # write the results
        echo -e "$circuit,$libname,$synclk,$simclk,$area,$delay,$power,$med" >> $resfile

        # move reports to the appropriate directory
        mv $area_rpt $circdir/reports/$libname
        mv $delay_rpt $circdir/reports/$libname
        mv $power_rpt $circdir/reports/$libname
        mv $testdir/gate/top.v $circdir/netlists/${libname}.v

    done
done
