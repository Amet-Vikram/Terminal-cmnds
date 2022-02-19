#!/bin/bash

echo "Think of a number Between 1 to 100"



while ans == no
do
	upper = 100
	lower = 1
	read -p "Is the Number less than upper/2?" pre
	guess=upper/50
	if pre == No
		guess=upper/2
				
		read -p "Is the Number" $guess"?" ans 
	else
		lower=  upper/2
		read -p "Is the Number" $guess"?" ans

done

echo "Guessed the Number" 