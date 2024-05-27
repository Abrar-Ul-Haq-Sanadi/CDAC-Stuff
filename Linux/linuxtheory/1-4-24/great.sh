#!/bin/bash
echo " Enter first number"
read num1

echo " Enter Second number"
read num2
if [ $num1 -gt 10 ]
then

echo "Number $num1 is greater than 10"
else
echo "Number $num1 is smaller than 10"
fi

if [ $num2 -gt 20 ]
then
echo "Number $num2 is greater than 20"
else
echo "Number $num2 is smaller than 20"
fi




