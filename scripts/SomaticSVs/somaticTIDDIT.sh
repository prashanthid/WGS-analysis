#!/bin/bash

## all vcfs filtered "PASS" using grep -E "#|PASS" input.vcf > output.filtered.vcf and normals in normals folder
total_files=`ls *.cs.rmdup.bam-TIDDIT.vcf.filtered.vcf | wc -l`
arr=( $(ls *.cs.rmdup.bam-TIDDIT.vcf.filtered.vcf) )
echo "TIDDIT somatic filtering started" >> TIDDIT_somatic.log
echo "---------------" >> TIDDIT_somatic.log

for ((i=0; i<$total_files; i+=1))
{
	sample_name=`echo ${arr[$i]} | awk -F ".cs.rmdup.bam-TIDDIT.vcf.filtered.vcf" '{print $1}'`
	sample_ID=`echo ${arr[$i]} | awk -F "-" '{print $1}'`
	echo "[TIDDIT somatic running for] $sample_name"
	printf "\n"
	echo "/mnt/d/RL_7WGS_S-22-0073_GAP388/SURVIVOR/Debug/./SURVIVOR merge $sample_name"_list.txt" 0.2 1 1 1 0 50 $sample_name"vsNormal-TIDDIT.vcf"" >> TIDDIT_somatic.log
	echo "$sample_name".cs.rmdup.bam-TIDDIT.vcf.filtered.vcf"" > $sample_name"_list.txt"
	echo "normals/$sample_ID"-Normal.cs.rmdup.bam-TIDDIT.vcf.filtered.vcf"" >> $sample_name"_list.txt"
	/mnt/d/RL_7WGS_S-22-0073_GAP388/SURVIVOR/Debug/./SURVIVOR merge $sample_name"_list.txt" 0.2 1 1 1 0 50 $sample_name"vsNormal-TIDDIT.vcf"
	grep -E "#|SUPP_VEC=10" $sample_name"vsNormal-TIDDIT.vcf" > $sample_name"-TIDDIT-somatic.vcf"	
}
