echo "Enter a file name to locate"
read filename

if test -f "/home/vlsi/Desktop/linuxlab/prac/$filename"
then 
	echo "File exists"
else
	echo "No"
fi


