# Worksheet 5

## Scripting

### 1

*Consider the parameter passing used by PERL and C. Which one is better and
why?*

C's is clearly better. Perl's parameter passing is arbritary and undefined, it
is not readable or safe and just results in boilerplate that achieves what
any other languages does with a simple parameter list. C's is flexible, 
unrestrictive and safe.

### 2

*You are part of a committee that is given the task of designing a new procedural
programming language. You are expected to contribute to the effort by
specifying 3 things you would like to include in the language and 3 things that
should under no circumstances be included in the new language. You are also
required to explain your feature selection.*

Assuming the context of scripting languages.

Include:

Kotlin/Scala style strong typing, where the compiler infers datatypes, but only
if it's obvious (And can be overriden if wanted) - This is a good compromise between
standard strong and weak typing.

Good access to file system and other programs - A large use case for scripting
languages is managing other programs so this should be straightforward.

Concepts from standard compiled languages - Programmers shouldn't need to relearn
programming to use a scripting language, don't rename things because you can or
reinvent the wheel.

Do not include:

Dynamic variable types a la Ruby/Python - They are too far a departure from
variables in common compiled languages and makes for less readable code IMO.

Pointers and general memory management - It's never necassary if you have a
good parameter passing system.

Ada-style type defitions - Bad for writability.

### 3

*Compare and contrast the methods for handling arithmetic in a shell scripting
language such as csh with that of Ruby.*

Shell scripting languages generally can't do math or if they can it's very basic.

### 4

*How does one declare a class instance variable to be Public in Ruby?*

With a single `@` in the variable name, ie. `@x = 0`. Make it public
with get and set functions.

### 5

*Analyze Ruby’s design using the Criteria and Characteristics from Sebesta and
the programming principles. Find one example to support each statement about
Ruby supporting or not supporting each.*

 * Abstraction
 
 Ruby supports abstraction with functions and OO inheritance.
 
 * Defence in depth
 
 Ruby complies with defence in depth with exception handling and well defined
 member scope.
 
 * Information Hiding
 
 Ruby complies by having all class members private.
 
 * Labelling Programming Principle
 
 Ruby complies by having named parameter passing (Position independant parameters).
 
 * Orthogonality
 
 Ruby complies by having similar opertaions on similar strucutres, such as arrays
 and hashes.
 
 * Preservation of information
 
 Ruby complies by having variable scope explicitly in the variable name.
 
 * Regularity
 
 Ruby violates by having an optional `then` keyword before an `if` block.
 
 * Zero-one-infinity
 
 Ruby complies by having unlimited array size, class inheritance height, etc.
 
 * Security
 
 Ruby complies by printing a full stack trace upon any error.
 
 * Simplicity
 
 Ruby complies by improving on Perl's complex model and creating a heavily
 structured and simplistic language.
 
 * Structured programming
 
 Ruby violates by implementing `next` and `break` which disconnect the static
 and dynamic program structure.
 
 * Syntactic consistency
 
 Ruby complies by having a well strucutred and consistent syntax.
