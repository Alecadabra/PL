; Define a Scheme function exp that takes two arguments and returns as result
; the first argument to the power of the second argument. For example:
; (exp 2 3) returns 8 (exp 5 3) return 125

(
    define
    exp
    (
        lambda
        (
            _n ; Number
            _e ; Exponent
        )
        (
            if
            ; If the exponent is 0
            (= _e 0)

            ; Then, the answer is just 1
            1

            ; Else, the answer is the number multiplied by the recursion
            ; of this function with the exponent minus 1
            (* _n (exp _n (- _e 1)))
        )
    )
)
