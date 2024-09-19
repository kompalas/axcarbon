#!/bin/bash
# Extract GA results to approximate netlists

set -eou pipefail
set -x

expdir=${1?"Specify the directory at which GA results are stored"}
library=${2:--"asap7"}
which_gen="${3:--1}"

maindir="$HOME/axcarbon"
top_design="top"
get_error_from="gate_level_simulations_ieee754"  # options: gate_level_simulations, c_simulations, gate_level_simulations_ieee754
use_eval_inputs="true"  # if "true", the evaluation inputs will be used (instead of the ones used during optimization) 


############## Test Directory ###################

mkdir -p $maindir/test
testdir="$maindir/test/$(basename $expdir)"
if ! [ -d "$testdir" ]; then
    tar -xzvf $maindir/test/eval.tar.gz -C $maindir/test
    mv $maindir/test/eval $testdir
fi
# exit 0

############## Custom Functions ###################

function getBaselineMeasurement {
    circuit="$1"
    measurement="$2"
    bl_file="$maindir/results/baseline/${circuit}.txt"
    awk -F"\t" -v m="$measurement" 'NR==1 {for (i=1; i<=NF; i++) if ($i==m) foi=i;} NR==2 {print $foi}' $bl_file
}
function getErrorRate() {
    paste $testdir/sim/expected.txt  $testdir/sim/output.txt | \
    perl -pe 's/\b[01]+\b/oct "0b" . $&/ge' | \
    awk '
    BEGIN {
        errors = 0;
    } {
        if ($1 ~ /x/ || $2 ~ /x/) next;
        if ($1 != $2) {
            errors++; 
        }
    }
    END {
        printf "%.3e\n", errors/NR
    }'
}
function getMRE() {
    paste $testdir/sim/expected.txt  $testdir/sim/output.txt | \
    perl -pe 's/\b[01]+\b/oct "0b" . $&/ge' | \
    awk '
    BEGIN {
        mre = 0;
    } {
        if ($1 ~ /x/ || $2 ~ /x/) next;
        if ($1 != $2) {
            diff = $1 - $2;
            if (diff < 0)
                diff = -diff;
            if ($1 < 0)
                mre += diff/(-$1);
            else if ($1 > 0)
                mre += diff/$1;
        }
    }
    END {
        printf "%.3e\n", mre/NR
    }'
}
function getMED() {
    paste $testdir/sim/expected.txt  $testdir/sim/output.txt | \
    perl -pe 's/\b[01]+\b/oct "0b" . $&/ge' | \
    awk '
    BEGIN {
        sum=0;
    } {
        if ($1 ~ /x/ || $2 ~ /x/) next;
        diff = $1 - $2;
        if (diff < 0) {
            diff = -diff;
        }
        sum = sum + diff;
    } 
    END {
        printf "%.3e\n", sum/NR
    }'
}
function getMinError() {
    paste $testdir/sim/expected.txt  $testdir/sim/output.txt | \
    perl -pe 's/\b[01]+\b/oct "0b" . $&/ge' | \
    awk '
    BEGIN {
        min_error = 10^5;
    } {
        if ($1 ~ /x/ || $2 ~ /x/) next;
        if ($1 != $2) {
            diff = $1 - $2;
            if (diff < 0)
                diff = -diff;
            if (diff < min_error)
                min_error = diff;
        }
        else {
            min_error = 0;
        }
    }
    END {
        printf "%.3e\n", min_error
    }'
}
function getMaxError() {
    paste $testdir/sim/expected.txt  $testdir/sim/output.txt | \
    perl -pe 's/\b[01]+\b/oct "0b" . $&/ge' | \
    awk '
    BEGIN {
        max_error = 0;
    } {
        if ($1 ~ /x/ || $2 ~ /x/) next;
        if ($1 != $2) {
            diff = $1 - $2; 
            if (diff < 0)
                diff = -diff;
            if (diff > max_error)
                max_error = diff;
        }
    }
    END {
        printf "%.3e\n", max_error
    }'
}
function getErrorVariance() {
    paste $testdir/sim/expected.txt $testdir/sim/output.txt | \
    perl -pe 's/\b[01]+\b/oct "0b" . $&/ge' | \
    awk '
    BEGIN {
        sum = 0;
        sum_squared = 0;
        count = 0;
    } 
    {
        if ($1 ~ /x/ || $2 ~ /x/) next;
        count++;
        diff = $1 - $2;
        if (diff < 0) {
            diff = -diff;
        }
        sum += diff;
        sum_squared += diff * diff;
    } 
    END {
        if (count > 0) {
            mean = sum / count;
            variance = (sum_squared / count) - (mean * mean);
            printf "%.3e\n", variance;
        } else {
            print "0.000e+00";
        }
    }'
}


