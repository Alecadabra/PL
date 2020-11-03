; Define two functions push and pop that operate on a stack as shown below:
; Given (define stack `(a b c))
; pop(stack) should return a
; push(d stack) should return (d a b c)

(
    define
    pop
    (
        lambda
        (_stack)
        (car _stack)
    )
)
(
    define
    push
    (
        lambda
        (_value _stack)
        (cons _value _stack)
    )
)
