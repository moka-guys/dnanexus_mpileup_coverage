# dnanexus_mpileup_coverage v1.0
## What does this app do?
This app takes a mpileup file, produced whilst creating varscan and a BED file.
For each region in the BED file the mpileup is parsed base by base. If a single base in the region is below the specified cut off the amplicon is marked as having insufficient coverage.

## What are typical use cases for this app?
Determine the coverage as utilised by Varscan2.

## What inputs are required for this app to run?
- mpileup file  - this should apply the same filters as those applied by Varscan
- BED file - sambamba format BED file
- coverage level - an integer defining the minimum required coverage for an amplicon to pass QC.

## How does this app work?
The app uses the script found in https://github.com/moka-guys/mpileup_coverage.

This repo is cloned at tag v1.0

## What does this app output?
A coverage report describing the amplicons which are not covered entirely at the required depth. 
