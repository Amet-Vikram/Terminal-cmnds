#!/bin/bash

n=$1
i=1

while [ $((2**i)) -le 256 ]
do
	echo $((2**i))
	i=$(($i+1))
done
	



