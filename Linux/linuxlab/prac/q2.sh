echo "Enter a number to print upto that: "
read num
echo "Forward order"

for (( i= 0 ; i<=$num ; i++))
do
	echo -n "$i"
done
echo ""

echo "Reverse order"

for (( i=$num; i>=0 ; i--))
do
	echo -n "$i"
done


