# Program to check if year is leap or not

puts "Enter a year to chk if year is leap year"
gets stdin year

if {[expr $year % 4 == 0] && [expr $year % 100 != 0] || [expr $year % 400 == 0 ]} { 

	puts "The $year is a leap year"
} else { 
	puts "The $year is not a leap year"
} 







