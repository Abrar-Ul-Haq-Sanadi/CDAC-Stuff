#. Implement a script that takes a filename as input and checks if it's a regular file or a directory.


read -p "Enter file name to chk if its file or directory: " filename


if test -f "/home/vlsi/Desktop/linuxlab/prac/$filename"
then
	echo "its a regular file and it exists"

elif test -d "/home/vlsi/Desktop/linuxlab/prac/$filename"
then
	echo "its a directory and it exists"

else
	echo "Invalid input"
fi
