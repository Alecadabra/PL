# Worksheet 3

## ADA

### 1

*What is the problem with structural equivalence when comparing two data
structures?*

Two different data structures may have the same structure.

### 2

*What is name equivalence? Does it have any disadvantages?*

Comparing data structures based on names. It cannot differenciate between
multiple structures with different structures but the same name.

### 3

*How were the arrays changed in Pascal when compared with Algol60? What was the
reason for the changes?*

Pascal arrays have bounds fixed and part of the type, to pass an array into a
procedure, the procedure must accept an array of only those exact dimensions,
and an array can not be resized.

### 4

*In Pascal integers can be assigned to real variables but not vice-versa. What
programming principle does this violate? Would it be a good idea to allow real
numbers to be assigned to integer variables? Why?*

The regularity principle.

It probably would not be a good idea to allow cross-assigning between integer
and real types as reals would need to be truncated behind the scenes, violating
defence-in-depth.

### 5

*How does the subtype differ from the derived type in Ada?*

A subtype is still the type it's derived from, so for example, you could use
integer operations on a subtype of integer, but not on a new derived type of
integer.

### 6

*Compare the control structures of Pascal and Ada.*

Ada's looping is all done with the one `loop` structure, with different ways of
creating definite, indefinite and infinite loops, while Pascal did this with
separate loops.

Ada does not let you `goto` out of a procedure like Pascal does.

Conditional statements are very similar.

### 7

*What feature did ADA introduce to eliminate some of the problems associated with
the variable declaration?*

It allowed variables to be initialised on declaration.

### 8

*Is ADA more consistent syntactically when compared with Pascal?*

<!-- TODO -->

### 9

*One of the goals of Pascal was security. What changes (if any) would you make to the
language to make it more secure? Justify your answer.*

Add exception handling, as it allows for proper error control rather than complete
system crashes.

### 10

*Compare the syntax of ADA to that of C. Name two improvements you would make
to the C syntax. Justify your answer.*

Ada is much more readable as it relies more on meaningful reserved words in
statements rather than the positions of characters, for example C's function
declaration syntax.

The `in`/`out` control of procedure parameter passing is much more elegant
than C's single function return and full pointer system.

The reserved word `procedure` used to start a procedure declaration rather
than C's use of `<return type> <name>(<parameter list>) <body>` that is
not immediately readable.

### 11

*Which programming principles are violated by the exception handling
implemented in ADA?*

It violates information hiding as the exception name is defined only within
the inner workings of the package raising the exception, which violates what
Ada strived to do in it's improved information hiding.

### 12

*How are exceptions handled in ADA?*

Each scope may or may not have an exception handler for each exception, and
exceptions are passed up the dynamic chain until a handler is found for the
exception, or the exception hits `main` and the program crashes.

### 13

*Why does ADA still implement the GOTO statement?*

Backwards compatibility.

### 14

*Is the statement "ADA's parameter passing is more orthogonal when compared with
the parameter passing offered by ALGOL-60, FORTRAN or Pascal", false or true? Justify
your answer.*

True, it has the procedure decide on the effects that it has on the parameters.

### 15

*Compare and contrast the Pascal programming language with ADA.*

<!-- TODO -->

### 16

*What is a deadlock?*

When multiple execution threads hold Mutual Exclusion, Hold and Wait, Circular Wait,
and No Preemption.

### 17

*Is the position-independent parameter feature offered by ADA a good
programming feature? Justify your answer.*

I'm on the fence about it but it strikes me as less readable.

### 18

*What type of scoping is used for exceptions in ADA?*

Dynamic scoping.

### 19

*What are the advantages of the parameter passing in ADA when compared with
other procedural languages (your answer should discuss the advantages in terms of
the programming principles)?*

It is explicit which parameters are passed by value, reference or result and allows
for much more flexability. It is much more orthogonal.

### 20

*Explain why ADA can be regarded as an engineering trade-off.*

The user must make 'better' code with its information hiding, rather than relying
on the practices allowed for with goto-based flow and freely accessible data.

### 21

*Describe the modifications suggested by Wolf and Shaw to address the issues
associated with the block structure.*

<!-- TODO -->

### 22

*Describe how the control structures have evolved over the four generations of
programming languages (your answer should consider the programming principles).*

There is a clear move from jumps (gotos) to independent, readable control strucutres.

This improved on defence-in-depth (With errors created with less readable code),
structured programming (With FORTRAN's multiple gotos).

### 23

*Is the statement "FORTRAN allows a primitive way to achieve encapsulation", true
or false? Justify your answer.*

<!-- TODO -->
