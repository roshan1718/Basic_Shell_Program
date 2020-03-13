#!/bin/bash -x
# @Purpose : Print the nth harmonic number Using For Loop
# @Author  : Roshan Balkrushna Shinde
# @Since : 13-03-2020 / Friday

#Takes command line argument n
number=$1
addition=0

for (( i=1; i<=number; i++ ))
do
	harmonic=`expr "scale=3; 1/$i " | bc`
	addition=`expr "scale=3; $addition + $harmonic" | bc`  
done
echo " nth Harmonic number is ::"$addition
