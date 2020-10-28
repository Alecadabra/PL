# Worksheet 9

## Scheme

### 1

*Compare and contrast FPLs (functional programming languages) to procedural
languages.*

<!-- TODO -->

### 1

*What is referential transparency? Provide an example.*

The return of a function is directly tied to it's inputs, the return will never
change unless the inputs change. Think of simple mathematic equations.

### 2

*What is a side effect? Does this exist in FPLs?*

A function with a side effect effects things outside of it returning a value.

### 3

*Is there a distinction between a function declaration and function application in
FPLs?*

No, they are the same thing as they are all just function evaluations because
Scheme edits itself and evaluates lazily.

### 4

*Can functions in FPL be viewed as values?*

Yes, as a function's return is consistent when given the same parameters, only
difference is that the value is lazily evaluated. This is referential
transparency.

### 5

*What properties of functional languages makes them better able to exploit the
parallelism that results from multiprocessor systems than is possible with
imperative languages?*

* No side effects

* Immutable data

* No state

### 6

*Can FPLs be used in rapid prototyping?*

<!-- TODO -->

### 7

*Give the Scheme definition of a function called insert right 1st − − that takes 3
arguments. The function searches for the first occurrence of the second
argument in the input list and it inserts the first argument to its right. For
example:
`(insert right 1st ’not ’does ’(my dog does have fleas)) − −
returns (my dog does not have fleas)`*

<!-- TODO -->

### 8

*Define a Scheme function exp that takes two arguments and returns as result
the first argument to the power of the second argument. For example:
`(exp 2 3) returns 8`
`(exp 5 3) return 125`*

<!-- TODO - Must use multiplication and recursion here -->

### 9

*Name three ways in which Scheme complies with the Simplicity Principle.*

* Only lists and atoms of functions

* Precedence defined in syntax

* No side effects

### 10

*What are the values returned by the following expressions?*

#### i

*`(CAR ‘(A B C D))`*

`A`

#### ii

*`(CAR ‘((A B C D)))`*

`(A B C D)`

#### iii

*`(CDR ‘((A B) C D))`*

`(C D)`

#### iv

*`(CDR ‘(CDR (A B))).`*

`(A B)`

### 11

*Define a function that will compute the square value of a given
number using the lambda function.*

<!-- TODO -->

### 12

*Define two functions push and pop that operate on a stack as shown below:
Given `(define stack '(a b c))`
`pop(stack)` should return `a`
`push(d stack)` should return `(d a b c)`*

<!-- TODO -->

### 13

*Consider the following list:
`((1 (2 3)) 4 (5 (6 (7)) (8 9)))`*

#### i

*What is the first element?*

`(1 (2 3))`

#### ii

*What is the second element?*

`4`

#### iii

*What is the third element?*

`(5 (6 (7))`

#### iv

*What is the second embedded list?*

`(5 (6 (7))`

#### v

*How many elements does first embedded list have?*

2

#### vi

*what is the second element in the second embedded list?*

`(6 (7))`

### 14

*Define a function that accepts one number as an argument and multiplies it by 2.*

<!-- TODO -->

### 15

*Can the `CAR` and `CDR` functions be combined to get functions such as `CAAADAR`?
How are these functions evaluated?*

Yes, `CAAADAR` is equivalent to:

```scheme
CAR CDR CAR CAR CAR
```

