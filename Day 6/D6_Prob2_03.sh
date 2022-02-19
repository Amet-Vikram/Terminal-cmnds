#!/bin/bash 

h=0
t=0
while [ $h -lt 11 ] || [ $t -lt 11 ]
do
	coin=$((RANDOM%2))
	
	case $coin in 
	0)
		h=$(($h+1))
		;;
	1)
		t=$(($t+1))
		;;
	esac
done

if [ $h == 11 ] 
then
	echo "Heads Won!" 
elif [ $t == 11 ] 
then
	echo "Tails Won!"
fi