#!/bin/bash
# template_alignment.sh
# Generic alignment template for plant virology workflows.
# Edit reference and input/output paths before use.

set -euo pipefail

REFERENCE="./reference/reference.fasta"
READS="./data/reads.fastq.gz"
OUTPUT_BAM="./results/mapping/aligned.sorted.bam"

mkdir -p "$(dirname "$OUTPUT_BAM")"

echo "Indexing reference (if needed)..."
bwa index "$REFERENCE"

echo "Aligning reads..."
bwa mem "$REFERENCE" "$READS" | samtools view -bS - | samtools sort -o "$OUTPUT_BAM"

echo "Indexing BAM..."
samtools index "$OUTPUT_BAM"

echo "Done. BAM file: $OUTPUT_BAM"
