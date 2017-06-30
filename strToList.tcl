proc strToList input {
 set output { }
 set slen [string length $input]
  
  for {set i 0} {$i < $slen} { incr i} {
   lappend output [string range $input $i $i]
  }
 return $output
}

