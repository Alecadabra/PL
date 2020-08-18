# Worksheet 1

## Languages

### 1.

*What are the factors that make a language readable?*

Meaningful keywords, syntax, easily understandable/abstractable features (Eg.
Objects, Data Structures).

### 2.

*Consider the C programming language. What changes would you make to the
language to make it more readable?*

Changing overlapping operator characters, improve func ptr syntax, booleans,
consistencies.

### 3.

*What are the factors that make a language writable?*

Library functions, intuative syntax, characters needed to complete a task
(See 'Code golf'), garbage collection, good error messages.

### 4.

*What are the disadvantages of making a language too simple? Is there a way to
alleviate this? Explain.*

May limit the scope of what's possible, performs worse.

Alleviation: Make it more complex :-).

### 5.

*What features contribute to making a language reliable? Compare and constrast
the reliability of Java and C.*

Java uses the JVM so can have garbage collection, exception handling, much
better reliability.

C could be much more reliable if it handled memory management itself.

## FORTRAN

### 1.

*Why was efficiency so important for the early generation programming
languages?*

They were very slow with small amounts of resources.

### 2.

*What were the advantages and disadvantages of pseudo-code interpreters?*

Advantages: Only learn a single language, share code between computers,
floating point operations possible as they are only possible in external
VMs.

Disadvantages: Very slow.

### 3.

*What is the syntactic consistency principle? Does FORTRAN comply with the
syntactic consistency principle? Consider the FORTRAN expression below as an
example:*

```fortran
(-B + SQRT(B**2-4*A*C)) / (2 * A)
```

The principle is that things that look the same should be the same.

FORTRAN violates this with ** for power and SQRT for square root and in other
places.

### 4.

*Does C violate the syntactic consistency principle? Provide an example.*

Yes. Multiple meanings of *, & etc., printf is a macro.

### 5.

*The GOTO statement is unavoidable in FORTRAN. If used incorrectly, which
principle does this violate? Provide an example.*

Violates just about everything.

### 6.

*Does FORTRAN allow for information hiding?*

No, everything is public by design. Functions can access all information of
scopes above them in the 'stack'.

### 7.

*What are the problems with the COMMON block statement in FORTRAN?*

It has no type safety, you can freely access it using whatever types you
wish.

### 8.

*What type of statement is the computed GOTO? How does it work?*

It works like a switch statement. The following shows equivalent switch
statements in both Java and Fortran.

```java
switch(20) {
    case 10:
    {
        // ...
        break;
    }
    case 20:
    {
        // This runs
        break;
    }
    case 30:
    {
        // ...
        break;
    }
}
```

```fortran
   GOTO (10,20,30) 2

C  ...

10 CONTINUE

C  ...

C  This runs
20 CONTINUE

C  ...

30 CONTINUE
```

### 9.

*What was the major contribution of FORTRAN?*

It moved programming away from machine-specific machiine code and towards
the high(er) level programming language paradigm.

### 10.

*FORTRAN has received a great deal of criticism but somehow this "old
dinousaur" language has managed to survive almost 5 decades. What do you
think is the reason for the fact that FORTRAN is still in use today?*

It is extremely efficient at maths operations, moreso than C or any other
well known language.

### 11.

*Name two major problems associated with FORTRAN. Provide an example for
each problem.*

Badly implemented strong typing (Where variable names are used to 'infer'
between int and float in the absence of a data type).

Numerous inconsistencies (Violations of regularity principle) (Eg. Multiple
definitions of GOTO with different purposes).

### 12.

*How does the integer type violate the regularity principle in FORTRAN?*

Strings can be stored in integers.

### 13.

*Specify three features offered by FORTRAN that one can remove in order to
make the language more secure.*

Use DO rather than GOTO.

Use FUNCTION and SUBPROGRAMs rahter than goto.

Use strong typing rather than inferred.
