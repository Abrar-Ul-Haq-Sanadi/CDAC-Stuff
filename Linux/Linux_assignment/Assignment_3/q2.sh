echo "enter day from 1 to 7"
num=-1
read num
case $num in 
1)
Day="Sunday"
;;
2)
Day="Monday"
;;
3)
Day="Tuesday"
;;
4)
Day="Wednesday"
;;
5)
Day="Thursday"
;;
6)
Day="Friday"
;;
7)
Day="Saturday"
;;
*)
echo "wrong day entered."
;;
esac

if [ $num -ge 1 ] && [ $num -le 7 ]; then
    echo " Day $num is $Day"
else
    echo "day $num doesn't exist"
fi
