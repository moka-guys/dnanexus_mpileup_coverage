#!/bin/bash

# The following line causes bash to exit at any point if there is any error
# and to output each line as it is executed -- useful for debugging
set -e -x -o pipefail

# Make output folder
mkdir -p ~/out/coverage_report/coverage/varscan_coverage

# Download inputs
dx-download-all-inputs --parallel

# Run Python script
python mpileup_coverage/mpileup_coverage.py -b $bed_file_path -m $mpileup_file_path -c $min_coverage -o out/coverage_report/coverage/varscan_coverage/$mpileup_file_name.coverage_report.txt

# upload output
dx-upload-all-outputs --parallel