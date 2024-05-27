echo "Enter no to gets its factorial: " 
read num
fact=1
for ((i=1 ; i<=$num; i++))
do
	fact=$(($fact*$i))
done
echo "$fact"


