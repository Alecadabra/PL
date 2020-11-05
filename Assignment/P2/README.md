# Week 2 - Algol and Pascal

## Program

FizzBuzz in Algol 68 up to 100.

Source code located in `FizzBuzz.a68`.

Run with `a68g FizzBuzz.a68`.

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

### Programming Principle Compliances

Algol's introduction of proper scope with it's block strucutre is a Structured
Programming compliance.

The option of using a block wherever a single statement is expected complies with the
regularity principle.

Algol is Orthogonal in it's data types, for example ommiting the complex type from
Fortran as it could be represented more primitively as a 2-element array.

### Programming Principle Violations

Algol's regularity does suffer from semicolons seperating rather than ending 
statements.

Algol's scope delimiters are syntactically inconsistent; while `THEN` is used to 
start the scope of an `IF` or `ELIF`, there is no reserved word to end the scope,
only if it is the end of the entire `IF/ELIF/ELSE` chain, where `FI` is used.

### Readability, Writability and Reliability

Algol is writable in its regularity and in it's separation of reverved words and other
constructs by forcing uppercase on reserved words.

The block structure of Algol makes it very readable.

Strong typing improves the language's reliability.
