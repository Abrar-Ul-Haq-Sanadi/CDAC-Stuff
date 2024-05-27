x
echo "Enter a number to know if it is even or odd"
read num

#if [ $((num % 2)) -eq 0 ];

result=`expr $num % 2`
if [ $result -eq 0 ]
then
echo "The $num is even"
else
echo "The $num is odd" 
fi
