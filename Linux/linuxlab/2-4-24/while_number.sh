while true
do
echo "Enter a number"
read num

if [ $num -lt 0 ]
        	then
                echo "Negative number was encountered"
                break

elif [ $num -eq 0 ]
		then
                echo "Zero was Encountered"
                break

else
		if [ $(($num%5)) -eq 0 ]
		then
			continue
		else
                        echo "num=$(($num*$num))"
			continue
		fi
fi
done
