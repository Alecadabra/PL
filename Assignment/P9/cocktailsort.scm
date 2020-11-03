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
        lambda (_list _size _gt)
        (
            if (< _size 2)

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
                                (- _size 1)
                                _gt
                            )
                        )
                    )

                    ; Else, stop the inner sort as the element has bubbled
                    ; to it's correct position
                    ; Nevermind - still recurse
                    (
                        cons
                        (car _list)
                        (
                            cocktail_sort_inner
                            (cdr _list)
                            (- _size 1)
                            _gt
                        )
                    )
                )
            )
        )
    )
)

(
    define cocktail_sort_outer
    (
        lambda (_list _size _gt)
        (
            if (= _size 1)

            ; Outer pass complete, return the sorted list
            (
                if _gt
                _list
                (reverse _list)
            )

            ; Else, perform complete inner sort and recurse with the next
            ; outer sort
            (
                let
                (
                    (
                        _inner_sorted_rev
                        (reverse (cocktail_sort_inner _list _size _gt))
                    )
                )
                (
                    cons
                    (car _inner_sorted_rev)
                    (
                        cocktail_sort_outer
                        (cdr _inner_sorted_rev)
                        (
                            if _gt
                            _size
                            (- _size 1)
                        )
                        (not _gt)
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
            (length _list)
            #t
        )
    )
)
