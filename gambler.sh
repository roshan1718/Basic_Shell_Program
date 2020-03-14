#!/bin/bash -x

# @Purpose : Check that gamber is completed his goal or loose
# @Author : Roshan Balkrushna Shinde
# @Since : 14-03-2020 

stakes=100
goalamount=200
betcount=0
wincount=0

while [[ $stakes -gt 0 && $stakes -lt $goalamount ]]
do
	((betcount++))
	random=$((RANDOM % 2 ))
	if [[ $random -eq 1 ]]
	then
		((stakes++))
		((wincount++))
	else
		((stakes--))
	fi
done
echo Gambler played $betcount times
echo Gambler won game $wincount times
echo Available stakes = $stakes
