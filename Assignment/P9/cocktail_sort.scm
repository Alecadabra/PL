; Cocktail Shaker Sort in Scheme
; Eg. (cocktail_sort `(4 2 5 1 3)) returns (1 2 3 4 5)

(
    ; Swap the first two element of the list
    define _cocktail_sort_swap
    (
        lambda (_list)
        (
            cons
            (cadr _list)
            (
                cons
                (car _list)
                (cddr _list)
            )
        )
    )
)


(
    ; Inner recursion for cocktail shaker sort - bubbles the largest/smallest
    ; element up depending on the _gt flag
    define _cocktail_sort_inner
    (
        lambda
        (
            _list ; List to sort
            _gt   ; Comparison operator, explained elsewhere
        )
        (
            if (<= (length _list) 1)

            ; Base case - got to the end of the list
            _list

            ; Else, bubble one more
            (
                let
                (
                    (
                        ; Comparison operator is > for the forward shake
                        ; and < for the backwards shake
                        _compare
                        (if _gt > <)
                    )
                )
                (
                    let
                    (
                        (
                            ; Redefine _list if swap is required
                            _list
                            (
                                if (_compare (car _list) (cadr _list))
                                (_cocktail_sort_swap _list)
                                _list
                            )
                        )
                    )
                    (
                        ; Recurse
                        cons
                        (car _list)
                        (
                            _cocktail_sort_inner
                            (cdr _list)
                            _gt
                        )
                    )
                )
            )
        )
    )
)

(
    ; Outer recursion for coktail shaker sort - runs the inner recrsion _n
    ; times
    define _cocktail_sort_outer
    (
        lambda
        (
            _list ; List to sort
            _n    ; n from (length _list) to 1
            _gt   ; True for greater than comparison, false for less than
        )
        (
            if (= _n 1)

            ; Base case - Reverse the list if needed
            (
                if _gt
                _list
                (reverse _list)
            )

            ; Run the outer sort on the inner sort
            (
                let
                (
                    (
                        _inner_sorted
                        (_cocktail_sort_inner _list _gt)
                    )
                )
                (
                    ; Recurse
                    _cocktail_sort_outer
                    (reverse _inner_sorted) ; Shake the list the other way
                    (- _n 1)
                    (not _gt) ; Swap between `>` and `<`
                )
            )
        )
    )
)

(
    ; Cocktail shaker sort!
    define cocktail_sort
    (
        lambda (_list)
        (
            _cocktail_sort_outer
            _list
            (length _list)
            #t
        )
    )
)
