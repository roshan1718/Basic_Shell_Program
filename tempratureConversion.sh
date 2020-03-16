#!/bin/bash -x
# @Purpose :  find degF or degC based on their conversion selection
# @Author : Roshan Balkrushna Shinde
# @Since : 14-03-2020 

function farenheitToCelcius()
{
	echo "Enter Temperature in Degree Farenheit"
	read farenheit
	if [[ $farenheit -ge 32 && $farenheit -le 212 ]]
	then
		celcius=`expr "scale=4;$(($farenheit-32))*5/9" | bc`
		echo "$farenheit °F = $celcius °C "
	else
		echo "You Enter invalid emperature"
	fi
}

function celciusToFarenheit()
{
	echo "Enter Temperature in Celcius"
	read celcius
	if [[ $celcius -gt 0 && $celcius -lt 100 ]]
	then
		farenheit=`expr "scale=4;$(($celcius*9/5))+32" | bc`
		echo "$celcius °C = $farenheit °F  "
	else
		echo "You Enter invalid temprature"
	fi
}

temp=0

while [[ $temp -eq 0 ]]
do
	echo "1. Convert Celcius To Farenheit"
	echo "2. Convert Farenheit To Celcius "
	echo "3. Exit"
	read -p "Enter your choice " choice

	case $choice in
  		1)
 			celciusToFarenheit  ;;

  		2)
    		farenheitToCelcius ;;
		3)
			break ;;
  		*)
  			echo "Invalid Choice";;
	esac
done


