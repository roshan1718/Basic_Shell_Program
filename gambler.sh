#!/bin/bash -x

# @Purpose : Check that gamber is completed his goal or loose
# @Author : Roshan Balkrushna Shinde
# @Since : 14-03-2020 

stakes=100
goalAmount=200
betCount=0
winCount=0
loseCount=0
while [[ $stakes -gt 0 && $stakes -lt $goalAmount ]]
do
	((betCount++))
	random=$((RANDOM % 2 ))
	if [[ $random -eq 1 ]]
	then
		((stakes++))
		((winCount++))
	else
		((stakes--))
		((loseCount++))
	fi
done
echo Gambler played $betCount times
echo Gambler won game $winCount times
echo Gambler lose game $loseCount times
echo Available stakes = $stakes
