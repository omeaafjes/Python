# This procedure takes a list as input an produces a random permutation of the elements of the list

proc Perm { input } {
 set length [ llength $input ]
 set worklist $input
 for { set i 0} { $i < $length} { incr i } {
 set m [ expr $length - $i ]
 set randv [ expr $m * rand() ]
 set newindex [ expr int($randv) ]
 set permu($i) [ lindex $worklist $newindex ]
 set worklist [lreplace $worklist $newindex $newindex]
 # puts "$permu($i)"
 }
 # puts "isarray: [array exists permu]"
 return [array get permu]
}
 

 
