echo "enter a month from 1 to 12"
read num
case $num in
1)
days=31
;;
2)
echo " enter the year"
read year
if [ $(($year%4)) -eq 0 ] && [ $(($year%100)) -ne 0 ] || [ $(($year%400)) -eq 0 ]

then
echo "$year is leap year"
days=29
else
echo "$num is not leap"
days=28
fi
;;
3)
days=31
;;
4)
days=30
;;
5)
days=31
;;
6)
days=30
;;
7)
days=31
;;
8)
days=31
;;
9)
days=30
;;
10)
days=31
;;
11)
days=30
;;
12)
days=31
;;
*)
echo " ----"
;;
esac


if [ $num -lt 1 ] || [ $num -gt 12 ]
then
	echo "error:  number entered is not a valid month"
else
	echo "month $num has $days days"
fi










