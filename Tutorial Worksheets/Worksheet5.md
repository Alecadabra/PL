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

### 4

*How does one declare a class instance variable to be Public in Ruby?*

With a single `@` in the variable name, ie. `@x = 0`.

### 5

*Analyze Ruby’s design using the Criteria and Characteristics from Sebesta and
the programming principles. Find one example to support each statement about
Ruby supporting or not supporting each.*
