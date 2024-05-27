#!/bin/bash
echo "For searching file"

echo "Enter file name"
read filename

test -f filename
if [ $? = 0 ]
then
echo "File Exists"
else
echo "File does not exists"
fi
