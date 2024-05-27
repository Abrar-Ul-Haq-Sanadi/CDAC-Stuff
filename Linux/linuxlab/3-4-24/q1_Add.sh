#!/bin/bash

echo "Addition Script"
echo "Enter num1"
read num1
echo "Enter num2"
read num2

result=`expr $num1 + $num2`

echo "Addition of $num1 and $num2 is $result"


