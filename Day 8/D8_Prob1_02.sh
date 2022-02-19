#!/bin/bash 

declare -A ind

for ((i=0;i<50;i++))
do 
	month=$((RANDOM%13))
	ind[$i]=$month
done
#echo ${ind[@]}
#echo ${!ind[@]}
for person in ${!ind[@]};
do 
	echo $person
done
echo "Ho gaya pehela Loop"
#for person2 in ${ind[@]};
#do 
#	echo $person2
#done
	
	
	