fact=1
echo "Enter a Number to get its Factorial"
read n
for ((i=1 ; i<=n ; i++))
do
fact=$((fact * i))
done
echo "Factorial is $fact"
