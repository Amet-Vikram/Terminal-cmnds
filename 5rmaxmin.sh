#!/bin/bash 

a=$((RANDOM%999))
b=$((RANDOM%999))
c=$((RANDOM%999))
d=$((RANDOM%999))
e=$((RANDOM%999))

echo "a=$a b=$b c=$c d=$d e=$e"

if(( $a>$b && $a>$c && $a>$d && $a>$e))
then
	echo a is greatest number.
elif(($b>$c && $b>$d && $b>$e))
then
	echo b is greatest number.
elif(($c>$d && $c>$e))
then
	echo c is the greatest number. 
elif(($d>$e))
then
	echo d is the greatest number.
else
	echo e is the greatest number.
fi

