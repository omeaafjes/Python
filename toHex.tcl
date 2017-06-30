proc toHex input {
 set out {}
  foreach m $input { 
   lappend out 0x$m
  }
 return out
}
