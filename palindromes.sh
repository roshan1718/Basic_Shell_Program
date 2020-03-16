#!/bin/bash -x
# @Purpose : Check given number1 and number2 is it palindrome
# @Author : Roshan Balkrushna Shinde
# @Since : 16-03-2020 

read -p "Enter First Number:: " number1
read -p "Enter Second Number:: " number2
reverse=0

function getPalindrome()
{
   while [[ number1 -ne 0 ]]
   do
      reminder=$(($number1 %10))
		#shift digit by one place
		reverse=$(($reverse*10))
		reverse=$(($reverse+$reminder))
		number1=$(($number1/10))
   done

   if [[ $reverse -eq $number2 ]]
   then
      echo "Given numbers are palindrome"
   else
      echo "Given number are not palindrome"
   fi
}

getPalindrome

