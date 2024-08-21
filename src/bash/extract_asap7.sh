#!/bin/bash
set -eo pipefail

asap7_repo="https://github.com/The-OpenROAD-Project/asap7sc6t_26.git"
patters_to_match=( "_TT_" "_RVT_")
# extension="lib.7z"
extension="v"

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
    if [[ $extension == "lib.7z" ]]; then
        # remove the previous merged file
        if [[ $file == "${matching_files[0]}" ]]; then
            rm -f $repo_dir/asap7_merged.lib
        fi
        # extract the file
        7z x $file
        extracted_file=$(basename "$file" .7z)
        # append the extracted file to the merged file
        cat ./$extracted_file >> $repo_dir/asap7_merged.lib
        # move the extracted file to the lib_files directory
        mkdir -p $repo_dir/lib_files
        mv $extracted_file $repo_dir/lib_files

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
