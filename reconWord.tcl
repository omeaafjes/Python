proc reconWord  { q } {
# takes array q as input as key, value list
 array set xor $q
 foreach i { 0 1 2 3 4 5 6 7 8 9 } {
  foreach k [ mytools::findCapitals $xor($i,10) ] {
   set word($k) [ lindex $xor($i,10) $k ]
   puts word($k)
  }
 }
 return [ array get word ]
}
  
