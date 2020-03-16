#!/bin/bash -x

# @ Purpose : Find elements in array whose addition is Zero
# @ Author : Roshan Balrushna Shinde
# @ Since : 16-03-2020 

read -p "Enter length of array::" length
c=0

for(( i=0; i<$length; i++ ))
do
	read -p "Enter the number $i ::" number
	array[c++]=$number
done
echo ${array[@]}


function findElement()
{

echo Array Elements whose addition is Zero are..
for (( i=0; i<(${#array[@]}-2); i++))
do
	for (( j=1; j<(${#array[@]}-1); j++))
	do
		for (( k=2; k<(${#array[@]}); k++))
		do
			if [[ $((${array[i]}+${array[j]}+${array[k]})) -eq 0 ]]
			then
				echo ${array[i]} ${array[j]} ${array[k]}
			fi
		done
	done
done
}

findElement
