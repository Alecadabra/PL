# Worksheet 6

## OO Basics and Smalltalk

### 1

*What is a class and what does it define?*

A class is an abstract data type.

### 2

*What is the difference between a class and an object? What does an object
encapsulate?*

An object is an instance of a class, it encapsulates the state of the class.

### 3

*What is information hiding? Provide an example. Do objects have the property
of information hiding?*

Information hiding has the specifics of implementations and contextually
internal data hidden from outside programs.

Objects do not have information hiding, it is given my the language that
surrounds it.

### 4

*In procedural programming subprograms communicate using parameters. How
is this achieved in OOP?*

Objects pass messages to each other.

### 5

*How many class relationships are possible in OOP? Name them.*

Inheritance - A class is a child of a more generic class.

Aggregation - A class holds a reference to another class.

Association - A class wholly uses a class but does not aggreagate it.

Friendship - A class uses another class but does not wholly associate with it.

### 6

*What is inheritance in OOP? What is the difference between multiple
inheritance and repeated inheritance? Provide an example.*

Inheritance is a way to define a more specific child class of the inheritance
parent. It allows the child class to be treated as it's parent class but have
different implementations, or to allow for greater code reuse.

In repeated inheritance a class inheits from the same class multiple times, whereas
multiple inheritance is a language's feature to allow a class to inherit from
multiple other classes.

### 7

*What is polymorphism in OOP?*

The ability to treat classes in an inheritance tree as their parent(s) through upcasting.

### 8

*What does a derived class add to its definition when compared with the base
class from which is was built? How many objects does it represent when
compared with the base class? Can a derived class access the private members of
the base class?*

A derived class can add it's own members accessible to itself, it's possible
subclasses or outside programs referencing it as it's base class.

A derived class represents less objects that it's parent.

A derived class cannot access private members of it's parent in most languages.
That's what protected access is for.

### 9

*What is an abstract class?*

A class that cannot be directly instanciated, and leaves some implementation to
it's derivations.

### 10

*How many varieties of variables are available in Smalltalk? Name them.*

<!-- TODO -->

### 11

*How is repetition achieved in Smalltalk? What does it involve?*

Repeatedely sending a message.

### 12

*What type of inheritance does Smalltalk allow? Is is sufficient? Justify your
answer.*

Strictly single inheritance, which does not allow for much flexibility. For example,
a class like a string cannot be Appendable and Comparable, unless one superclass
already is a child of the other.

### 13

*How are operations performed in Smalltalk?*

Message passing.

### 14

*Evaluate Smalltalk with regards to the three Criteria and nine Characteristics of
program design.*

<!-- TODO -->
