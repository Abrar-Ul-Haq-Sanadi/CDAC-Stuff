echo " enter the year"
read num
if [ $(($num%4)) -eq 0 ] && [ $(($num%100)) -ne 0 ] || [ $(($num%400)) -eq 0 ]

then
echo "$num is leap year"
else

echo "$num is not leap"
fi
