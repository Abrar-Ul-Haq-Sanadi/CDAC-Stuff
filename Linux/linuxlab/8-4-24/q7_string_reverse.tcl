#Program to Reverse the string in TCL

set str "Hello Abrar"
set reversed ""

for { set i [string length $str]} {$i>=0} { incr i -1} {
	append reversed [string index $str [expr $i-1]]
}

puts "Reversed string is $reversed "


