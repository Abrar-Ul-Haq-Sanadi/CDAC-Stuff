#!/bin/bash


echo "File checking "
echo "Enter the current month"
read month

month = `echo $month | tr [:upper:] [:lower:]`
if [ $month = April ]
then
echo "Correct month entered"
else
echo "Wrong month entered"
fi
