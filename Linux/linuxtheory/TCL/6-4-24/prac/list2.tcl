
set l [list ]
puts "enter the number of elemnts to be in list: "
gets stdin n
puts "enter the list values: "

for {set i 1} {$i <=$n} {incr i} {
 	gets stdin num
	lappend l $num
}
puts "$l"



foreach number $l { 
if {$number==5} { 
	break 
} else {
puts "$number" 
}
}


