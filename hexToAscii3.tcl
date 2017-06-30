proc hexToAscii3 { input1 } {
 set input [ string tolower $input1 ]
 set LEN [ llength $input ]
 for { set i 0 } { $i < $LEN - 1 } { incr i } {
  set h [ split [lindex $input $i] : ]
  #puts $h
  set out([lindex $h 0]) [lindex $h 1]
  }
 return [array get out]
}

