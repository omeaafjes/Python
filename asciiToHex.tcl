proc substCipher { message key } {
 for {set i 0} { $i< [llength $message]} {incr i} {
  set subst([lindex $message $i]) [lindex $key $i]
 }
return [array get subst]
}
