# Worksheet 9

## Scheme

### 1

*Compare and contrast FPLs (functional programming languages) to procedural
languages.*



### 1

*What is referential transparency? Provide an example.*



### 2

*What is a side effect? Does this exist in FPLs?*



### 3

*Is there a distinction between a function declaration and function application in
FPLs?*



### 4

*Can functions in FPL be viewed as values?*



### 5

*What properties of functional languages makes them better able to exploit the
parallelism that results from multiprocessor systems than is possible with
imperative languages?*



### 6

*Can FPLs be used in rapid prototyping?*



### 7

*Give the Scheme definition of a function called insert right 1st − − that takes 3
arguments. The function searches for the first occurrence of the second
argument in the input list and it inserts the first argument to its right. For
example:
`(insert right 1st ’not ’does ’(my dog does have fleas)) − −
returns (my dog does not have fleas)`*



### 8

*Define a Scheme function exp that takes two arguments and returns as result
the first argument to the power of the second argument. For example:
`(exp 2 3) returns 8`
`(exp 5 3) return 125`*



### 9

*Name three ways in which Scheme complies with the Simplicity Principle. *



### 10

*What are the values returned by the following expressions?*

#### i

*`(CAR ‘(A B C D))`*



#### ii

*`(CAR ‘((A B C D)))`*



#### iii

*`(CDR ‘((A B) C D))`*

#### iv

*`(CDR ‘(CDR (A B))).`*



### 11

*Define a function that will compute the square value of number using the
lambda function.*



### 12

*Define two functions push and pop that operate on a stack as shown below:
Given (define stack '(a b c))
pop(stack) should return a
push(d stack) should return (d a b c)*



### 13

*Consider the following list:
`((1 (2 3)) 4 (5 (6 (7)) (8 9)))`*

#### i

*What is the first element?*



#### ii

*What is the second element?*



#### iii

*What is the third element?*



#### iv

*What is the second embedded list?*




#### v

*How many elements does first embedded list have?*



#### vi

*what is the second element in the second embedded list?*



### 14

*Define a function that accepts one number as an argument and multiplies it by 2.*



### 15

*Can the `CAR` and `CDR` functions be combined to get functions such as `CAAADAR`?
How are these functions evaluated?*


