#!/bin/bash

echo "Searching a file"
if test -f $1
then
echo "File Exists"
else
touch $1
fi
