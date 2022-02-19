#!/bin/bash 
lst=()

for ((r=1;r<=10;r++))
do
	n=$((RANDOM%999))
	lst+=($n)
done

echo "Array Before the sort: "${lst[@]}

for ((i=0;i<10;i++))
do 
	for ((j=0;j<10-i-1;j++))
	do
		
		if [ ${lst[$j]} -ge ${lst[$j+1]} ] 
		then 
			temp=${lst[$j]}
			lst[$j]=${lst[$j+1]}
			lst[$j+1]=$temp
		fi
		
		#echo ${fruits2[$i+1]}
	done
done

echo "Array After the sort: "${lst[@]}

echo "Second Largest Number: "${lst[8]}
echo "Second Smallest Number: "${lst[1]}
