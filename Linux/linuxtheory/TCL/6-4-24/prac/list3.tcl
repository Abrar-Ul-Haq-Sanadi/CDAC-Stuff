puts "Enter the no of elemnts in list: "
gets stdin n
puts "Enter the elemnts in list: "
for {set i 1} {$i<=$n} {incr i} {
	gets stdin num
	lappend l $num
}
puts "$l"


foreach num $l { 
if {$num==9} { 
	continue
} elseif {$num==10} {
	break 
} else {
	puts "$num" 
}
}


