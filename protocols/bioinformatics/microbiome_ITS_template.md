# ITS Fungal Microbiome Workflow (Template)

This document outlines a generic ITS workflow for fungal community analysis in plant- or soil-associated systems. It is for organizational and methodological framing only.

---

## 1. Input

- ITS amplicon reads (paired-end recommended)
- Metadata with sample descriptors and experimental factors

---

## 2. Quality Control

- Examine read quality with FastQC
- Use MultiQC to summarize across samples

---

## 3. Primer and Adapter Removal

- Remove ITS primers and adapters carefully
- Ensure correct orientation and length cutoffs

---

## 4. Denoising and ASV Inference

- Apply a denoising method suitable for ITS (e.g., DADA2 with ITS parameters)
- Remove chimeric sequences
- Retain ASVs for downstream analysis

---

## 5. Taxonomy and Functional Annotation

- Assign taxonomy using an ITS-specific reference database
- Optionally annotate ecological guilds or functional groups (e.g., using external tools)

---

## 6. Community Analysis

- Generate diversity metrics
- Visualize community structure (ordination, composition)
- Explore relationships with environmental variables or host phenotypes

---

The workflow is presented in general terms to support reproducible fungal microbiome analysis without exposing any project-specific data.
