proc isprime {n} {
	set count 0
	for { set i 1 } { $i <= $n } { incr i} {
		if { [expr $n % $i==0]} {
			set incr count
			if {$count < 2} {
				return 1
			} else { 
				return 0 
			}
		}
		}
	}

set n 10
if {[isprime $n]} {
	puts "Its a prime number"
} else { 
	puts " not a prime number"
}



		
