# Week 8 - Logic Programming

## Program

Fizzbuzz in Prolog up to 1000.

Source code located in `fizzbuzz.pro`.

Compile and run with `make run`.

Or, `gplc fizzbuzz.pro`, `./fizzbuzz`.

And enter `fizzbuzz.` into the Prolog interactive interpreter.

## Testing

Using the same test program `TestFizzBuzz.bash`, although it can't be used
directly due to Prolog's interactive terminal.

```bash
# Compile
$ make

# Run the compiled file, piped into grep to filter out everything but the
# fizzbuzz output, piped into the test program, specifying to go to 1000.
$ ./fizzbuzz \
      | grep -E '^(Fizz|Buzz|FizzBuzz|[0-9]+)$' \
      | ./TestFizzBuzz.bash 1000
```

Prolog terminal and test program combined output and prompt

```
| ?- Testing FizzBuzz from 1 to 1000
```

Input exactly this

```
fizzbuzz.
```

Prolog terminal and test program combined expected output

```
| ?- Test completed
```

Send EOF (`^D`) to exit Prolog.

All together, it looks like this:

```
$ ./fizzbuzz | grep -E '...' | ./TestFizzBuzz.bash 1000
?- Testing FizzBuzz from 1 to 1000
fizzbuzz.
?- Test completed

```

The program passes this test.


## Weekly Question

*Was fizz buzz easier or harder to implement in Prolog? Why or why not?*

Fizz buzz was harder to implement in Prolog as I had to learn to think
in the logic programming paradigm. Although, once I was over that hurdle,
the language is very writable, so I was able to define the FizzBuzz
functionality quite quickly. This is because I did not have to define
exactly 'how' fizz buzz would work in a procedural sense, but
rather just 'what' fizz buzz is, and the backwards chaining handles
the procedural steps.

## Weekly Reflection

### Programming Principle Compliances

Prolog's two simple language constructs of facts and rules make for a 
very regular, simplistic and orthogonal environment.

### Programming Principle Violations

The nature of the facts/rules accessible by the interpreter via queries
make for a violation of the information hiding principle as all rules
and facts are public and cannot be encapsulated in any way.

The structure of a Prolog program in its discrete, arbitrarily ordered
facts and rules makes for a less readable program that does not follow
the structured programming principle, especially as the programs often
work by abusing side effects of rules.

### Readability, Writability and Reliability

As mentioned above in Prolog's violation of the structured programming
principle, it is not a very readable language.

While learning a logic language is difficult from programmers coming
from a procedural background, once learnt, Prolog is very writable
in its simplicity and regularity.
