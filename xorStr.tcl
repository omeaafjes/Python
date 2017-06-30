proc xorStr { str1 str2 } {
 set out {}
 if { [llength $str1 ] > [llength $str2 ] } {
  set max [ llength $str2 ]
 } else {
 set max [ llength $str1 ]
 }
for { set i 0}{ $i < $max }{incr i} {
 lappend out [ expr [ lindex $str1 $i ] ^ [ lindex $str2 $i ] ]
}

return $out

} 
  
