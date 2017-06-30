proc hexToList hexs {
 set l {}
 for { set i 0 } { $i < [string length $hexs ] } { incr i 2 } { 
 lappend l [string index $hexs $i][string index $hexs [ expr $i + 1 ] ]
 }
return $l
}
