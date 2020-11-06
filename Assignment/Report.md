# Week 1 - Fortran

## Program

FizzBuzz in Fortran 77 up to 100.

File: `FizzBuzz.f`

```f
c     Alec Maughan PL Workshop 1
c     Fortran 77 FizzBuzz

      program FizzBuzz
      integer i

      do 10 i = 1, 100
          if ((MOD(i, 3) .EQ. 0) .AND. (MOD(i, 5) .EQ. 0)) then
              write(*,*) 'FizzBuzz'
          elseif (MOD(i, 3) .EQ. 0) then
              write(*,*) 'Fizz'
          elseif (MOD(i, 5) .EQ. 0) then
              write(*,*) 'Buzz'
          else
              write(*,*) i
          endif
10    continue

      stop
      end
```

Issue: The program outputs whitespace before printing numbers.

## Testing

Compiled using f77 in bash with `f77 FizzBuzz.f`, generating file `a.out`.

Ran in bash with `./a.out`.

Sample output:

```txt
           1
           2
 Fizz
           4
 Buzz
 Fizz
           7
           8
 Fizz
 Buzz
          11
 Fizz
          13
          14
 FizzBuzz
          16
          17
 Fizz
          19
 Buzz
...
 Buzz
 Fizz
          82
          83
 Fizz
 Buzz
          86
 Fizz
          88
          89
 FizzBuzz
          91
          92
 Fizz
          94
 Buzz
 Fizz
          97
          98
 Fizz
 Buzz
```

Used testing script `TestFizzBuzz.bash` shown below.

```bash
#!/bin/bash

if [ $# = 0 ]
then
    upper=100
else
    upper=$1
fi


echo "Testing FizzBuzz from 1 to $upper"

for i in $(seq 1 $upper)
do
    # Get the current output
    read test

    # Compute expected
    if [[ $(($i % 3)) == 0 && $(($i % 5)) == 0 ]]
    then
        if [ "$test" != "FizzBuzz" ]
        then
            echo "FAIL: Number $i, Expected FizzBuzz, got $test"
        fi
    elif [ $((i % 5)) == 0 ]
    then
        if [ "$test" != "Buzz" ]
        then
            echo "FAIL: Number $i, Expected Buzz, got $test"
        fi
    elif [ $((i % 3)) == 0 ]
    then
        if [ "$test" != "Fizz" ]
        then
            echo "FAIL: Number $i, Expected Fizz, got $test"
        fi
    else
        if [ "$test" != "$i" ] && [ "$test" != "+$i" ]
        then
            echo "FAIL: Number $i, Expected $i, got $test"
        fi
    fi
done

echo "Test Completed"
```

Tested in bash with `./a.out | ./TestFizzBuzz.bash`.

The program passes this test with the following output to terminal.

```txt
Testing FizzBuzz from 1 to 100
Test Completed
```

The test script would print out values that are found to be incorrect.

## Weekly Question

*How does Fortran compare with languages which you have used previously?*

While the syntax is definitely different from other languages that I am used
to (C, Java & Python), at least for the simple FizzBuzz program written, it does
not feel significantly different to write in.
Maybe more differences would reveal themselves when writing a more complex
program, but the differences are mostly just semantics. The fundamental tools
that I'm used to are still present (Flow control, looping, strongly typed
variables). I also find the syntax is quite similar to Bash scripting which I
am comfortable with.

## Weekly Reflection

### Programming Principle Compliances

The lack of information hiding means that the language complies with the preservation of information principle.

Fortran allows for abstraction by using subprograms.

### Programming Principle Violations

Fortran's reliance on goto is a violation of the Structured Programming principle
as program flow is not represented by the static structure of a Fortran program.

Fortran has several syntactic consistency and general regularity violations
such as the multiple types of goto.

Arrays in Fortran are limited to up to 3 dimensions, and identifier names are
limited to 6 characters - both Zero-One-Infinity violations.

There is no information hiding of any sort in Fortran.

### Readability, Writability and Reliability

Fortran's separation of declaratives and imperatives makes for quite readable
code. Although the reliance on gotos hurts readability as the program flow jumps
around a lot.

Writability suffers due to the lack of regularity.

Reliability suffers from the lack of error handling mechanisms, lack of scoped
constructs and the absence of reserved words.

# Week 2 - Algol and Pascal

## Program

FizzBuzz in Algol 68 up to 100.

File: `FizzBuzz.a68`

```a68
# Alec Maughan PL Workshop 2 #
# Algol 68 FizzBuzz #

FOR i TO 100
DO
    IF i MOD 15 = 0
    THEN
        print ("FizzBuzz")
    ELIF i MOD 3 = 0
    THEN
        print ("Fizz")
    ELIF i MOD 5 = 0
    THEN
        print ("Buzz")
    ELSE
        print (i)
    FI;

    print (newline)
OD
```

Issue: The program outputs whitespace before printing numbers.

## Testing

Ran using a68g in bash with `a68g FizzBuzz.a68`.

Sample output:

```txt
         +1
         +2
Fizz
         +4
Buzz
Fizz
         +7
         +8
Fizz
Buzz
        +11
Fizz
        +13
        +14
FizzBuzz
        +16
        +17
Fizz
        +19
Buzz
...
Buzz
Fizz
        +82
        +83
Fizz
Buzz
        +86
Fizz
        +88
        +89
FizzBuzz
        +91
        +92
Fizz
        +94
Buzz
Fizz
        +97
        +98
Fizz
Buzz
```

Used previously mentioned testing script `TestFizzBuzz.bash`.

