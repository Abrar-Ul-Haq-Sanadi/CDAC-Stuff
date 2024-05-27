puts "enter a string: "
gets stdin str


for {set i  [string length $str]} {$i>=0} {incr i -1} { 
	append reverse [string index $str $i] 
}

puts "$reverse"



