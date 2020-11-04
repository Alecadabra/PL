#!/usr/bin/gprolog --consult-file


% Fizzbuzz from 1 to 1000.
% See readme for instructions on compiling and running.



% Cases for 3, 5 and 15.

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



% Divisibility check.

divisible(I, N) :- I mod N =:= 0.



% Define bounds.

fizzbuzz :- fizzbuzz(1).

fizzbuzz(1001).



% Main logic

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
