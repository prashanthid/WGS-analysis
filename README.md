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
    
### Somatic CNV detection
- **Sequenza**
  - Somatic CNVs detection along with purity and ploidy estimated for tumor-normal pairs
  - [Source](https://sequenzatools.bitbucket.io/#/home)
### SomaticSV detection
- [DELLY](https://github.com/dellytools/delly)
- [TIDDIT](https://github.com/SciLifeLab/TIDDIT)
- [svABA](https://github.com/walaj/svaba)
### Chromothripsis
- **ShatterSeek**
  - Identifies chromosomal regions with chromothripsis events. Requires somatic CNVs and SVs as input.
  - [Source](https://github.com/parklab/ShatterSeek)
### Complex amplicon reconstruction
- **AmpliconArchitect**
  - Identification of ecDNAs, CGRs and BFB events from single WGS sample.
  - [Source](https://github.com/virajbdeshpande/AmpliconArchitect)

