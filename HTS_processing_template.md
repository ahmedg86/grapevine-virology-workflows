# HTS Data Processing Workflow (General Template)

This document outlines a generalized workflow for processing high-throughput sequencing (HTS) data commonly used in plant virology and molecular biotechnology research. It is intended as a methodological template and contains no project-specific or unpublished information.

---

## 1. Quality Assessment
**Tools:** FastQC, MultiQC  
- Evaluate raw read quality  
- Check base content, adapters, overrepresented sequences  

**Command example (template only):**
```bash
fastqc *.fastq.gz
multiqc .
