# Week 3 - ADA

## Program

Bubble sort in ADA.

Source code located in `bubblesort.adb`.

Compile and run with `make run`.

All make tasks: `compile`, `run`, `clean`.

## Testing

The program prints out the array in sorted order as expected.

## Weekly Question

*Compare your implementation of bubble sort with an implemenation in C (you
may have written one, if not, there are plenty on the internet you can look
at). What similarities and differences are there?*

A big difference is Ada's neeed for declarations before the procedure block
compared to C's declaration style, as well as Ada's type declaration when
declaraing an array compared to C's `[]`.

The swap procedure is very similar as it would be in C, just using `in out`
rather than pointers.

In C, array lengths are unkown, so a print function similar to my array print
procedure would need to take in an extra parameter giving the array size.

The for-each style loop of Ada is syntactically different from the C-style
for loop.

I find C's use of `,` to separate parameters less syntactically consistent
to Ada's `;`.

## Weekly Reflection

Ada has a very elegant syntax that is very readable and writable. It is 
easily my favourite of the languages learnt in this unit up to now.

The parameter passing syntax with `in` and/or `out` is very orthogonal and 
provides an elegant way to handle parameters without limiting possibilites
or using pointers.

Ada's information hiding is also a welcome addition, I like being able to
decide what members are private or public and not having to worry about
accidentally accessing members from visibly hidden scopes that modern
languages would hide.

Exception handling is great for the reliability and defence-in-depth, 
although Ada's implementation does violate Information Hiding (Which sort-of
goes against the entire philosophy of Ada) as the lack of inheritance or 
generic handlers means that exceptions are caught arbritarily and the handler
implementors must peek into the exception raising code somewhat to know what to
catch.

Ada's `loop` is great for abstracting definite, indefinite and infinite loops,
although the `exit` statement is a strucuted programming violation as it is
equivalent to a goto or break.
