#!/bin/bash
number=$1
i=2
toggle=0
#Looping n/2 times
while test $i -le $(($number / 2))
do
	if test $(($number % $i)) -eq 0
	then
	toggle=1
	fi
	i=$(($i + 1))
done

#Checking the Toggle

if test $toggle -eq 1
then
	echo "The number is Not Prime"
else
	echo "The number is Prime"
fi

