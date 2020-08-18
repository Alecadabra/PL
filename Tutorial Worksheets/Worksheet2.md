# Worksheet 2

## Algol & Pascal

### 1.

*Compare the static scoping implemented in ALGOL-60 with one implemented in
FORTRAN in terms of ease of access to variables and regularity in the language
design.*

### 2.

*What is call by name? What was its criticism?*

### 3.

*What is the difference between call-by-value and call-by-reference.*

### 4.

*Give two advantages that FORTRAN had over ALGOL-60.*

### 5.

*Name three major problems which were present in FORTRAN and were
addressed in ALGOL-60.*

### 6.

*Name two major contributions of ALGOL-60.*

### 7.

*What is the advantage of strong typing?*

### 8.

*What is the advantage of using pointers?*

### 9.

*What information can be found in an activation record?*

### 10.

*How does a static chain differ from a dynamic chain?*

### 11.

*What is a block and how does this relate to activation records?*

### 12.

*How does ALGOL solve the “dangling” ELSE problem? Is it different from C?*

### 13.

*Explain how tombstones can be used to address memory problems.*

### 14.

*What is the problem with dynamic scoping?*

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

##### (a)

*Show the stack with all activation record instances, including static and
dynamic chains, when executing reaches Position 1. Assume that PROCEDURE S
is at level 1.*

#### (b)

*Show the display that would be active at Position 1, along with the activation
record instances on the stack.*

### 16.

*What is the problem with structural equivalence when comparing two data
structures?*

### 17.

*What is name equivalence? Does it have any disadvantages?*

### 18.

*How were the arrays changed in Pascal when compared with Algol60? What was
the reason for the changes?*

### 19.

*In Pascal integers can be assigned to real variables but not vice-versa. What
programming principle does this violate? Would it be a good idea to allow real
numbers to be assigned to integer variables? Why?*
