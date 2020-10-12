# Week 6 - OO Basics and Smalltalk

## Program

FizzBuzz in Smalltalk.

I made mine run from 1 to 100 inclusive as with Fortran and Algol's FizzBuzz.

Source code located in `fizzbuzz.st`.

Run with `./fizzbuzz.st` or `gst fizzbuzz.st`.

## Testing

Used testing script `TestFizzBuzz.bash`.

Test with `./fizzbuzz.st | ./TestFizzBuzz.bash`.

The program passes this test.

## Weekly Question

*How does your implementation of fizz buzz here compare with the
implementations you wrote in Fortran and Algol in terms of readability and
writability?*

While the actual dynamic chain is very similar, the control flow is achieved
in very different ways due to the way in which Smalltalk works.

In Fortran and Algol, I used a for loop to iterate `i` from 1 to 100, and within
the loop I used control structures to perform checks on the current
value of `i` and print accordingly.

In Smalltalk, i take an `Integer` object literal of value `1` and have it
perform the `to:` operation with the argument of an `Integer` object literal of
value `100`.
This evaultes to create an object of `Interval` that goes from `1` to `100`
inclusive with the default step of `1`, which I have perform the `do:` operation
with the argument of an instance of a code block that performs the FizzBuzz logic,
which I won't go into further.

I think for programmer's coming from languages with more traditional design such as
C, Fortran, etc., Smalltalk will be less readable as it involves interpreting the code
in a completely new way of reading from left to right and keeping track of a long chain
of message passes. It's writability would also suffer for similar reasons, and also
because of how cumbersome some aspects of the language are, for example creating classes.

For brand new programmers, I think that Smalltalk is very easy to learn as it's extremely
regular and simple in it's pure OO approach. This makes it more readable and writable than
something like C or Fortran which are both full of irregularity and special cases.

## Weekly Reflection

I found Smalltalk a very interesting language to learn. Object Orientation itself is a
huge abstraction compliance (Although Smalltalk's single inheritance prevents any complex
class structures from being created) and the language's use of pure OO is also extrememly
regular and simple.

Smalltalk's error handling by suspending the process and allowing for modifications is
not great for defence in depth as it is not really a proper solution for large scale
operations or when the computer is not attended by the programmer.

Message passing is only really semantically different from procedure/function calling from
other languages, but it does have the benefit of being able to read the program flow
from left to right on a line.

Having object's perform their own operations is good for orthogonality and information
hiding, and it also allows for parallel computing.
