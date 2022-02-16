#!/bin/bash 

lst=(302 767 443 260 286 522 466 51 690 965)

#var1=${lst[1]}
#var2=${lst[2]}
#echo $var1

"for ((i=0;i<10;i++))
do 
	for ((j=0;j<10-i-1;j++))
	do
		
		if [ ${lst[$j]} -ge ${lst[$j+1]} ] 
		then 
			temp=${lst[$j]}
		fi
		
		if [ ${lst[$j]} -le ${lst[$j+1]} ] 
		then 
			temp2=${lst[$j]}
		fi
		
		
	done
done

echo $temp
echo $temp2"

a=-12
b=2
echo $(($a+$b))