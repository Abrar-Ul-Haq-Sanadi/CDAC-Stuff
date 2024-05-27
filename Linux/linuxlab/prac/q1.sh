read -p "Enter the string: " word
echo "$word"

word=`echo $word | tr [:lower:] [:upper:]`

echo "$word"
