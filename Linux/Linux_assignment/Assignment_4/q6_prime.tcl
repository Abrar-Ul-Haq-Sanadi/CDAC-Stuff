#Program to check if numbers is a prime or nor
puts "Enter a Number"
gets stdin n
set count 0



for { set i 1 } { $i <= $n } {incr i} {
	if { $n%$i == 0} {
		incr count
	}
}

if { $count > 2 } {
	puts "the $n is composite number"
} else {
	puts "the $n is prime number"
}

