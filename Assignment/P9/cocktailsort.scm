; Cocktail Shaker Sort in Scheme

(
    define cocktail_sort_swap
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
    define cocktail_sort_inner
    (
        lambda (_list _gt)
        (
            if (<= (length _list) 1)

            ; List is sorted
            _list

            ; Else, sort
            (
                let
                (
                    (
                        _compare
                        (if _gt > <)
                    )
                    (
                        _write1
                        (write `Inner)
                    )
                    (
                        _write2
                        (write-line _gt)
                    )
                    (
                        _write3
                        (write-line _list)
                    )
                    (
                        _write4
                        newline
                    )
                )
                (
                    if (_compare (car _list) (cadr _list))

                    ; If the first two elements need swapping
                    (
                        let
                        (
                            ; Swapped list is the list with the first two
                            ; elements swapped
                            (
                                _swapped_list
                                (cocktail_sort_swap _list)
                            )
                        )
                        (
                            ; Prepend the first element of the swapped list
                            ; to the result of the recursion of this function
                            ; with the rest if the list
                            cons
                            (car _swapped_list)
                            (
                                cocktail_sort_inner
                                (cdr _swapped_list)
                                ;(- _size 1)
                                _gt
                            )
                        )
                    )

                    ; Else, stop the inner sort as the element has bubbled
                    ; to it's correct position
                    ;(
                        _list
                        ;cons
                        ;(car _list)
                        ;(
                        ;    cocktail_sort_inner
                        ;    (cdr _list)
                        ;    (- _size 1)
                        ;    _gt
                        ;)
                    ;)
                )
            )
        )
    )
)

(
    define cocktail_sort_outer
    (
        lambda (_list _gt)
        (
            if (<= (length _list) 1)

            ; Outer pass complete, return the sorted list
            _list

            ; Else, perform complete inner sort and recurse with the next
            ; outer sort
            (
                let
                (
                    (
                        _inner_sorted
                        (cocktail_sort_inner _list _gt)
                    )
                    (
                        _write1
                        (write-line `Outer:)
                    )
                    (
                        _write2
                        (write-line _list)
                    )
                    (
                        _write3
                        newline
                    )
                )
                (
                    if _gt

                    (
                        reverse
                        (
                            cons
                            (car (reverse _inner_sorted))
                            (
                                reverse
                                (
                                    cocktail_sort_outer
                                    (cdr (reverse _inner_sorted))
                                    (not _gt)
                                )
                            )
                        )
                    )

                    (
                        cons
                        (car (reverse _inner_sorted))
                        (
                            cocktail_sort_outer
                            (cdr (reverse _inner_sorted))
                            (not _gt)
                        )
                    )
                )
            )
        )
    )
)

(
    define cocktail_sort
    (
        lambda (_list)
        (
            cocktail_sort_outer
            _list
            #t
        )
    )
)

(cocktail_sort `(9 3 1 4 7))
