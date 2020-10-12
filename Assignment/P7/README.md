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

Source code located in `BookSorter.cpp` and `BookSorter.h`.

Compile and run with `make run`.

All make tasks: `all`, `clean`, `run`, `valgrind`.

## Testing

Every time it is run, the program prints the list in sorted order, by ID.

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

Having access to OO makes for a more abstracted and orthogonal language. C++'s
access modifiers within a class are also an Information Hiding compliance.

Since C++ is built off C and not designed to break backwards compatability with
C, it carries over many of C's problems - any analysis of C in regards to
programming principles also applies to C++. This backwards compatability
does greatly increase the writability of C++.

The following is a list of syntactic consistency violations present in C++.
The context-sensitive `static` keyword. The `*` operator performing
multiplication or dereferencing. Semicolons terminating class and struct
definitions (`};`) but not code blocks (`}`).

Having all of C's functionality available as well as all of C++'s functionality
is a large simplicity violation. Almost everything has a 'C way' and a 'C++
way' of doing it. This also reduces readability.

While exception handling is a good addition and improves greatly on defence in
depth, because C++ does not run on a virtual machine it cannot catch the
kernel's SIGSEGV which is a bit of a regularity violation.
