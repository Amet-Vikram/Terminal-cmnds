#!/bin/bash

read -p "Enter the range of Numbers: " m n

for ((a=$m;a<=$n;a++))
do
    k=0
	for ((i=2;i<=$(($a-1));i++))
    do 
        if [ $(($a % $i)) -eq 0 ]
        then
            k=1
            break
        fi
    done
    if [ $k -eq 0 ]
    then
		echo $a
    fi
done