#!/bin/bash

echo "This Script performs the addition"
#result=`expr $1 + $2`
result=$(($1+$2))
echo  " The addition result is $result"

echo "This Script performs the Substraction"
#result=`expr $1 - $2`
result=$(($1-$2))
echo  " The substraction result is $result"

echo "This Script performs the  Multiplication"
#result=`expr $1 \* $2`
result=$(($1*$2))
echo  " The Multiplication  result is $result"

echo "This Script performs the division"
if [ $2 = 0 ]
then
echo "second number is invalid"
else
#result=`expr $1 / $2`
result=$(($1/$2))
echo  " The division  result is $result"
fi


echo "This Script performs the Mod"
if [ $2 = 0 ]
then
echo "Second number is invalid"
else
#result=`expr $1 % $2`
result=$(($1%$2))
echo  " The Mod(reminder)  result is $result"
fi
