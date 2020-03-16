#!/bin/bash -x

# @Purpose : Check given Number is Prime or not Find Its reverse and check that is it palindrome
# @Author : Roshan Balkrushna Shinde
# @Since : 16-03-2020 

read -p "Enter Number" number

function checkPrime()
{
	count=0
	for (( i=2; i<=$(($1/2)); i++ ))
	do
		if [[ $(($1%$i)) == 0 ]]
		then
			((count++))
		fi
	done
	if [[ $count -eq 0 ]]
	then
		echo $1 is Prime Number
	else
		echo $1 is Not Prime Number
	
	fi
}

function checkPalindrome()
{
	reverse=0
	copynum=$1

   while [[ $copynum -ne 0 ]]
   do
      reminder=$(($copynum %10))
		reverse=$(($reverse*10))
      reverse=$(($reverse+$reminder))
      copynum=$(($copynum/10))
   done

	if [[ $reverse -eq $1 ]]
   then
      echo "Given Number is Palindrome"
   else
      echo "Given Number is Not Palindrome"
   fi
	echo Reverse of Given Number is $reverse

	
}
checkPrime $number
checkPalindrome $number
checkPrime $reverse