Tested in bash with `a68g FizzBuzz.a68 | ./TestFizzBuzz.bash`.

The program passes this test with the following output to terminal.

```txt
Testing FizzBuzz from 1 to 100
Test Completed
```

## Weekly Question

*Assume your program pauses when it prints fizzbuzz. Draw the stack with all
activation records, and both static and dynamic chains, at this point.*

![Diagram](https://i.imgur.com/fWZRxHY.png)

## Weekly Reflection

### Programming Principle Compliances

Algol's introduction of proper scope with its block structure is a Structured
Programming compliance.

The option of using a block wherever a single statement is expected complies with the
regularity principle.

Algol is Orthogonal in its data types, for example, omitting the complex type from
Fortran as it could be represented more primitively as a 2-element array.

### Programming Principle Violations

Algol's regularity does suffer from semicolons separating rather than ending 
statements.

Algol's scope delimiters are syntactically inconsistent; while `THEN` is used to 
start the scope of an `IF` or `ELIF`, there is no reserved word to end the scope,
only if it is the end of the entire `IF/ELIF/ELSE` chain, where `FI` is used.

### Readability, Writability and Reliability

Algol is writable in its regularity and in its separation of reserved words and other
constructs by forcing uppercase on reserved words.

The block structure of Algol makes it very readable.

Strong typing improves the language's reliability.

# Week 3 - ADA

## Program

Bubble sort in ADA.

File: `bubblesort.adb`

```adb
-- Alec Maughan PL Workshop 3
-- Ada Bubble Sort

with Ada.Text_IO;
use Ada.Text_IO;

procedure BubbleSort is
    type Data_Array is array (0 .. 9) of Integer;

    DATA : Data_Array;
    SWAPPED : Boolean := False;

    procedure Swap (A : in out Integer; B : in out Integer) is
        TEMP : Integer;
    begin
        TEMP := A;
        A := B;
        B := TEMP;
    end Swap;

    procedure Print_Data_Array (DATA : in Data_Array) is
    begin
        Put ("[");
        Print_Data: for I in DATA'Range loop
            Put (Integer'Image(DATA (I)));
            if I /= DATA'Last then
                Put (",");
            end if;
        end loop Print_Data;
        Put_Line (" ]");
    end Print_Data_Array;

begin
    -- Fill array
    Fill_Data: for I in DATA'Range loop
        DATA (I) := 100 - I ** 2;
    end loop Fill_Data;

    -- Print
    Put ("Unsorted: ");
    Print_Data_Array (DATA);

    -- Sort
    Sort: for I in DATA'First .. DATA'Last - 1 loop
        SWAPPED := False;
        Inner_Sort: for J in DATA'First .. DATA'Last - 1 loop
            if DATA (J) > DATA (J + 1) then
                Swap (DATA (J), DATA (J + 1));
                SWAPPED := True; 
            end if;
        end loop Inner_Sort;

        -- If no element was swapped, the array is sorted
        exit Sort when not SWAPPED;
    end loop Sort;

    -- Print
    Put ("Sorted:   ");
    Print_Data_Array (DATA);

end BubbleSort;
```

## Testing

Compiling and running handled with the following makefile using gnatmake.

```makefile
# Alec Maughan PL Assignment Week 3 ADA Bubble sort Makefile ----------------- #

SRC_NAME = bubblesort.adb
EXEC_NAME = bubblesort

compile: $(SRC_NAME)
	gnatmake $(SRC_NAME)

run: compile
	./$(EXEC_NAME)

clean:
	rm -f $(EXEC_NAME) *.o *.ali
```

Compile and run in bash with `make run`.

Sample output:

```txt
Unsorted: [ 100, 99, 96, 91, 84, 75, 64, 51, 36, 19 ]
Sorted:   [ 19, 36, 51, 64, 75, 84, 91, 96, 99, 100 ]
```

The program prints the array in sorted order as expected.

## Weekly Question

*Compare your implementation of bubble sort with an implementation in C (you
may have written one, if not, there are plenty on the internet you can look
at). What similarities and differences are there?*

A big difference is Ada's need for declarations before the procedure block
compared to C's declaration style, as well as Ada's type declaration when
declaring an array compared to C's `[]`.

The swap procedure is very similar as it would be in C, just using `in out`
rather than pointers.

In C, array lengths are unknown, so a print function similar to my array print
procedure would need to take in an extra parameter giving the array size.

The for-each style loop of Ada is syntactically different from the C-style
for loop.

I find C's use of `,` to separate parameters less syntactically consistent
to Ada's `;`.

## Weekly Reflection

### Programming Principle Compliances

The parameter passing syntax with `in` and/or `out` is very orthogonal. It 
allows for pass by reference without pointers, and explicit control over
side effects.

Ada's access types are an Information Hiding compliance.

Ada's `loop` is great for abstracting definite, indefinite and infinite loops.

Exception handling is a compliance of defence in depth.

### Programming Principle Violations

The `exit` statement is a structured programming violation as it is
equivalent to a goto or break.

The implementation of exception handling violates Information Hiding as the lack
of inheritance or generic handlers means that exceptions are caught arbitrarily
and the handler implementers must peek into the exception raising code somewhat
to know what to catch.

### Readability, Writability and Reliability

Ada has a very elegant and regular syntax that is very readable and writable.

Exception handling is a reliability improvement.

# Week 4 - Yacc/Bison and Lex/Flex

## Program

Yacc/Lex program that accepts a list of numbers eg. `[1, 4, 3]` and outputs
the list in sorted order eg. `[1, 3, 4]`.

File: `sorter.l`

```l
%{
#include <stdio.h>

#include "y.tab.h"
%}

%%

[ \t]           /* whitespace */
\n              /* eol */
[0-9]+          { yylval = atoi(yytext); return VALUE; }
,               return COMMA;
\[              return OPEN;
\]              return CLOSE;

%%
```

File: sorter.y

```y
%{
#include <stdio.h>
#include <stdlib.h>

int yyparse();
int yylex();

// Essentially an ArrayList structure, but it starts at zero size and is only
// resized by one each time
int listIdx = 0;
int* list = NULL;
int listSize = 0;

void yyerror(const char *str)
{
    fprintf(stderr, "%s\n", str);
}

int yywrap()
{
    return 1;
}

int main()
{
    list = (int*)malloc(0);
    yyparse();
    free(list);
    list = NULL;
}

void addToList(int val) {
    // It's horribly innificent, but this just reconstructs the list with
    // an extra free element
    listSize++;
    int *newList = (int*)malloc(sizeof(int) * listSize);

    for(int i = 0; i < listSize - 1; i++) {
        newList[i] = list[i];
    }
    free(list);
    list = newList;

    list[listIdx] = val;
    listIdx++;
}

void sort() {
    // Bubble sort, adapted from my ADA bubblesort
    int swapped = 0;
    int temp;

    for(int i = 0; i < listSize - 1; i++) {
        swapped = 0;
        for(int j = 0; j < listSize - 1; j++) {
            if(list[j] > list[j + 1]) {
                temp = list[j];
                list[j] = list[j + 1];
                list[j + 1] = temp;
                swapped = 1;
            }
        }

        if(!swapped) break;
    }
}

%}

%token VALUE COMMA OPEN CLOSE

%%

lists:
    lists list
    |
    list
    ;

list:
    OPEN CLOSE
    {
        printf("[]\n");
    }
    |
    OPEN list_content CLOSE
    {
        // Sort the list
        sort();

        // Print the list
        printf("[%d", list[0]);
        for(int i = 1; i < listSize; i++) {
            printf(", %d", list[i]);
        }
        printf("]\n");

        free(list);
        listSize = 0;
        listIdx = 0;
        list = (int*)malloc(0);
    }
    ;

list_content:
    VALUE
    {
        addToList($1);
    }
    |
    list_content COMMA VALUE
    {
        addToList($3);
    }
    ;

%%
```

## Testing

Compiling and running handled with the following makefile using lex and yacc.

```makefile
# Alec Maughan PL Assignment Week 4 Yacc/Lex Sorter Makefile ---------------- #

# Values -------------------------------------------------------------------- #

# Base name of program
NAME = sorter

# Source files
SRC = $(NAME).y $(NAME).l

# Executable file
EXEC = $(NAME)

# Generated files
GENERATED = $(EXEC) y.tab.* lex.yy.*

# Tasks --------------------------------------------------------------------- #

all                 : $(SRC) $(EXEC)


lex.yy.c lex.yy.h   : $(NAME).l
	lex $(NAME).l


y.tab.c y.tab.h     : lex.yy.c lex.yy.h $(NAME).y
	yacc -d $(NAME).y


$(EXEC)             : lex.yy.c y.tab.c
	cc lex.yy.c y.tab.c -o $(EXEC)


run                 : $(EXEC)
	./$(EXEC)


clean               :
	rm -rf $(GENERATED)
```

Compile and run in bash with `make run`.

Enter a list using the syntax shown above and a newline, exit with EOF (^D).

Sample input/outputs (The first list is the user input, the second is the
sorted output):

```txt
[1, 7, 3, 2, 8, 3, 7, 1, 4, 3]
[1, 1, 2, 3, 3, 3, 4, 7, 7, 8]
[43852, 428924, 82894, 482435, 589234, 58925]
[43852, 58925, 82894, 428924, 482435, 589234]
[6]
[6]
[]
[]
```

The program prints the array in sorted order as expected.

## Weekly Question

*If you were building a compiler, how do you think you would implement
a symbol table?*

An array of table\entry struts, where each table\entry contains the symbol's
name, it's full data type, the scope it's contained in, and it's value.

Value will be a memory address if it's a reference type, the primitive value
if primitive, or the starting position of the scope if a function.

Lex would be used to build all the tokens and Yacc would build the table
itself.

## Weekly Reflection

### Programming Principle Compliances

Lex's use of regular expressions is very regular (wow) and yacc's syntax
is very transferable from BNF, which is also regular.

The idea of labelling tokens within Lex and dealing with them as just tokens
in Yacc is a compliance of the Labelling Programming Principle.

The separation of Lex and Yacc into separate programs increases orthogonality.

### Programming Principle Violations

Defence in Depth is violated due to syntax errors not being meaningfully 
described.

Having C as the driving language also brings all of C's violations into the system.

### Readability, Writability and Reliability

Readability suffers as there is always going to be C code breaking up the Yacc or
Lex.

Using C as the driving language for Yacc & Lex makes it very writable as most
programmers will be able to write well in C. The use of regular expressions
also helps writability.

Reliability suffers are error messages for invalid syntax are not helpful.

# Week 5 - Scripting Languages

## Program

A script to find every `.conf` file on a computer in bash, perl and ruby.

File: `findConfig.bash` (Bash)

```bash
#!/bin/bash

# Recursively finds all files ending in '.conf' to stdout in find's default
# format.
#
# By default checks root or, if given, checks $1.

# Get path or default to root
if [ $# = 0 ]
then
    dir=/
else
    dir=$1
fi

# Use find, specify to look for files match `*conf`
find $dir -type f -name '*.conf' 2>/dev/null
```

File: `findConfig.pl` (Perl)

```perl
#!/usr/bin/perl

# Recursively finds all files ending in '.conf' to stdout.
#
# By default checks root or, if given, checks $1.

# Compiler warnings
use strict;
use warnings;

use File::Find;

# Get path from args or default to root
my $dirpath = $ARGV[0];
if (not defined $dirpath) {
    $dirpath = "/";
}

# Checks a file and prints if it is a .conf
sub checkFile {
    if ($_ =~ /\.conf/) {
        print $File::Find::name."\n";
    }
}

find (\&checkFile, $dirpath);
```

File: `findConfig.rb` (Ruby)

```rb
#!/usr/bin/ruby

# Recursively finds all files ending in '.conf' to stdout.
#
# By default checks root or, if given, checks $1.

require 'find'

# Get path from args or default to root
if (ARGV.length >= 1) then
    $dirpath = ARGV[0]
else
    $dirpath = "/"
end

# Run find (Supressing errors) and essentially foreach on each find
Find.find($dirpath, ignore_error: true) do |path|
    # Check for match and print accordingly
    if File.basename(path).end_with?(".conf") then
        puts path
    end
end
```

## Testing

Run in bash with `./findConfig.<bash|pl|rb> [path]`. If no path is specified it
will default to root (`/`).

When the current directory or a parent directory is specified all scripts find
the `sample.conf` file.

All following tests are run with a file called `sample.conf` in the current
directory. All scripts can also be run without command line args and
successfuly find all `.conf` files on the system.

Sample output from `./findConf.bash ../../`:

```txt
../../P5/sample.conf
```

Sample output from `./findConf.pl ../../`:

```txt
../../P5/sample.conf
```

Sample output from `./findConf.rb ../../`:

```txt
../../P5/sample.conf
```

Problem: The Perl implementation shows errors for directories it cannot check
due to insufficient permissions. Looking into this I found that it was not
worth the effort to learn Perl to a great enough extent to be able to fix
this.

## Weekly Question

*Which of these languages was hardest to write this program in, and why?*

Perl, although it is known to be a very writable language, it makes it quite
difficult to learn as there are so many ways to do any one thing.

By contrast, I already knew bash and using unix `find` was very easy, and Ruby
was very structured and easy to learn.

## Weekly Reflection

### Bash

#### Programming Principle Compliances

Being a shell language, Bash complies with simplicity by having few constructs
and relying on the programs installed to provide complex functions.

#### Programming Principle Violations

The arbitrary way of ending scope, eg. `fi` for ending `if` and `done` for
ending `for` is a regularity and syntactic consistency violation. A better
approach would be to use braces like C or labelled ends like Ada.

Having optional string delimitation makes for less readable code where it is
not obvious if something is a statement or a literal string. This breaks
defence in depth.

#### Readability, Writability and Reliability

Being able to use all of (in this case) linux's programs inside a programming
language exactly as you do in a terminal is great for writability and
readability to anyone already familiar with bash.

### Perl

#### Programming Principle Compliances

Perl complies with abstraction by providing subprograms and support for
Object Orientation.

#### Programming Principle Violations

Perl is very large as it combines many language concepts haphazardly,
resulting in a large simplicity principle violation.

Parameter passing is completely arbitrary, which is a big violation of defence
in depth. It also flattens arrays into normal parameters when passed in.

#### Readability, Writability and Reliability

Perl is very writable as there are many different ways to do any one thing.

### Ruby

#### Programming Principle Compliances

Having the four member scope classes explicitly part of the member name
makes code readable and allows for information hiding on par with modern
languages, especially as the only way to have a public variable is to
define get and set functions.

#### Programming Principle Violations

Dynamic variable types are a defence in depth violation and reduce
readability and reliability.

#### Readability, Writability and Reliability

Being structured and regular makes Ruby readable.

# Week 6 - OO Basics and Smalltalk

## Program

FizzBuzz in Smalltalk to 100.

File: `fizzbuzz.st`

```st
#!/usr/bin/gst

"Loops from 1 to 100 inclusive and run the cascading if-elses with 15
as a special case"

1 to: 100 do: [ :i |
    ( ( i rem: 15 ) == 0) ifTrue: [ 'FizzBuzz' displayNl ] ifFalse: [
        ( ( i rem: 5 ) == 0 ) ifTrue: [ 'Buzz' displayNl ] ifFalse: [
            ( ( i rem: 3 ) == 0 ) ifTrue: [ 'Fizz' displayNl ] ifFalse: [
                i printNl
            ]
        ]
    ]
] !
```

## Testing

Run using gst with `./fizzbuzz.st` or `gst fizzbuzz.st`.

Sample output:

```txt
1
2
Fizz
4
Buzz
Fizz
7
8
Fizz
Buzz
11
Fizz
13
14
FizzBuzz
16
17
Fizz
19
Buzz
...
Buzz
Fizz
82
83
Fizz
Buzz
86
Fizz
88
89
FizzBuzz
91
92
Fizz
94
Buzz
Fizz
97
98
Fizz
Buzz
```

Used previously mentioned testing script `TestFizzBuzz.bash`.

Test in bash with `./fizzbuzz.st | ./TestFizzBuzz.bash`.

The program passes this test with the following output to terminal.

```txt
Testing FizzBuzz from 1 to 100
Test Completed
```

## Weekly Question

*How does your implementation of fizz buzz here compare with the
implementations you wrote in Fortran and Algol in terms of readability and
writability?*

While the actual dynamic chain is very similar, the control flow is achieved
in very different ways due to the way in which Smalltalk works.

In Fortran and Algol, I used a for loop to iterate `i` from 1 to 100, and within
the loop I used control structures to perform checks on the current
value of `i` and print accordingly.

In Smalltalk, I take an `Integer` object literal of value `1` and have it
perform the `to:` operation with the argument of an `Integer` object literal of
value `100`.
This evaluates to create an object of `Interval` that goes from `1` to `100`
inclusive with the default step of `1`, which I have perform the `do:` operation
with the argument of an instance of a code block that performs the FizzBuzz logic,
which I won't go into further.

I think for programmer's coming from languages with more traditional design such as
C, Fortran, etc., Smalltalk will be less readable as it involves interpreting the code
in a completely new way of reading from left to right and keeping track of a long chain
of message passes. It's writability would also suffer for similar reasons, and also
because of how cumbersome some aspects of the language are, for example creating classes.

For brand new programmers, I think that Smalltalk is very easy to learn as it's extremely
regular and simple in it's pure OO approach. This makes it more readable and writable than
something like C or Fortran which are both full of irregularity and special cases.

## Weekly Reflection

#### Programming Principle Compliances

Object Orientation itself is a huge abstraction compliance (Although Smalltalk's single
inheritance prevents any complex class structures from being created) and the language's
use of pure OO is also extrememly regular and simple.

Having object's perform their own operations is good for orthogonality and information
hiding, and it also allows for parallel computing.

#### Programming Principle Violations

Smalltalk's error handling by suspending the process and allowing for modifications is
not great for defence in depth as it is not really a proper solution for large scale
operations or when the computer is not attended by the programmer.

#### Readability, Writability and Reliability

Message passing is only really semantically different from procedure/function calling from
other languages, but it does have the benefit of being able to read the program flow
from left to right on a line.

# Week 7 - Object Orientation Part 2

## Program

A C++ program that sorts a list of the following objects using quicksort.

```cpp
class Book
{
private:
    int bookID;
    std::string bookname;
    std::string ISBN;
public:
    int GetBookID();
    std::string GetBookName();
    std::string GetISBN();

    void SetBookID(int);
    void SetBookName(std::string);
    void setBookISBN(std::string);

    Book();
    ~Book();
};
```

File: `BookSorter.h`

```h
#pragma once

#include <string>

// Book class
class Book
{
private:
    int bookID;
    std::string bookName;
    std::string ISBN;
public:
    int GetBookID()
    {
        return this->bookID;
    }

    std::string GetBookName()
    {
        return this->bookName;
    }

    std::string GetISBN()
    {
        return this->ISBN;
    }

    void SetBookID(int iID)
    {
        this->bookID = iID;
    }

    void SetBookName(std::string iName)
    {
        this->bookName = iName;
    }

    void SetBookISBN(std::string iISBN)
    {
        this->ISBN = iISBN;
    }

    ~Book() {
        //delete this->bookName;
        //delete this->ISBN;
    }
};

// Forward declarations
void fillBookList(Book*, int);
void printBookList(Book*, int);
void printBookListVerbose(Book*, int);
void bookQuickSort(Book*, int);
void bookQuickSortRec(Book*, int, int);
int bookQuickSortPartition(Book*, int, int, int);
int median(Book*, int, int, int);
```

File: `BookSorter.cpp`

```cpp
#include "BookSorter.h"

#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define LIST_SIZE 20

/*
 * A program that builds a randomly ordered array of books and sorts them by
 * ID using quick sort, the implemenation of which is adapted from my DSA
 * quick sort in Java.
 */

// Driver function to sort the list.
int main() {

    Book bookList[LIST_SIZE];
    fillBookList(bookList, LIST_SIZE);

    std::cout << "Original list by ID:\n";
    printBookList(bookList, LIST_SIZE);
    std::cout << "Original list verbose:\n";
    printBookListVerbose(bookList, LIST_SIZE);

    std::cout << "\n------\n\nQuick sorting - Visualisation:\n";
    bookQuickSort(bookList, LIST_SIZE);

    std::cout << "\n------\n\nSorted list by ID:\n";
    printBookList(bookList, LIST_SIZE);
    std::cout << "Sorted list verbose:\n";
    printBookListVerbose(bookList, LIST_SIZE);

    return 0;
}

// Fills the list with randomly generated books
void fillBookList(Book* bookList, int size) {
    char buffer[16];
    int bookNum;

    srand(time(NULL));

    for (int i = 0; i < size; i++ ) {
        bookNum = rand() % (size * 2) + 1;
        bookList[i].SetBookID(bookNum);

        sprintf(buffer, "Book %d", bookNum);
        bookList[i].SetBookName(buffer);

        sprintf(buffer, "%05d", bookNum);
        bookList[i].SetBookISBN(buffer);
    }
}

// Print the book list as a simple list of their ID's
void printBookList(Book* bookList, int size) {
    if (size == 0) {
        printf("[]\n");
    } else {
        std::cout << "[" << bookList[0].GetBookID();
        for (int i = 1; i < size; i++) {
            std::cout << ", " << bookList[i].GetBookID();
        }
        std::cout << "]\n";
    }
}

// Print the book list with details on each Book field
void printBookListVerbose(Book* bookList, int size) {
    if (size == 0) {
        printf("[]\n");
    } else {
        std::cout << "[\n\tBook ID: " << bookList[0].GetBookID()
            << ", Name: '" << bookList[0].GetBookName()
            << "', ISBN: '" << bookList[0].GetISBN() << "';\n";
        for (int i = 1; i < size; i++) {
            std::cout << "\tBook ID: " << bookList[i].GetBookID()
                << ", Name: '" << bookList[i].GetBookName()
                << "', ISBN: '" << bookList[i].GetISBN() << "';\n";
        }
        std::cout << "]\n";
    }
}

// Wrapper for bookQuickSortRec
void bookQuickSort(Book* bookList, int size) {
    bookQuickSortRec(bookList, 0, size - 1);
}

// Recursive quick sort
void bookQuickSortRec(Book* bookList, int leftIdx, int rightIdx) {
    int pivIdx;
    int newPivIdx;

    if (rightIdx > leftIdx) {
        pivIdx = median(
            bookList, leftIdx, rightIdx, (leftIdx + rightIdx) / 2
        );
        newPivIdx = bookQuickSortPartition(
            bookList, leftIdx, rightIdx, pivIdx
        );

        // Visualisation
        for (int i = -1; i <= rightIdx + 1; i++) {
            if (i < leftIdx - 1) {
                std::cout << " ";
            } else if (i == leftIdx - 1) {
                std::cout << "[";
            } else if (i == rightIdx + 1) {
                std::cout << "]";
            } else if (i == newPivIdx) {
                if (leftIdx == rightIdx - 1) {
                    std::cout << "*";
                } else {
                    std::cout << "|";
                }
            } else if (i >= leftIdx && i <= rightIdx) {
                if (leftIdx == rightIdx - 1) {
                    std::cout << "*";
                } else {
                    std::cout << "-";
                }
            }
        }
        std::cout << std::endl;

        // Recurse left
        bookQuickSortRec(bookList, leftIdx, newPivIdx - 1);
        // Recurse right
        bookQuickSortRec(bookList, newPivIdx + 1, rightIdx);
    }
}

// Partition the list based on the pivot
int bookQuickSortPartition(
    Book* bookList, int leftIdx, int rightIdx, int pivIdx
) {
    int currIdx;
    Book pivVal;
    Book temp;
    int newPivIdx;

    // Swap pivot value and right-most element
    pivVal = bookList[pivIdx];
    bookList[pivIdx] = bookList[rightIdx];
    bookList[rightIdx] = pivVal;

    // Find all values that are smaller than the pivot and transfer them to
    // the left side of the list
    currIdx = leftIdx;

    for (int i = leftIdx; i <= rightIdx - 1; i++) {
        if (bookList[i].GetBookID() < pivVal.GetBookID()) {
            // Swap i'th book and currIdx book
            temp = bookList[i];
            bookList[i] = bookList[currIdx];
            bookList[currIdx] = temp;

            currIdx++;
        }
    }

    newPivIdx = currIdx;
    bookList[rightIdx] = bookList[newPivIdx];
    bookList[newPivIdx] = pivVal;

    return newPivIdx;
}

// Get the median idx of three elements based on their values in the list
int median(Book* bookList, int a, int b, int c) {
    int med;

    if (
        bookList[a].GetBookID() > bookList[b].GetBookID()
        && bookList[a].GetBookID() > bookList[c].GetBookID()
    ) {
        med = a;
    } else if (
        bookList[b].GetBookID() > bookList[a].GetBookID()
        && bookList[b].GetBookID() > bookList[c].GetBookID()
    ) {
        med = b;
    } else {
        med  = c;
    }

    return med;
}
```

## Testing

Compiled and run with the following makefile using g++ in bash.

```makefile
# Alec Maughan PL Assignment Week 7 C++ Book Sorter Makefile ---------------- #

# Values -------------------------------------------------------------------- #

# Base name of program
NAME = BookSorter

# Source files
SRC = $(NAME).cpp $(NAME).h

# Executable file
EXEC = $(NAME)

# Generated files
GENERATED = $(EXEC)

# C compiler
CC = g++
CCFLAGS = -Wall -Werror -Wextra -ansi -pedantic
LINKS = 

# Valgrind flags
VALGRIND_FLAGS = --leak-check=full --track-origins=yes

# Conditions ---------------------------------------------------------------- #

ifdef VALGRIND
CFLAGS += -g
endif

# Tasks --------------------------------------------------------------------- #

all			: $(SRC) $(EXEC)

$(EXEC)		: $(SRC)
	$(CC) $(CCFLAGS) -o $(EXEC) $(NAME).cpp $(LINKS)

run			: $(EXEC)
	./$(EXEC)

clean		:
	rm -rf $(GENERATED)

valgrind	:
	make clean >/dev/null
	make VALGRIND=1 >/dev/null
	valgrind $(VALGRIND_FLAGS) ./$(EXEC)
```

Compile and run with `make run`.

Sample output:

```txt
Original list by ID:
[10, 38, 6, 40, 17, 15, 7, 31, 28, 5, 11, 35, 6, 2, 25, 20, 38, 20, 24, 33]
Original list verbose:
[
        Book ID: 10, Name: 'Book 10', ISBN: '00010';
        Book ID: 38, Name: 'Book 38', ISBN: '00038';
        Book ID: 6, Name: 'Book 6', ISBN: '00006';
        Book ID: 40, Name: 'Book 40', ISBN: '00040';
        Book ID: 17, Name: 'Book 17', ISBN: '00017';
        Book ID: 15, Name: 'Book 15', ISBN: '00015';
        Book ID: 7, Name: 'Book 7', ISBN: '00007';
        Book ID: 31, Name: 'Book 31', ISBN: '00031';
        Book ID: 28, Name: 'Book 28', ISBN: '00028';
        Book ID: 5, Name: 'Book 5', ISBN: '00005';
        Book ID: 11, Name: 'Book 11', ISBN: '00011';
        Book ID: 35, Name: 'Book 35', ISBN: '00035';
        Book ID: 6, Name: 'Book 6', ISBN: '00006';
        Book ID: 2, Name: 'Book 2', ISBN: '00002';
        Book ID: 25, Name: 'Book 25', ISBN: '00025';
        Book ID: 20, Name: 'Book 20', ISBN: '00020';
        Book ID: 38, Name: 'Book 38', ISBN: '00038';
        Book ID: 20, Name: 'Book 20', ISBN: '00020';
        Book ID: 24, Name: 'Book 24', ISBN: '00024';
        Book ID: 33, Name: 'Book 33', ISBN: '00033';
]

------

Quick sorting - Visualisation:
[---------------|----]
[-----------|---]
[---------|-]
[-----|---]
[----|]
[--|-]
[**]
      [--|]
      [**]
            [--|]
            [**]
                [---|]
                [-|-]

------

Sorted list by ID:
[2, 5, 6, 6, 7, 10, 11, 15, 17, 20, 20, 24, 25, 28, 31, 33, 35, 38, 38, 40]
Sorted list verbose:
[
        Book ID: 2, Name: 'Book 2', ISBN: '00002';
        Book ID: 5, Name: 'Book 5', ISBN: '00005';
        Book ID: 6, Name: 'Book 6', ISBN: '00006';
        Book ID: 6, Name: 'Book 6', ISBN: '00006';
        Book ID: 7, Name: 'Book 7', ISBN: '00007';
        Book ID: 10, Name: 'Book 10', ISBN: '00010';
        Book ID: 11, Name: 'Book 11', ISBN: '00011';
        Book ID: 15, Name: 'Book 15', ISBN: '00015';
        Book ID: 17, Name: 'Book 17', ISBN: '00017';
        Book ID: 20, Name: 'Book 20', ISBN: '00020';
        Book ID: 20, Name: 'Book 20', ISBN: '00020';
        Book ID: 24, Name: 'Book 24', ISBN: '00024';
        Book ID: 25, Name: 'Book 25', ISBN: '00025';
        Book ID: 28, Name: 'Book 28', ISBN: '00028';
        Book ID: 31, Name: 'Book 31', ISBN: '00031';
        Book ID: 33, Name: 'Book 33', ISBN: '00033';
        Book ID: 35, Name: 'Book 35', ISBN: '00035';
        Book ID: 38, Name: 'Book 38', ISBN: '00038';
        Book ID: 38, Name: 'Book 38', ISBN: '00038';
        Book ID: 40, Name: 'Book 40', ISBN: '00040';
]
```

The program randomly generates the list every time it is run, and always
consistently sorts and prints the list in correct order, by ID.

## Weekly Question

*Compare how you have implemented objects in C++ with how you implement them
Java. What does this tell you about how objects work in C++?*

While it's not how I implemented them in this case, C++ generally has the
actual `class` just define the structure of the class and the functions are
defined externally using the class name before the function name eg. 
`Book::GetBookID()`. This adheres to C++'s idea of classes like structs that
hold data and pointers to functions, as opposed to Java's idea of classes
encapsulating the entire implementation.

## Weekly Reflection

#### Programming Principle Compliances

Having access to OO makes for a more abstracted and orthogonal language. C++'s
access modifiers within a class are also an Information Hiding compliance.

Exception handling is a good addition and improves greatly on defence in
depth.

#### Programming Principle Violations

Because C++ does not run on a virtual machine it's exception handling cannot
catch the kernel's SIGSEGV which is a regularity violation.

Since C++ is built off C and not designed to break backwards compatibility with
C, it carries over many of C's problems - any analysis of C in regards to
programming principles also applies to C++. 

The following is a list of syntactic consistency violations present in C++.
The context-sensitive `static` keyword. The `*` operator performing
multiplication or referencing. Semicolons terminating class and struct
definitions (`};`) but not code blocks (`}`). The “ operators
are stream operations and bit shifting operations based on the context.

Having all of C's functionality available as well as all of C++'s functionality
is a large simplicity violation. Almost everything has a 'C way' and a 'C++
way' of doing it. This also reduces readability.

#### Readability, Writability and Reliability

Backwards compatibility with C greatly increases the writability of C++.

The regularity violations of C++ make it bad for readability.

Being a very static language makes for increased reliability, for example
polymorphism must be explicit and types are strong and static.

Having all of C's functionality available as well as all of C++'s functionality
is a large simplicity violation. Almost everything has a 'C way' and a 'C++
way' of doing it. This also reduces readability.

#### Readability, Writability and Reliability

Backwards compatability with C greatly increases the writability of C++.

The regularity violations of C++ make it bad for readability.

Being a very static language makes for increased reliability, for example
polymorphism must be explicit and types are strong and static.

# Week 8 - Logic Programming

## Program

Fizzbuzz in Prolog up to 1000.

File: `fizzbuzz.pro`

```pro
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
```

## Testing

Source code located in `fizzbuzz.pro`.

Compiling and running handled with the following makefile using gplc in bash.

```makefile
# Alec Maughan PL Assignment Week 8 Prolog FizzBuzz Makefile ---------------- #

# Values -------------------------------------------------------------------- #

# Base name of program
NAME = fizzbuzz

# Source files
SRC = $(NAME).pro

# Executable file
EXEC = $(NAME)

# Generated files
GENERATED = $(EXEC)

# Tasks --------------------------------------------------------------------- #

all			: $(SRC) $(EXEC)

$(EXEC)		: $(SRC)
	gplc $(NAME).pro

run			: $(EXEC)
	./$(EXEC)

clean		:
	rm -rf $(GENERATED)
```

Compile and run with `make run`.

And enter `fizzbuzz.` into the Prolog interactive interpreter.

Using the same test program `TestFizzBuzz.bash` in bash, although it can't be
used directly due to Prolog's interactive terminal.

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

```txt
| ?- Testing FizzBuzz from 1 to 1000
```

Input exactly this

```pro
fizzbuzz.
```

Prolog terminal and test program combined expected output

```txt
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

# Week 9 - Functional Programming

## Program

Cocktail shaker sort in Scheme.

File: `cocktail_sort.scm`

```scm
; Cocktail Shaker Sort in Scheme
; Eg. (cocktail_sort `(4 2 5 1 3)) returns (1 2 3 4 5)

(
    ; Swap the first two element of the list
    define _cocktail_sort_swap
    (
        lambda (_list)
        (
            cons
            (cadr _list)
            (
                cons
                (car _list)
                (cddr _list)
            )
        )
    )
)


(
    ; Inner recursion for cocktail shaker sort - bubbles the largest/smallest
    ; element up depending on the _gt flag
    define _cocktail_sort_inner
    (
        lambda
        (
            _list ; List to sort
            _gt   ; Comparison operator, explained elsewhere
        )
        (
            if (<= (length _list) 1)

            ; Base case - got to the end of the list
            _list

            ; Else, bubble one more
            (
                let
                (
                    (
                        ; Comparison operator is > for the forward shake
                        ; and < for the backwards shake
                        _compare
                        (if _gt > <)
                    )
                )
                (
                    let
                    (
                        (
                            ; Redefine _list if swap is required
                            _list
                            (
                                if (_compare (car _list) (cadr _list))
                                (_cocktail_sort_swap _list)
                                _list
                            )
                        )
                    )
                    (
                        ; Recurse
                        cons
                        (car _list)
                        (
                            _cocktail_sort_inner
                            (cdr _list)
                            _gt
                        )
                    )
                )
            )
        )
    )
)

(
    ; Outer recursion for coktail shaker sort - runs the inner recrsion _n
    ; times
    define _cocktail_sort_outer
    (
        lambda
        (
            _list ; List to sort
            _n    ; n from (length _list) to 1
            _gt   ; True for greater than comparison, false for less than
        )
        (
            if (= _n 1)

            ; Base case - Reverse the list if needed
            (
                if _gt
                _list
                (reverse _list)
            )

            ; Run the outer sort on the inner sort
            (
                let
                (
                    (
                        _inner_sorted
                        (_cocktail_sort_inner _list _gt)
                    )
                )
                (
                    ; Recurse
                    _cocktail_sort_outer
                    (reverse _inner_sorted) ; Shake the list the other way
                    (- _n 1)
                    (not _gt) ; Swap between `>` and `<`
                )
            )
        )
    )
)

(
    ; Cocktail shaker sort!
    define cocktail_sort
    (
        lambda (_list)
        (
            _cocktail_sort_outer
            _list
            (length _list)
            #t
        )
    )
)
```

## Testing

Source code located in `cocktail_sort.scm`.

Load into the mit-scheme interactive interpreter with
`scheme --load cocktail_sort.scm`.

Use the function `cocktail_sort`, pass it the list to sort and send EOF (`^D`)
to exit.

Sample input/output:

```scm
]=> (cocktail_sort `(3 1 5 7 3 2))

;Value 13: (1 2 3 3 5 7)
```

Tested with many different lists of varying size and always results in
the same list in sorted order.

## Weekly Question

*Investigate how scheme performs file IO. Does this break regularity? Why or
why not?*

Scheme performs File IO using the port language construct, the operations
are regular as they are just function calls like the rest of the language.

Although, the ports are set and retrieved in a way that suggests global state and
side-effects behind the scenes, specifically the `current-input-port` and
`current-output-port` procedures, which return the current input and output port,
respectively.

This is a break in regularity as a result of Scheme running on
Von Neumann machines rather than the Lisp machines that Scheme is designed around.

## Weekly Reflection

### Programming Principle Compliances

Scheme's two language constructs - lists and atoms, and everything being a function
call, makes for a very simple and regular language.  It also very regular that
even the Scheme program itself is just a Scheme list within the language.

The standard Scheme functions are very orthogonal, for example the operations
`cons`, `car` and `cdr` are primitive but very powerful tools.

### Programming Principle Violations

Functions with arguments rely on the positions in the argument list rather than
names or labels, which is a Labelling Programming Principle violation. This is
especially bad when the entire language is built around function calls, leaving
structures like simple if statements less readable.

Having Scheme interpret itself as a list of function calls makes debugging difficult
as program errors cannot be put to a line number in the original file, violating
the Security principle.

### Readability, Writability and Reliability

The reliability of Scheme is greatly helped by the fact that it has no side effects.

From a procedural programming perspective, Scheme is less writable as 
procedural constructs such as eagerly evaluated variables and general flexibility
are not available to the programmer. In practice the writability is more 
significantly lessened by the fact that standard functions are very primitive;
for example to append to a list rather than prepending, you must reverse the list,
prepend, and then reverse the result.

Readability suffers as understanding a badly formatted scheme program is reduced to
counting brackets, but this is alleviated with proper formatting.
