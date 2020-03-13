#!/bin/bash -x
# @Purpose : Print the factorial of given number Using For Loop
# @Author  : Roshan Balkrushna Shinde
# @Since : 13-03-2020 / Friday


read -p "Enter the number :: " number
factorial=1
for (( i=number; i >=1 ; i-- ))
do
	factorial=`expr "$factorial * $i" | bc`
done
echo $factorial  
