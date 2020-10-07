#!/bin/bash

# The following line causes bash to exit at any point if there is any error
# and to output each line as it is executed -- useful for debugging
set -e -x -o pipefail

# Make output folder
mkdir -p ~/out/coverage_report/coverage/varscan_coverage

# Download inputs
dx-download-all-inputs --parallel
# loop through array of all mpileup files. 
for (( i=0; i<${#mpileup_file_path[@]}; i++ )); 
    # Run Python script
    do python mpileup_coverage/mpileup_coverage.py -b $bed_file_path -m ${mpileup_file_path[$i]} -c $min_coverage -o out/coverage_report/coverage/varscan_coverage/${mpileup_file_name[$i]}.coverage_report.txt
done

# upload output
dx-upload-all-outputs --parallel