proc listToString input { 
 for { set i 0 } { $i < [llength $input] } { incr i } {
  append out [lindex $input $i]
 }
 return i
}
