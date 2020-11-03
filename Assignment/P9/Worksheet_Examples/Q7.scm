; Give the Scheme definition of a function called insert-right-1st that
; takes 3 arguments. The function searches for the first occurrence of the
; second argument in the input list and it inserts the first argument to its
; right. For example:
; (insert-right-1st `not `does `(my dog does have fleas))  
; returns (my dog does not have fleas) 

(
    define
    insert-right-1st
    (
        lambda
        (
            _insert ; Value to insert to the right of _match
            _match  ; Value to find to insert _insert after
            _list   ; List to operate on
        )
        (
            if
            (
                ; If the next element in the list is the match
                eqv? (cadr _list) _match
            )
            (
                ; Then, prepend the insert value to the rest of the list and
                ; prepend to that the first element of the list
                cons (car _list) (cons _insert (cdr _list))
            )
            (
                ; Else, prepend the first element of the list to the recursive
                ; result of this function run with the rest of the list
                cons (car _list) (insert-right-1st _insert _match (cdr _list))
            )
        )
    )
)
