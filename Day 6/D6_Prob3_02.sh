#!/bin/bash
read -p "Enter the Number to be checked: " n

#return reversed string
function reversed_string () {
	rev=""
	temp=$1
	while [ $temp -gt 0 ]
	do 
		slice=$(($temp % 10))
		temp=$(($temp / 10))
		rev=$( echo ${rev}${slice} )
	done 
	echo $rev
}

rev_n=$(reversed_string $n)

#func to check if Palindrome
function pal_check () {
	
	if [ $1 -eq $2 ]
	then 
		echo "It is a Palindrome Number!"
	else
		echo "It is not a Palindrome Number"
	fi
}

pal_check $n $rev_n
