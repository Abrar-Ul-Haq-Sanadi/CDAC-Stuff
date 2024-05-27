set l1 [list 1 10 20 15 7 9 11]
foreach num $l1 {
if {$num==20} { 
break
} else {
puts "number is $num"
}
}
