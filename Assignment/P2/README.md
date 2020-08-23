# Week 2 - Algol and Pascal

## Program

FizzBuzz in Algol 68 up to 100.

Run with `a68g FizzBuzz.a68`

Issue: The program outputs whitespace before printing numbers.

## Testing

Used testing script `TestFizzBuzz.bash`.

Test with `a68g FizzBuzz.a68 | ./TestFizzBuzz.bash`.

The program passes this test.

I adjusted my test program to accept the signed integer output that Algol uses.

## Weekly Question

*Assume your program pauses when it prints fizzbuzz. Draw the stack with all
activation records, and both static and dynamic chains, at this point.*

![Diagram](https://i.imgur.com/fWZRxHY.png)

## Weekly Reflection

Based on my limited trial run of Algol 68, I find the syntax to be very readable but writability does suffer. The forced use of uppercase reserved words is quite restrictive and the language is very particular about its placement of semicolons; It seems that that semicolons must separate statements within a block, but not the last statement of a block, which was hard to figure out.

The scope delimiters also took a bit of getting used to, `THEN` is used to start the scope of an `IF` or `ELIF`, which makes sense, but there is no reserved word to end the scope, only if it is the end of the entire `IF/ELIF/ELSE` chain, where `FI` is used. This violates the syntactic consistency principle without inconsistent and arbritary scope declaration.

Algol's introduction of proper scope and local variables makes for much better code, I'd say that it improves the reliability of the language.

Algol's syntactic consistency descision to use `:=` for assignment and `=` for equality was easy to adjust to and a good overall descision.

The option of using block strure or a single line statement for things like `IF` statements is a nice addition and complies with the regularity principle.
