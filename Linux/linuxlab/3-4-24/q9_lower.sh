
echo "Enter a string to get its lowercase"
read str
string=`echo $str | tr [:upper:] [:lower:]`
echo "$string"
