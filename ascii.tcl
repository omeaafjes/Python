#This procedure produces the ascii character from ox20 till ox7E
proc ascii {} {
    set res {}
    for {set i 33} {$i<127} {incr i} {
        append res "[format %2.2X:%c $i $i] "
        if {$i%16==0} {append res \n}
    }
    set res
}
