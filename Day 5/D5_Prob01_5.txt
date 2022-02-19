#!/bin/bash 

read -p "enter length in inch: " x
len=$((x/12))
echo "The Length in ft is: $len"

read -p "Enter the Dimensions (L B): " -a dim
area=$((${dim[0]}*${dim[1]}/144))
echo "The Area in Meter is: $area"
many_plot=$(($area*25))
echo "Area of 25 such plots will be: $many_plot"

