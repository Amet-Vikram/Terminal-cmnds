#!/bin/bash 

for i in {0..4} 
	do
		x=$((RANDOM%100))
		sum=$(($sum+$x))
done 
avg=$(($sum/5))
printf "Sum of 5 random digits is:%d %b\n" "$sum"
printf "Average is:%f" "$avg"

