echo "Write  sentence to get vowels in it"
count=0

string="Hi Hello"
strlen=${#string}
echo "$strlen"
#${var:3:1}
#for (( i=0; i< $strlen; i++));
#do

#	echo "${string:0+$i:1}"



#arr=("a" "e" "i" "o" "u")


#	for ((j=0;j<5;j++))
#	do
#	if [ ${string:0+$i:1} -eq ${arr[j]} ];
#	then
##	echo "$[string:0+$i:1]"
##	echo "${arr[j]}"
#		count=$(($count+1))
#	else
#		echo "$count"
#	fi
#	done
#	        echo "The number of vowels are $count"
#done



for arr in a e i o u 
do
	if [ ${string:0+$i:1} -eq $arr ]
	then
		count=$(($count+1))
	else
		echo "$count"
	fi
#echo $arr
done
#done
