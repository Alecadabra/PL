# Week 3 - ADA

## Program

Bubble sort in ADA.

Source code located in `bubble sort.adb`.

Compile and run with `make run`.

All make tasks: `compile`, `run`, `clean`.

## Testing

The program prints out the array in sorted order as expected.

## Weekly Question

*Compare your implementation of bubble sort with an implementation in C (you
may have written one, if not, there are plenty on the internet you can look
at). What similarities and differences are there?*

A big difference is Ada's need for declarations before the procedure block
compared to C's declaration style, as well as Ada's type declaration when
declaring an array compared to C's `[]`.

The swap procedure is very similar as it would be in C, just using `in out`
rather than pointers.

In C, array lengths are unknown, so a print function similar to my array print
procedure would need to take in an extra parameter giving the array size.

The for-each style loop of Ada is syntactically different from the C-style
for loop.

I find C's use of `,` to separate parameters less syntactically consistent
to Ada's `;`.

## Weekly Reflection

### Programming Principle Compliances

The parameter passing syntax with `in` and/or `out` is very orthogonal. It 
allows for pass by reference without pointers, and explicit control over
side effects.

Ada's access types are an Information Hiding compliance.

Ada's `loop` is great for abstracting definite, indefinite and infinite loops.

Exception handling is a compliance of defence in depth.

### Programming Principle Violations

The `exit` statement is a structured programming violation as it is
equivalent to a goto or break.

The implementation of exception handling violates Information Hiding as the lack
of inheritance or generic handlers means that exceptions are caught arbitrarily
and the handler implementers must peek into the exception raising code somewhat
to know what to catch.

### Readability, Writability and Reliability

Ada has a very elegant and regular syntax that is very readable and writable.

Exception handling is a reliability improvement.
