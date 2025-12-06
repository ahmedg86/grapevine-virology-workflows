#!/bin/bash
# example_qc.sh
# General template for running FastQC and MultiQC on FASTQ files in a project.
# Adjust paths and filenames before real use.

set -euo pipefail

READS_DIR="./data"
OUTPUT_DIR="./results/qc"

mkdir -p "$OUTPUT_DIR"

echo "Running FastQC on all FASTQ(.gz) files in: $READS_DIR"
fastqc "$READS_DIR"/*.fastq* -o "$OUTPUT_DIR"

echo "Summarizing reports with MultiQC..."
multiqc "$OUTPUT_DIR" -o "$OUTPUT_DIR"

echo "QC template finished. Review reports in: $OUTPUT_DIR"
