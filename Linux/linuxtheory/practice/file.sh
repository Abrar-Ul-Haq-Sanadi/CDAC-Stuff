
#!/bin/bash 
read -p "Enter file search: " file_name
if test -f /home/vlsi/Desktop/linuxtheory/practice/$file_name 
then 
	echo "file exists"
else
	echo "no file"
fi

