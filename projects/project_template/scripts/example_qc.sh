#!/bin/bash
# example_qc.sh
# Simple example of a quality control step for HTS data.
# This is a template only; adjust filenames and paths before use.

set -euo pipefail

# Directory containing FASTQ files (edit as needed)
READS_DIR="./data"
OUTPUT_DIR="./results/qc"

mkdir -p "$OUTPUT_DIR"

echo "Running FastQC on all FASTQ(.gz) files in: $READS_DIR"
fastqc "$READS_DIR"/*.fastq* -o "$OUTPUT_DIR"

echo "Summarizing reports with MultiQC..."
multiqc "$OUTPUT_DIR" -o "$OUTPUT_DIR"

echo "QC template finished. Review reports in: $OUTPUT_DIR"
