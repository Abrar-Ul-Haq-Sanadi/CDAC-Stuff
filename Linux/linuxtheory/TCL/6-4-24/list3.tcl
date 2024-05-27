set l1 [list 1 10 20 15 7 9 11]
foreach num $l1 { 
if { $num ==15 } { 
	continue
} elseif {$num == 9} { 
	break
} else {
	puts "Num is $num"
}
}


