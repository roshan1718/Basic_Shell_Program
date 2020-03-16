#!/bin/bash -x

# @ Purpose : Find Number of peoples who born in same month using dictionary
# @ Author : Roshan Balkrushna Shinde
# @ Since : 16-03-2020 

echo "Random Birth Month"
for (( people=1; people<=50; people++ ))
do
	month=$((RANDOM % 12 + 1))
	birthMonth[$month]="${birthMonth[$month]} $people"
done

for (( month=1; month<=12; month++ ))
do
	echo " Birthday in same month $month:: ${birthMonth[month]}"
done

