#!/usr/bin/gst

"Loops from 1 to 100 inclusive and run the cascading if-elses with 15
as a special case"

1 to: 100 do: [ :i |
    ( ( i rem: 15 ) == 0) ifTrue: [ 'FizzBuzz' displayNl ] ifFalse: [
        ( ( i rem: 5 ) == 0 ) ifTrue: [ 'Buzz' displayNl ] ifFalse: [
            ( ( i rem: 3 ) == 0 ) ifTrue: [ 'Fizz' displayNl ] ifFalse: [
                i printNl
            ]
        ]
    ]
] !
