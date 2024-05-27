echo "Enter initial num value to get prime number from that number: "
read min

echo "enter Final num  value upto where u want to get prime numner: "
read max

for ((i=$min;i<=$max;i++))
do 
	count=0
	for ((j=1;j<=$i;j++))
	do
		if [ $(($i%$j)) -eq 0 ]
		then
			count=$(($count+1))
		fi
	done
	if [ $count -gt 1 ] && [ $count -lt 3 ]
	then
		echo "$i"
	fi
done
