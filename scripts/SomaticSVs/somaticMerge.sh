#!/bin/bash

## all three VCFs for each sample in the same folder

total_files=`ls *-DELLY-somatic.vcf | wc -l`
arr=( $(ls *-DELLY-somatic.vcf) )
echo "Merging and filtering started" >> somatic_merge.log
echo "---------------" >> somatic_merge.log

for ((i=0; i<$total_files; i+=1))
{
	sample_name=`echo ${arr[$i]} | awk -F "-DELLY-somatic.vcf" '{print $1}'`
	sample_ID=`echo ${arr[$i]} | awk -F "-" '{print $1}'`
	echo "[Merging and filtering for] $sample_name"
	echo "$sample_name"-DELLY-somatic.vcf"" > $sample_name"_list.txt"
	echo "$sample_name"-TIDDIT-somatic.vcf"" >> $sample_name"_list.txt"
	echo "$sample_name"-SVABA-somatic.vcf"" >> $sample_name"_list.txt"
	/mnt/d/RL_7WGS_S-22-0073_GAP388/SURVIVOR/Debug/./SURVIVOR merge $sample_name"_list.txt" 0.35 2 1 1 0 60 $sample_name"-somatic-merged.vcf"
	echo "/mnt/d/RL_7WGS_S-22-0073_GAP388/SURVIVOR/Debug/./SURVIVOR merge $sample_name"_list.txt" 0.35 2 1 1 0 60 $sample_name"-somatic-merged.vcf"" >> somatic_merge.log
	cp $sample_name"-somatic-merged.vcf" final/				
}
