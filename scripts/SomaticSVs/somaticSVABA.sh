#!/bin/bash

total_files=`ls *.svaba.sv.vcf | wc -l`
arr=( $(ls *.svaba.sv.vcf) )
echo "svABA somatic filtering started" >> svABA_somatic.log
echo "---------------" >> svABA_somatic.log

for ((i=0; i<$total_files; i+=1))
{
	sample_name=`echo ${arr[$i]} | awk -F ".cs.rmdup.bam-SVABA.svaba.sv.vcf" '{print $1}'`
	sample_ID=`echo ${arr[$i]} | awk -F "-" '{print $1}'`
	echo "[svABA somatic running for] $sample_name"
	echo "/mnt/d/RL_7WGS_S-22-0073_GAP388/SURVIVOR/Debug/./SURVIVOR merge $sample_name"_list.txt" 0.2 1 1 1 0 50 $sample_name"vsNormal-SVABA.vcf"" >> svABA_somatic.log
	echo "$sample_name".cs.rmdup.bam-SVABA.svaba.sv.vcf"" > $sample_name"_list.txt"
	echo "normals/$sample_ID"-normal.cs.rmdup.bam-SVABA.svaba.sv.vcf"" >> $sample_name"_list.txt"
	/mnt/d/RL_7WGS_S-22-0073_GAP388/SURVIVOR/Debug/./SURVIVOR merge $sample_name"_list.txt" 0.2 1 1 1 0 50 $sample_name"vsNormal-SVABA.vcf"
	grep -E "#|SUPP_VEC=10" $sample_name"vsNormal-SVABA.vcf" > $sample_name"-SVABA-somatic.vcf"	
}
