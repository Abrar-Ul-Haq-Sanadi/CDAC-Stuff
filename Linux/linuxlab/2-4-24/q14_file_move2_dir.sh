echo "Enter the file name "
read name

if test -f $file
then
	mv $name "data/$name"
else
	echo "File does not exists!!"
fi

echo "File stored at ./data/$name"

