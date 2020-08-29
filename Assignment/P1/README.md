# Week 1 - Fortran

## Program

FizzBuzz in Fortran 77 up to 100.

Source code located in FizzBuzz.f`

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

Fortran's separation of declaratives and imperatives makes for quite readable
code.

The unusal syntax of if-then-else hurts readability for me as someone that is
used to the modern syntax.

The use of line labels for use with goto hurts readability for me as someone
that was incouraged to never touch goto in any language so is not used to
reading the flow of the program with gotos present.

The complete lack of information hiding in Fortran is very jarring for me as
I am used to creating very OO code and being very careful about information
hiding. For me this would also be a defence-in-depth problem and would hurt
the reliability of programs written.

I didn't end up running into any of the multiple regularity principle
violations present in Fortran, but based on how much similar violations
annoyed me when I learnt C, I imagine they would hurt the readability and
reliability of programs.
