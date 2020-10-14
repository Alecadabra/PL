# Worksheet 7

## C++, C#, and Eiffel

### 1

*When is the protected access used in C++? Who can access protected members of
class?*

The `protected` access modifier is used when a parent class wants certain members
to be accessible to itself and it's child classes. There is also protected
inheritance.

### 2

*When deriving a class from a protected class, what is the level of access of the
public/protected members of the base class in the derived class?*

Protected inheritance makes public and protected members of the parent class
protected.

### 3

*What is the difference between a "Is a" relationship and a "Has a" relationship?*

An 'is a' relationship is when a class `A` inherits from a class `B`, so that
`A` 'is a' `B`. This means that using polymorphism, an instance of `A` can
be treated as an instance of `B` with upcasting.

A 'has a' relationship is when a class 'A' aggregates a class `B`, so that
`A` 'has a' `B`.

### 4

*How is polymorphism implemented in C++? Is this different from the way it is
implemented in C#?*

In C++, for functions to be overriden they must be specified as `virtual` which
specifies to the compiler that they will be dynamically bound, whereas in C#
member functions are dynamically bound by default.

### 5

*What were goals of the designers of C++?*

Give the programmer as much power and control as possible.

It implements classes on top of C (But not Objective C), making it very
fast and powerful.

### 6

*How does C++ handle exceptions?*

It does not run in a virtual machine, so cannot catch anything
thrown from the kernel, but can 'raise' user-defined exceptions
up the dynamic chain and 'try-catch' to catch them and handle
appropriately. Notably, C++ offers a generic exception handler
unlike other implementations such as Ada.

### 7

*Compare the design philosophy of Smalltalk, C++ and C#.*

Smalltalk is a teaching lanuage.

C++ is a no compromise engineering language w/ backwards compat
with C.

C# is a Java clone.

### 8

*Name and describe two types of inheritance.*

Multiple inheritance - Where a class inherits from multiple different
classes, eg. a string inheriting from collection and comparable.

Repeated inheritance - Where a class inherits from one class multiple
times, eg. a motorbike inheriting from wheel twice.

### 9

*Compare and contrast the OO ‘purity’ of Smalltalk and Eiffel.*

Eiffel wins due to multiple inheritance support (Refer to the 7 components
of OO).

### 10

*Is there a programming principle that Eiffel does not support? If so, state the
principle and – with the help of an example – explain why Eiffel does not
support it.*

Labelling programming principle, contracts violate it.
