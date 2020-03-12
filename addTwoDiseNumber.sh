
#!/bin/bash -x
# add Two Random Dise Number

number1=$(( RANDOM % 90 + 10 )) 
number2=$(( RANDOM % 90 + 10 ))

result=$(( $number1 + $number2 ))

echo "First dise number is:: $number1"
echo "Second dise number is:: $number2"
echo "Addition of two dise number is $result"
