#!/bin/bash 

#reading user choice
echo "Select Conversion 1)degC to degF; 2)degF to degC"
read -p "Your Choice: " c

#func for f to c
function f2c() {
	c=$(awk -v a="$1" 'BEGIN { h=(a*(1.8))+32; print h}')
	echo $c
}

#func for c to f
function c2f() {
	f=$(awk -v a="$1" 'BEGIN { h=(a-32)*5/9; print h}')
	echo $f
}

#calling func based on user choice
case $c in 
1)	
	read -p "Enter the Value " v
	if [ $v -ge 0 ] && [ $v -le 100 ]
	then
		echo "The value in degF is" "$(f2c $v)"
	else
		echo "Wrong Range!"
	fi
	;;
2)
	read -p "Enter the Value " v
	if [ $v -ge 32 ] && [ $v -le 212 ]
	then
		echo "The value in degC is" "$(c2f $v)"
	else
		echo "Wrong Range!"
	fi
	;;
esac

