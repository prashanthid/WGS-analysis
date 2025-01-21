#!/bin/bash

## decompressed and PASS filtered, normals in normals folder
#bcftools view $i > $i".vcf"
#bcftools view -f PASS $i > $i".filtered.vcf"

total_files=`ls *cs.rmdup.bam-delly.bcf.vcf.filtered.vcf | wc -l`
arr=( $(ls *.cs.rmdup.bam-delly.bcf.vcf.filtered.vcf) )
echo "DELLY somatic filtering started" >> DELLY_somatic.log
echo "---------------" >> DELLY_somatic.log

for ((i=0; i<$total_files; i+=1))
{
	sample_name=`echo ${arr[$i]} | awk -F ".cs.rmdup.bam-delly.bcf.vcf.filtered.vcf" '{print $1}'`
	sample_ID=`echo ${arr[$i]} | awk -F "-" '{print $1}'`
	echo "[DELLY somatic running for] $sample_name"
	echo "/mnt/d/RL_7WGS_S-22-0073_GAP388/SURVIVOR/Debug/./SURVIVOR merge $sample_name"_list.txt" 0.2 1 1 1 0 50 $sample_name"vsNormal-DELLY.vcf"" >> DELLY_somatic.log
	echo "$sample_name".cs.rmdup.bam-delly.bcf.vcf.filtered.vcf"" > $sample_name"_list.txt"
	echo "normals/$sample_ID"-normal.cs.rmdup.bam-delly.bcf.vcf.filtered.vcf"" >> $sample_name"_list.txt"
	/mnt/d/RL_7WGS_S-22-0073_GAP388/SURVIVOR/Debug/./SURVIVOR merge $sample_name"_list.txt" 0.2 1 1 1 0 50 $sample_name"vsNormal-DELLY.vcf"
	grep -E "#|SUPP_VEC=10" $sample_name"vsNormal-DELLY.vcf" > $sample_name"-DELLY-somatic.vcf"	
}
