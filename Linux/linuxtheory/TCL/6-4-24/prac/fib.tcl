puts "Enter the Number of fib you want: "
gets stdin n

set n1 0
set n2 1
set n3 [expr $n1 + $n2]
puts "$n1"
puts "$n2"

for { set i 2} { $i < $n } {incr i} {
        puts "$n3"

        set n1 $n2
        set n2 $n3
        set n3 [expr $n1+$n2]

}
