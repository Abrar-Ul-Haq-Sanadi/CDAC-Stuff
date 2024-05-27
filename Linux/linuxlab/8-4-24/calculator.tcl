puts "Welcome to the Calculator"

puts "enter choice 1.add 2.sub 3.mul 4.div 5.mod"
gets stdin choice

puts "Enter first number"
gets stdin x

puts "Enter second number"
gets stdin y


switch $choice { 
	1 { 
		set result [expr $x + $y]
		puts "Addition of $x and $y is $result"
	}
        2 {
                set result [expr $x - $y]
                puts "Substraction of $x and $y is $result"
        }
        3 {
                set result [expr $x * $y]
                puts "Multiplication of $x and $y is $result"
        }
        4 {
                if { $y == 0 } {
			puts "Denominator cannot be negative"
		} else {
			set result [expr $x / $y]
			puts "Division of $x and $y is $result"
		}
        }

	5 {
		if { $y == 0 } {
			puts "Denomincator cannot be negative"
		} else { 
			set result [expr $x % $y]
			puts "Reminder of $x and $y is $result"
		}
	}

	default {
		puts "Invalid entry" 
	}
}




