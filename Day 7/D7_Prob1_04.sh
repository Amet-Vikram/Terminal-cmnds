#!/bin/bash

arr=(0 1 -2 1 -2)

#determining the Length of Array
len="${#arr[@]}"
echo $len
#function findTriplets() 
	
found=0
for ((i=0;i<=$len-2;i++))
do
	for ((j=$i+1;j<=$len-1;j++))
	do
		for ((k=$j+1;k<=$len;k++))
		do
			sol=$((${arr[$i]}+${arr[$j]}+${arr[$k]}))
			if [ $sol == 0 ]
			then
				echo ${arr[$i]} ${arr[$j]} ${arr[$k]}
				found=1
			fi
		done
		
	done		
done

if [ $found == 0 ]
then
	echo "Doesn't exist"
	
#sol=$(awk -v d1=${arr[$i]} d2=${arr[$j]} d3=${arr[$k]} 'BEGIN{ h=d1+d2+d3 ; print h }')

		
