#!/bin/bash -x

# @Purpose : Program that takes a input and determines range prime numbers in that range using for loop
# @Author  : Roshan Balkrushna Shinde
# @Since : 13-03-2020 / Friday

read -p "Enter Starting Number " start
read -p "Enter Ending Number " end

for (( i=start; i<=end; i++ ))
do
	count=0
	for (( j=1; j<=$i; j++ ))
	do
		if [[ $(($i % $j)) -eq 0 ]]
		then
			count=$(($count + 1 ))
		fi
	done
	if [[ count -eq 2 ]]
	then
		echo $i
	fi
done
