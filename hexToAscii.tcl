proc hexToAscii { input } {
 set LEN [ llength $input ]
 for { set i 0 } { $i < $LEN } { incr i } {
  set h [ split [lindex $input $i] : ]
  #puts $h
  set out([lindex $h 0]) [lindex $h 1]
  }
 return [array get out]
}

