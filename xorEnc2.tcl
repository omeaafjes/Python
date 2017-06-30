proc ::mytools::xorEnc { c1 c2 } {
 set rc1 [ string reverse $c1 ]
 set rc2 [ string reverse $c2 ]
 set r12 [ mytools::xorHex2 $rc1 $rc2 ]
 set rr12 [ string reverse $r12 ]
 
  return [ mytools::hexToList $rr12 ]
}
  
