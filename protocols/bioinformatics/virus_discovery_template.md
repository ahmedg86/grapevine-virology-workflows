# Virus Discovery Workflow (Template)

This document outlines a generic virus discovery workflow using high-throughput sequencing (HTS) data. It is a **template** and does not include project-specific or unpublished information.

---

## 1. Input Data

- Raw HTS reads (e.g., Illumina paired-end)
- Associated metadata (sample IDs, extraction method, library type)

---

## 2. Quality Control

- Run FastQC on raw reads
- Aggregate reports with MultiQC
- Inspect per-base quality, adapter content, and overrepresented sequences

---

## 3. Trimming and Filtering

- Remove adapters (e.g., Cutadapt or Trimmomatic)
- Filter low-quality bases/reads
- Optionally remove very short reads

---

## 4. Host Subtraction (Optional)

- Map reads to host genome or reference (e.g., *Vitis* genome)
- Retain unmapped reads as potential non-host (viral, microbial, environmental) fraction

---

## 5. De Novo Assembly

- Assemble remaining reads into contigs (e.g., SPAdes or similar)
- Filter contigs by length and coverage thresholds

---

## 6. Similarity Search

- Screen contigs against viral reference databases (e.g., NCBI RefSeq viruses)
- Use nucleotide and/or protein-level searches (BLASTn, DIAMOND, etc.)

---

## 7. Genome Curation

- Map reads back to selected viral contigs
- Inspect coverage and potential variants
- Manually review key regions in a genome viewer (e.g., IGV)

---

## 8. Reporting

- Summarize candidate viral sequences
- Document coverage, identity, and reference sequences used for comparison
- Record software versions and parameters for reproducibility

---

This template is intended for academic workflow organization only. No raw data or unpublished analysis is included.
