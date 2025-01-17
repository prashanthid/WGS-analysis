# Bulk WGS data analysis
This repository contains a comprehensive collection of Whole Genome Sequencing (WGS) data analysis algorithms and pipelines. Each tool has been curated to support various aspects of genomic analysis workflows.

## Available Resources

### Quality Control
- **FastQC**
  - Quality control checks on raw sequence data
  - [Source](https://github.com/s-andrews/FastQC)

### Alignment
- **BWA-MEM2**
  - Fast and accurate read alignment
  - [Source](https://github.com/bwa-mem2/bwa-mem2)

### Somatic SNV/INDEL detection
- **Strelka2**
  - Fast and accurate detection of somatic SNVs and INDELs
  - [Source](https://github.com/Illumina/strelka)
- **MuSE2**
  - Ultra-fast and accurate somatic mutation calling tool from heterogeneous tumor samples. This tool is unique in accounting for tumor heterogeneity using a sample-specific error model that improves sensitivity and specificity in mutation calling from sequencing data.
  - [Source](https://github.com/wwylab/MuSE)
- **BCFtools**
  - Merging and obtaining consensus set of mutations identified from two tools
  - [Source](https://samtools.github.io/bcftools/bcftools.html)
    
### Somatic CNV detection
- **Sequenza**
  - Somatic CNVs detection along with purity and ploidy estimated for tumor-normal pairs
  - [Source](https://sequenzatools.bitbucket.io/#/home)
### SomaticSV detection
- **DELLY**
  - [Source](https://github.com/dellytools/delly)
- **TIDDIT**
  - [Source](https://github.com/SciLifeLab/TIDDIT)
- **svABA**
  - [Source](https://github.com/walaj/svaba)
- **SURVIVOR**
  - Tool set for simulating/evaluating SVs, merging and comparing SVs within and among samples, and includes various methods to reformat or summarize SVs.
  - [Source](https://github.com/fritzsedlazeck/SURVIVOR)
### Chromothripsis
- **ShatterSeek**
  - Identifies chromosomal regions with chromothripsis events. Requires somatic CNVs and SVs as input.
  - [Source](https://github.com/parklab/ShatterSeek)
### Complex amplicon reconstruction
- **AmpliconArchitect**
  - Identification of ecDNAs, CGRs and BFB events from single WGS sample.
  - [Source](https://github.com/virajbdeshpande/AmpliconArchitect)

## Pan-cancer studies, reviews, methods and other interesting reads
- Optimized whole-genome sequencing workflow for tumor diagnostics in routine pathology practice. [Samsom et al, 2024](https://www.nature.com/articles/s41596-023-00933-5)
- Pan-cancer whole-genome comparison of primary and metastatic solid tumours. [Martínez-Jiménez et al, 2023](https://www.nature.com/articles/s41586-023-06054-z)
- Hartwig Medical tools. [HMFtools-GitHub](https://github.com/hartwigmedical/hmftools)
- Computational analysis of cancer genome sequencing data. [Cortés-Ciriano et al, 2021](https://www.nature.com/articles/s41576-021-00431-y)
- Cancer Genome Evolutionary Trajectories in Metastasis. [Birkbakand and McGranahan, 2020](https://pubmed.ncbi.nlm.nih.gov/31935374/)
- The evolutionary history of 2,658 cancers. [Gerstung et al, 2020](https://www.nature.com/articles/s41586-019-1907-7) 
