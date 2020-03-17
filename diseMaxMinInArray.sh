#!/bin/bash -x

# @ Purpose : Find Dice Outputs Print Occurances and Print maximum and Minimum occurances of Output
# @ Author : Roshan Balkrushna Shinde
# @ Since : 17-03-2020 

echo "Dice Output Occurances.."
occurances=( [1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0 )

function getInput()
{
	while [[ ${occurances[$dice]} -ne 10 ]]
	do
		dice=$((RANDOM % 6 + 1))
		occurances[dice]=$((occurances[dice]+1))
	
		if [[ ${occurances[$dice]} -eq 10 ]]
		then
			echo "Miximun Occurances of Dice number $dice is 10"
		fi
	done
	
	echo ${!occurances[@]}
	echo ${occurances[@]}
}

function minOccurances()
{
	minOutput=${occurances[1]}
	for (( i=1; i<=6; i++ ))
	do
		if [[ ${occurances[$i]} -le $minOutput ]]
		then
			minOutput=${occurances[$i]}
			minNumber=$i
		fi
	done
	echo "Minimun Occurances of Dice number $minNumber is $minOutput"
}

getInput
minOccurances
