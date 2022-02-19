#!/bin/bash

n=$1 
num=1
for ((i=1;i<=n;i++))
do 
	num=$(($num*$i))
done

echo $num
