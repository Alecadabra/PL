# Week 1 - Fortran

## Program

FizzBuzz in Fortran 77 up to 100.

Source code located in `FizzBuzz.f`

Compile with `f77 FizzBuzz.f`.

Run with `./a.out`.

Issue: The program outputs whitespace before printing numbers.

## Testing

Used testing script `TestFizzBuzz.bash`.

Test with `./a.out | ./TestFizzBuzz.bash`.

The program passes this test.

## Weekly Question

*How does Fortran compare with languages which you have used previously?*

While the syntax is definetely different from other languages that I am used
to (C, Java & Python), atleast for the simple FizzBuzz prgram written, it does
not feel significantly different to write in.
Maybe more differences would reveal themselves when writing a more complex
program, but the differences are mostly just semantics. The fundamental tools
that I'm used to are still present (Flow control, looping, strongly typed
variables). I also find the syntax is quite similar to Bash scripting which I
am comfortable with.

## Weekly Reflection

### Programming Principle Compliances

The lack of information hiding means that preservation of information is complied
to.

Fortran allows for abstraction by using subprograms.

### Programming Principle Violations

Fortran's reliance on goto is a violation of the Structured Programming principle
as program flow is not represented by the static structure of a Fortran program.

Fortran has a number of syntactic consistency and general regularity violations
such as the multiple types of goto.

Arrays in Fortran are limited to up to 3 dimensions, and identifier names are
limited to 6 characters - both Zero-One-Infinity violations.

There is no information hiding of any sort in Fortran.

### Readability, Writability and Reliability

Fortran's separation of declaratives and imperatives makes for quite readable
code. Although the reliance on gotos hurts readability as the program flow jumps
around a lot.

Writability suffers due to the lack of regularity.

Reliability suffers from the lack of error handling mechanisms, lack of scoped
constructs and absence of reserved words.
