#!/usr/bin/gprolog --consult-file


fizzbuzz_check(I) :-
    divisible(I,15),
    print('FizzBuzz').

fizzbuzz_check(I) :-
    divisible(I,3),
    \+ divisible(I,15),
    print('Fizz').

fizzbuzz_check(I) :-
    divisible(I,5),
    \+ divisible(I,15),
    print('Buzz').


divisible(I, N) :- I mod N =:= 0.

fizzbuzz :- fizzbuzz(1).

fizzbuzz(1001).

fizzbuzz(I) :-
    I>0,
    fizzbuzz_check(I),
    nl,
    N is I + 1,
    fizzbuzz(N),
    !.

fizzbuzz(I) :-
    I>0,
    \+ fizzbuzz_check(I),
    print(I),
    nl,
    N is I + 1,
    fizzbuzz(N),
    !.
