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

All make tasks: `all`, `clean`, run`, `valgrind`.

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


