# Worksheet 2

## Algol & Pascal

### 1.

*Compare the static scoping implemented in ALGOL-60 with one implemented in
FORTRAN in terms of ease of access to variables and regularity in the language
design.*

Allows for proper local variables as we know them today, compile-time catching
of declaration problems, and allows the programmer to determine the connection
between the identifier use and it's declaration.

### 2.

*What is call by name? What was its criticism?*

Like pass-by-reference except it had some niche problems, it evaluates the
referenced values lazily so can be inconsistent with what parameters are
evaluated across multiple runs.

### 3.

*What is the difference between call-by-value and call-by-reference.*

The call-by-name parameters are evaluated lazily.

### 4.

*Give two advantages that FORTRAN had over ALGOL-60.*

Built-in IO, faster math.

### 5.

*Name three major problems which were present in FORTRAN and were
addressed in ALGOL-60.*

Fortran didn't have proper scope, Algol-60 introduced the modern scope idea.

Fortran didn't have reserved words, which Algol-60 introduced.

Fortan was machine-dependent, could only be used on IBM machines, Algol-60
was machine-independent.

### 6.

*Name two major contributions of ALGOL-60.*

Block structure.

### 7.

*What is the advantage of strong typing?*

Allows the elimination of type mismatch errors before run time.

### 8.

*What is the advantage of using pointers?*

Allows direct addressing and dynamic storage management.

### 9.

*What information can be found in an activation record?*

The code that makes up a procedure and the place in the code that is being
executed right now (The instruction part), and the values of the visible
variables (The environment part).

### 10.

*How does a static chain differ from a dynamic chain?*

A dynamic chain stores the activation records for parent scopes in child
scopes to allow full stack access.

### 11.

*What is a block and how does this relate to activation records?*

Each scope has an activation record.

### 12.

*How does ALGOL solve the “dangling” ELSE problem? Is it different from C?*

<!-- TODO -->

### 13.

*Explain how tombstones can be used to address memory problems.*

Denotes that a pointer is not being used (When it points to a tombstone), eg.
NULL.

### 14.

*What is the problem with dynamic scoping?*

<!-- TODO -->

### 15.

*Given the following program fragment:*

```algol
PROCEDURE S; 
    PROCEDURE A;
        PROCEDURE B;
            PROCEDURE D;
            BEGIN
            …
            END; {Procedure D}
        BEGIN

        Position 1;

        END; {Procedure B}
        PROCEDURE C;
        BEGIN
            B;
        END; {Procedure C}
    BEGIN
        C;
    END; {Procedure A}
BEGIN
    A;
END; {Procedure S}
```

#### (a)

*Show the stack with all activation record instances, including static and
dynamic chains, when executing reaches Position 1. Assume that PROCEDURE S
is at level 1.*

#### (b)

*Show the display that would be active at Position 1, along with the 
activation record instances on the stack.*

### 16.

*What is the problem with structural equivalence when comparing two data
structures?*

### 17.

*What is name equivalence? Does it have any disadvantages?*

### 18.

*How were the arrays changed in Pascal when compared with Algol60? What was
the reason for the changes?*

Arrays did not know their type until data was added to them.

### 19.

*In Pascal integers can be assigned to real variables but not vice-versa. What
programming principle does this violate? Would it be a good idea to allow real
numbers to be assigned to integer variables? Why?*
