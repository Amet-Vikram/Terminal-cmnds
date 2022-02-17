#!/bin/bash 

declare -A dice
dice=( [1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0 )


while [ ${dice[1]} -lt 10 ] || [ ${dice[2]} -lt 10 ] || [ ${dice[3]} -lt 10 ] || [ ${dice[4]} -lt 10 ] || [ ${dice[5]} -lt 10 ] || [ ${dice[6]} -lt 10 ]
do
	roll=$((RANDOM%7))
	check=0
	case $roll in
		1)
			dice[1]=$((${dice[1]}+1))
			if [ ${dice[1]} -eq 10 ]
			then
				check=1
			fi
			;;
		2)
			dice[2]=$((${dice[2]}+1))
			if [ ${dice[2]} -eq 10 ]
			then
				check=1
			fi
			;;
		3)
			dice[3]=$((${dice[3]}+1))
			if [ ${dice[3]} -eq 10 ]
			then
				check=1
			fi
			;;
		4)
			dice[4]=$((${dice[4]}+1))
			if [ ${dice[4]} -eq 10 ]
			then
				check=1
			fi
			;;
		5)
			dice[5]=$((${dice[5]}+1))
			if [ ${dice[5]} -eq 10 ]
			then
				check=1
			fi
			;;
		6)
			dice[6]=$((${dice[6]}+1))
			if [ ${dice[6]} -eq 10 ]
			then
				check=1
			fi
			;;
	esac
	
	if [ $check -eq 1 ]
	then
		break
	fi
done

echo ${dice[@]}