################# Setup ######################

# get full path of the experiment directory
# NOTE: This is specific for Linux with GNU readlink
expdir="$(readlink -f $expdir)"
# if the last character of expdir is a slash, remove it
if [[ ${expdir: -1} == "/" ]]; then
    len=$((${#expdir}-1))
    expdir=${expdir:0:$len}
fi
exp_name="${expdir##*/}"
# figure out circuit name from current directory
circuit="$(echo $expdir | awk -F'_' '{for (i=1; i<=NF; i++) if ($i ~ "ga") print $(i+1)}')"
circdir="$maindir/circuits/$circuit"

# results directory and file
mkdir -p $expdir/reports
mkdir -p $expdir/netlists
mkdir -p $expdir/gate
resfile="$expdir/eval_results.csv"
if [[ ! -f $resfile ]]; then
echo "NetlID,Lib,SynClk,SimClk,Area,Delay,Power,ErrorRate,MRE,MED,NMED,MinError,MaxError,ErrorRange,Variance" > $resfile
fi

# set up libraries
if [[ $library == "asap7" ]]; then
    libpath="$maindir/libs/asap7/db"
    libverilog="$maindir/libs/asap7/verilog"
    lib="asap7.db"
    tunit="ps"
elif [[ $library == "nangate45" ]]; then
    libpath="$maindir/libs/nangate45/db"
    libverilog="$maindir/libs/nangate45/verilog"
    lib="nangate45.db"
    tunit="ns"
elif [[ $library == "variability14" ]]; then
    libpath="$maindir/libs/variability14/db"
    libverilog="$maindir/libs/variability14/verilog"
    lib="predicted_0.db"
    tunit="ns"
elif [[ $library == "fdsoi28" ]]; then
    libpath="$maindir/libs/fdsoi28/db"
    libcpath="$maindir/libs/fdsoi28/c"
    libverilog="$maindir/libs/fdsoi28/verilog"
    lib="28nm_FDSOI_0.9V_300K.db"
    tunit="ns"
else
    echo "Invalid library option. Options are: asap7, variability14, fdsoi28, nangate45"
    exit 1
fi
# copy library c files into the libs/ directory
cp $maindir/libs/$library/c/library* $maindir/libs/
rm -f $maindir/libs/library.o $maindir/libs/_library.so

# prepare testbench, inputs and true outputs for simulation
cp $circdir/tb.v $testdir/sim/top_tb.v
if [[ "$use_eval_inputs" == "true" ]]; then
    suffix="_eval"
else
    suffix=""
fi
simclk="$(getBaselineMeasurement $circuit Delay)"
awk -F'_' '{for (i=1; i<NF; i++) {printf("%s", $i); if(i<NF-1) printf("_")} printf("\n")}' $circdir/inputs${suffix}.txt > $testdir/sim/inputs.txt
awk -F'_' '{print $NF}' $circdir/inputs${suffix}.txt > $testdir/sim/expected.txt
sed -i "/parameter PERIOD=/ c\parameter PERIOD=$simclk;" $testdir/sim/top_tb.v
num_inputs="$(wc -l $testdir/sim/inputs.txt | awk '{print $1}')"
sed -i "/parameter NUM_INPUTS=/ c\parameter NUM_INPUTS=$num_inputs;" $testdir/sim/top_tb.v

# setup environment
synclk="$(getBaselineMeasurement $circuit SynClk)"
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

# extract the baseline measurements
bl_area="$(getBaselineMeasurement $circuit Area)"
bl_delay="$(getBaselineMeasurement $circuit Delay)"
bl_power="$(getBaselineMeasurement $circuit Power)"
echo "-1,$library,$synclk,$simclk,$bl_area,$bl_delay,$bl_power,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0" >> $resfile

# get the error and hardware metrics from the logfile
exp_logfile=$(find $expdir -name "ga*.log")  # or pareto_${exp_name}.log
hw_metric="$(grep -oP "(?<=hw_metric': <HW_Metric.)[^:]*" "$exp_logfile" | tr '[:upper:]' '[:lower:]')"
error_metric="$(grep -oP "(?<=error_metric': <ErrorMetric.)[^:]*" "$exp_logfile" | tr '[:upper:]' '[:lower:]')"

# create approximate netlists from GA results and evaluate them
python3 $maindir/src/evaluation/ga_pareto.py \
    --experiment $expdir \
    --results-directory $expdir/netlists \
    --generation $which_gen

# iterate over each approximate netlist
for netl in $(find $expdir/netlists/ -name "approx[0-9]*.sv" | sort -V); do
    echo $netl
    cp $netl hdl/top.v
    netl_id="${netl##*approx}"
    netl_id="${netl_id%.sv}"

    # synthesis to get area
    make dcsyn
    if grep -qi "^error" $testdir/logs/dcsyn.log; then
        echo "Error: Synthesis failed"
        exit 1
    fi
    area="$(awk '/Total cell area/ {print $NF}' $area_rpt)"

    # STA to get delay
    make sta
    if grep -qi "^error" $testdir/logs/ptsta.log; then
        echo "Error: STA failed"
        exit 1
    fi
    delay="$(grep "data arrival time" $delay_rpt | awk 'NR==1 {print $NF}')"

    # gate level simulation to get errors
    rm -rf work_gate_lib
    rm -rf gate_simv.daidir
    rm -rf tech_lib/
    make gate_sim

    if [[ "$get_error_from" == "gate_level_simulations" ]]; then
        # get error measurements from gate level simulations
        error_rate="$(getErrorRate)"
        mre="$(getMRE)"
        med="$(getMED)"
        if grep -q "parameter OUT_WIDTH" $testdir/sim/top_tb.v; then
            p="OUT_WIDTH"
        elif grep -q "parameter outwidth" $testdir/sim/top_tb.v; then
            p="outwidth"
        elif grep -q "parameter BIT_WIDTH" $testdir/sim/top_tb.v; then
            p="BIT_WIDTH"
        else
            echo "Error: Could not find the output width parameter in the testbench"
            exit 1
        fi
        outwidth="$(grep "parameter $p" $testdir/sim/top_tb.v | awk -F'=' '{gsub(";", "", $NF); print $NF*1}')"
        nmed="$(awk -v a=$med -v b=$outwidth 'BEGIN {printf "%.3e", a/(2**b)}')"
        min_error="$(getMinError)"
        max_error="$(getMaxError)"
        range="$(awk -v max=$max_error -v min=$min_error 'BEGIN {printf "%.3e", max-min}')"
        variance="$(getErrorVariance)"

    elif [[ "$get_error_from" == "c_simulations" ]]; then
        
        # get error measurements from C simulations
        # get the chromosome from the the logfile of ga_pareto.py
        pareto_logfile=$(find $expdir -name "pareto*.log")  # or pareto_${exp_name}.log
        chromosome=( $(grep "Chromosome $netl_id:" $pareto_logfile | awk -F'[' '{print $NF}' | awk '{gsub("]", "", $0); gsub(" ", "", $0); print}' | awk -F',' '{for (i=1; i<=NF;i++) print $i}') )

        cfile=$circdir/top.c
        ofile=$circdir/top
        # change void main to int main, so that it returns 0
        if grep -q "void main" $cfile; then
            sed -i 's/void main/int main/' $cfile
            sed -zE '$ s/(.*)}/\1\treturn 0;\n}/' $cfile > tmp && mv tmp $cfile
        fi

        # compile the C netlist and execute using the chromosome as arguments
        gcc -I${maindir}/libs ${maindir}/libs/library.c $cfile -o $ofile
        $ofile ${chromosome[@]} &> $testdir/tmp

        # get error measurements from the output
        error_rate="$(awk '/Error Rate:/ {print $NF}' tmp)"
        mre="$(awk '/MRE:/ {print $NF}' tmp)"
        med="$(awk '/^MED:/ {print $NF}' tmp)"
        nmed="$(awk '/NMED:/ {print $NF}' tmp)"
        min_error="$(awk '/Min Error:/ {print $NF}' tmp)"
        max_error="$(awk '/Max Error:/ {print $NF}' tmp)"
        range="$(awk -v max=$max_error -v min=$min_error 'BEGIN {printf "%.3e", max-min}')"
        variance="$(awk '/Variance:/ {print $NF}' tmp)"
        # clean up
        rm -f $testdir/tmp
        rm -f $ofile

    elif [[ "$get_error_from" == "gate_level_simulations_ieee754" ]]; then

        # get the FP format
        bits="$(grep "parameter BIT_WIDTH" $testdir/sim/top_tb.v | awk -F'=' '{gsub(";", "", $NF); print $NF*1}')"
        if [[ $bits -eq 32 ]]; then
            format="FP32"
        elif [[ $bits -eq 16 ]]; then
            format="bfloat16"
        else
            echo "Error: Unsupported bit width: $bits"
            exit 1
        fi

        # convert outputs and expected outputs to IEEE754 format
        python3 $maindir/src/evaluation/convert_ieee754.py \
            --format $format \
            --input-file $testdir/sim/output.txt \
            --output-file $testdir/sim/output_ieee754.txt
        python3 $maindir/src/evaluation/convert_ieee754.py \
            --format $format \
            --input-file $testdir/sim/expected.txt \
            --output-file $testdir/sim/expected_ieee754.txt

        # get the output width
        if grep -q "parameter OUT_WIDTH" $testdir/sim/top_tb.v; then
            p="OUT_WIDTH"
        elif grep -q "parameter outwidth" $testdir/sim/top_tb.v; then
            p="outwidth"
        elif grep -q "parameter BIT_WIDTH" $testdir/sim/top_tb.v; then
            p="BIT_WIDTH"
        else
            echo "Error: Could not find the output width parameter in the testbench"
            exit 1
        fi
        outwidth="$(grep "parameter $p" $testdir/sim/top_tb.v | awk -F'=' '{gsub(";", "", $NF); print $NF*1}')"

        # get error measurements from the output
        python3 $maindir/src/evaluation/errors.py \
            --output-file $testdir/sim/output_ieee754.txt \
            --expected-file $testdir/sim/expected_ieee754.txt \
            --output-width $outwidth 2>&1 | tee $expdir/errors_${netl_id}.txt

        error_rate="$(awk '/Error Rate:/ {print $NF}' $expdir/errors_${netl_id}.txt)"
        mre="$(awk '/MRE:/ {print $NF}' $expdir/errors_${netl_id}.txt)"
        med="$(awk '/^MED:/ {print $NF}' $expdir/errors_${netl_id}.txt)"
        nmed="$(awk '/NMED:/ {print $NF}' $expdir/errors_${netl_id}.txt)"
        min_error="$(awk '/Min Error:/ {print $NF}' $expdir/errors_${netl_id}.txt)"
        max_error="$(awk '/Max Error:/ {print $NF}' $expdir/errors_${netl_id}.txt)"
        range="$(awk -v max=$max_error -v min=$min_error 'BEGIN {printf "%.3e", max-min}')"
        variance="$(awk '/Variance:/ {print $NF}' $expdir/errors_${netl_id}.txt)"

    else
        echo "Wrong variable: get_error_from is set to $get_error_from. Options are: gate_level_simulations, c_simulations, c_simulations_ieee754"
        exit 1
    fi

    # get power
    make power
    power="$(awk '/Total Power/ {print $4}' $power_rpt)"

    # write the results
    echo -e "$netl_id,$library,$synclk,$simclk,$area,$delay,$power,$error_rate,$mre,$med,$nmed,$min_error,$max_error,$range,$variance" >> $resfile

    # move reports to the appropriate directory
    rm -rf $expdir/reports/approx${netl_id}
    mv $testdir/reports $expdir/reports/approx${netl_id}
    # move netlist to the appropriate directory
    rm -rf $expdir/gate/approx${netl_id}
    mv $testdir/gate $expdir/gate/approx${netl_id}

done

# filter the pareto front and save to another csv file
python3 $maindir/src/evaluation/filter_pareto_csv.py \
    --input-csv-file $resfile \
    --hw-metric $hw_metric \
    --error-metric $error_metric
