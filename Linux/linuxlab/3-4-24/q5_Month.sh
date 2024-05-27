echo "Enter month number to get month name"
read month
arr=("" "January" "February" "March" "April" "May" "June" "July" "August" "September" "October" "November" "December")

if [ $month -lt 13 ];
then
echo "${arr[month]}"
else
echo "Invalid Entry"
fi



