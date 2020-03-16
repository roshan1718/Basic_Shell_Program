#!/bin/bash -x

# @Purpose : Generate 10 - 3 Digit Number Sort The Array and Find second Smallest and second Largest
# @Author  : Roshan Balkrushna Shinde
# @Since   : 14-03-2020

declare -a array

function getNumber()
{
	for (( i=0; i<10; i++ ))
	do
		number=$(((RANDOM %900)+100))
		array[i]=$number
	done

	echo Generated Array:: ${array[@]}
}

function sortArray()
{
	for ((i=0; i<10; i++ ))
	do
		for (( j=i+1; j<10; j++))
		do
			if [[ ${array[$i]} -gt ${array[$j]} ]]
			then
				temp=${array[i]}
				array[i]=${array[j]}
				array[j]=$temp
			fi
		done
	done
	echo Second Largest is::${array[8]}
	echo Second Smallest is::${array[1]}
}
getNumber
sortArray  ${array[@]}
