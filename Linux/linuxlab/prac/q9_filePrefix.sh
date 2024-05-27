#13. Write a script that renames all files in a directory with a specific extension to have a prefix.

read -p "enter the directory  path: " dir
read -p "enter the extension ext: " ext
read -p "enter the prefix which u want to add: " prefix

for file in *.$ext
do
	new_name="$prefix$file"
	mv "$file" "$new_name"
	echo "$file is renamed to $new_name"

done
	echo "rename done"



