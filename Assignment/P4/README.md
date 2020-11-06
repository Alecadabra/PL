# Week 4 - Yacc/Bison and Lex/Flex

## Program

Yacc/Lex program that accepts a list of numbers eg. `[1, 4, 3]` and outputs
the list in sorted order eg. `[1, 3, 4]`.

Source code located in `sorter.l` and `sorted.y`.

Compile and run with `make run`.

Enter a list using the syntax shown above and a newline, exit with EOF (^D).

All make tasks: `all`, `run`, `clean`.

## Testing

The program sorts the list as expected.

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
