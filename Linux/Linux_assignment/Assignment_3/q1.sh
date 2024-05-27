echo " enter grade A, B, C, D, F"
read grade
numeric_value=-1
case $grade in 
A)
numeric_value=4
;;
B)
numeric_value=3
;;
C)
numeric_value=2
;;
D)
numeric_value=1
;;
F)
numeric_value=0
;;
*)
echo "wrong grade entered"
;;
esac

if [ $numeric_value -ge 0 ] && [ $numeric_value -le 4 ]; then
    echo "numerical value for grade $grade is $numeric_value"
else
    echo "error Enter grade A B C D or F correctly"
fi
