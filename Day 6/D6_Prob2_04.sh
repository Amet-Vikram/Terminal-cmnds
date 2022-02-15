#!/bin/bash 

bank=100
result=[]

while [ $bank -gt 0 ] && [ $bank -lt 200 ]
do
	bet=$((RANDOM%2))
	result+=($bet)
	case $bet in 
	0)
		bank=$(($bank-10))
		;;
	1)
		bank=$(($bank+10))
		;;
	esac
done

if [ $bank == 200 ] 
then
	echo "He Won!" 
elif [ $bank == 0 ] 
then
	echo "He is Broke!"
fi

echo "Results (1-Won; 0-Loss) " ${result[@]}

