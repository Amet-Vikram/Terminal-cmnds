#!/bin/bash 

n=$1 

sol=$(awk -v dc=$n 'BEGIN{ for(i=1;i<=dc;i++) h+=1/i; print h }')
#awk 'BEGIN{ for(i=1;i<=6;i++) print "square of", i, "is",i*i; }' 
echo "Value Of "$n"th Harmonic is: " $sol


