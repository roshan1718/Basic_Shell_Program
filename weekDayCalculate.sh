#!/bin/bash -x
echo "Program for Gregorian calender"

day+=$1
month=$2
year=$3

y=$(( year -( 14 - month ) / 12)) 
echo $y
x=$(( y + y / 4 - y / 100 + y / 400 ))   
echo $x
m=$(( month + 12 * (( 14 - month ) / 12) -2 )) 
echo $m
num=$(( ( day + x + 31 * m / 12 ) % 7 ))
echo  $num


if [[ $num -eq 0 ]]
then
	echo " $num Day will be 'Sunday'"
elif [[ $num -eq 1 ]]
then
	echo "$num Day will be 'Monday'"
elif [[ $num -eq 2 ]]
then
	echo "$num Day will be 'Tuesday'"
elif [[ $num -eq 3 ]]
then
	echo "$num Day will be 'Wednesday'"
elif [[ $num -eq 4 ]]
then
	echo "$num Day will be 'Thursday'"
elif [[ $num -eq 5 ]]
then
	echo "$num Day will be 'Friday'"
elif [[ $num -eq 6 ]]
then
	echo "$num Day will be 'Saturday'"
fi
