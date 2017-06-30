proc xorHex2 { hex1 hex2 } {
 set l1 [ string length $hex1 ]
 set l2 [ string length $hex2 ]
 if { $l1 > $l2 } {
  set start [ expr $l1 - $l2 ]
  set h1 [ string range $hex1 $start $l1 ]
  set h2 $hex2
 } else {
 set start [ expr $l2 - $l1 ]
 set h1 $hex1
 set h2 [ string range $hex2 $start $l2 ]
 }
 
 scan $h1 %llx dec1
 scan $h2 %llx dec2
  
 set r [ expr $dec1 ^ $dec2 ]


return [ format %llx $r ] 

}
