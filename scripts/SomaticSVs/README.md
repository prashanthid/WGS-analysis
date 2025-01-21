# Somatic SVs prediction

## 1. Call SVs from 3 tools
### DELLY (run parallely)
`src/delly call -x excludeTemplates/human.hg38.excl.tsv -g hg38_ref/hg38full.fa -o Sample-delly.bcf  Sample.cs.rmdup.bam`
### TIDDIT
`for i in *.cs.rmdup.bam; do python TIDDIT/TIDDIT.py --sv --ref hg38_ref/hg38full.fa --bam $i -o $i"-TIDDIT"; done`
### SVABA
`for i in *.cs.rmdup.bam; do bin/svaba run -L 6 -p 36 -G hg38_ref/hg38full.fa -a $i"-SVABA" -t $i; done`
## 2. Somatic SVs from each tool
Group all files in three folders, TIDDIT, DELLY and SVABA with corresponding files in each folder, requires SURVIVOR
### DELLY
- `for i in *.bcf; do bcftools view $i > $i".vcf"; done
for i in *.bcf.vcf; do bcftools view -f PASS $i > $i".filtered.vcf"`
- transfer normals to normals folder
- `bash somaticDELLY.sh`

### TIDDIT
- `grep -E "#|PASS" input.vcf > output.filtered.vcf`
- transfer normals to normals folder
- `bash somaticTIDDIT.sh`

### SVABA
- transfer normals to normals folder
- `bash somaticSVABA.sh`

## 3. Merging using SURVIVOR ####
- Transfer all -somatic.vcf files to a folder. Each sample must have files generated from TIDDIT, SVABA and DELLY
- `bash somaticMerge.sh`



