proc findCapitals input {

set cap { 41 42 43 44 45 46 47 48 49 4a 4b 4c 4d 4e 4f 51 52 53 54 55 56 57 58 59 5a }
set l {}
set res {}

foreach k $cap {
 set p [ lsearch -all $input $k ]
 lappend l $p
}

foreach q $l {
 set res [ concat $res $q ]
}

return [ lsort -integer $res ]
}
