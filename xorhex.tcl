proc xorHex { hex1 hex2 } {
 scan $hex1 %llx dec1
 scan $hex2 %llx dec2
  
 set r [ expr $dec1 ^ $dec2 ]


return [ format %llx $r ] 

}
