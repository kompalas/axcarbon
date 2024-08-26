#!/bin/bash
#
# To automate which to include:
# cat ./lab4/.synopsys_dc.setup
# set target_library {/usr/local/eda/synLibs/asap7/7nm/db/asap7.db}
# set link_library {* /usr/local/eda/synLibs/asap7/7nm/db/asap7.db}
# 
# To include:
# AO_RVT_TT_HTML_210930
# INVBUF_RVT_TT_HTML_210930
# OA_RVT_FF_HTML_210930
# CKINVDC_RVT_TT_HTML_210930
# SEQ_RVT_TT_HTML_210930:
#    DFFARHQNX1_ASAP7_6T_R
#    DFFHQNX1_ASAP7_6T_R
#    DFFHQNX2_ASAP7_6T_R
# SIMPLE_RVT_TT_HTML_210930:
#    όλες εκτός από: 
#    FAXP33_ASAP7_6T_R.html
#    HAXP5_ASAP7_6T_R.html
#    MAJIXP5_ASAP7_6T_R.html
#    MAJX1_ASAP7_6T_R.html
#    MAJX2_ASAP7_6T_R.html
#    MAJX3_ASAP7_6T_R.html


set -eo pipefail

asap7_repo="https://github.com/The-OpenROAD-Project/asap7sc6t_26.git"
patters_to_match=( "_TT_" "_RVT_" "_ccs_" "INV")
extension="v"  # lib, lib.7z or v

# Uncomment if the repo is cloned already
# git clone $asap7_repo
# repo_dir=$(basename "$asap7_repo" .git)
# cd $repo_dir

repo_dirname=$(basename "$asap7_repo" .git)
repo_dir=$(find . -type d -name $repo_dirname)
matching_files=($(find $repo_dir -name "*${patters_to_match[0]}*$extension"))

# extract the files that match all the patterns
for pattern in "${patters_to_match[@]:1}"; do
    matching_files=($(printf '%s\n' "${matching_files[@]}" | grep ".*${pattern}.*$extension"))
done

# extract files
for file in "${matching_files[@]}"; do

    if echo $extension | grep -q "lib"; then
        if [[ $extension == "lib.7z" ]]; then 
            # extract the file
            7z x $file
            extracted_file_name=$(basename "$file" .7z)
            extracted_file="./$extracted_file_name"
        else
            extracted_file_name=$(basename "$file")
            extracted_file="$repo_dir/lib_files/$extracted_file_name"  
        fi

        # append the extracted file to the merged file
        if [[ $file == "${matching_files[0]}" ]]; then
            # replace the library definition with 'asap7' and remove last bracket
            sed -e '/^\s*library (/ c\library (asap7) {' -e '/^}/ d' $file > $repo_dir/asap7_merged.lib
        else
            # remove the initial comments and remove last bracket
            # sed -e '/^[/][*]/,/[*][/]/ d' -e '/^\s*library (/ d' -e '/^}/ d' $extracted_file >> $repo_dir/asap7_merged.lib
            awk 'BEGIN {to_print=0} /cell [(]/ {to_print=1} /^}/ {to_print=0} {if(to_print==1) print}' $extracted_file >> $repo_dir/asap7_merged.lib
        fi
        if [[ $file == "${matching_files[-1]}" ]]; then
            # close the opening bracket
            echo "}" >> $repo_dir/asap7_merged.lib
        fi

        # move the extracted file to the lib_files directory
        mkdir -p $repo_dir/lib_files
        if [ ! -f $repo_dir/lib_files/$extracted_file_name ]; then
            mv $extracted_file $repo_dir/lib_files
        fi

    elif [[ $extension == "v" ]]; then
        echo "Reading $file"        
        # remove the previous merged file
        if [[ $file == "${matching_files[0]}" ]]; then
            rm -f $repo_dir/asap7_merged.v
        fi
        # read the file and append it to the merged verilog file
        cat $file >> $repo_dir/asap7_merged.v
    else 
        echo "Extension $extension not supported"
        exit 1
    fi

done
