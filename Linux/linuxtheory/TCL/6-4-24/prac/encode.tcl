

proc encode {data}  {
set encoded [string reverse $data]
return $encoded 
}



set data "Abrar"
set encode1 [encode $data]


set f1 [open "output.txt" "w"]
puts $f1 $encode1
close $f1

puts "the Encoded data  is in file : output.txt"

