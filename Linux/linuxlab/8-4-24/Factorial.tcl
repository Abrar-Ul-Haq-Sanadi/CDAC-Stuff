puts "Enter the Number to get the factorial"
gets stdin n
set fact 1

if { $n == 1 } {
	return 1 
} else {
	for { set i 2 } { $i <= $n } { incr i } {	
		set fact [expr $fact*$i]
	}
	puts "Factorial of $n is $fact"
}


