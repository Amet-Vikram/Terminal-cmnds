#!/bin/bash

read -p "Enter the Number: " n
prime=()
for ((a=0;a<=$n;a++))
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
		prime+=($a)
    fi
done

echo ${prime[@]}