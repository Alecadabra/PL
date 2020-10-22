# Week 8 - Logic Programming

## Program



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



## Weekly Reflection


