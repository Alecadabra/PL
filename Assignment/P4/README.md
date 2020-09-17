# Week 4 - Yacc/Bison and Lex/Flex

## Program

Yacc/Lex program that accepts a list of numbers eg. `[1, 4, 3]` and outputs
the list in sorted order eg. `[1, 3, 4]`.

Source code located in `sorter.l` and `sorted.y`.

Compile and run with `make run`.

Enter a list using the syntax shown above and a newline, exit with EOF (^D).

All make tasks: `all`, `run`, `clean`.

## Testing

The sorts the list as expected.

## Weekly Question

*If you were building a compiler, how do you think you would implement
a symbol table?*

An array of table_entry structs, where each table_entry contains the symbol's
name, it's full data type, the scope it's contained in, and it's value.

Value will be a memory adress if it's a reference type, the primitive value
if primitive, or the starting position of the scope if a function.

Lex would be used to build all of the tokens and Yacc would build the table itself.

## Weekly Reflection

Yacc and Lex provide a very flexible platform for interpreters, compilers and more.

Having the code in C makes for fast computation and flexability.

From my limited experience making this week's program, I found that having Yacc and
Lex split into two separate programs made the implemenation harder, I feel if the
two were merged into one, I could better utilize each of them.

Syntactically, once learned they are quite writable and readable but not perfect
due to the C breaking up the Yacc/Lex. Being from the 70's and being based on C,
it's not the kind of language(?) that I'd expect to have the niceties of more
modern languages.

Yacc's look ahead left recursion makes for a good parsing system where errors
are caught early in the process, even if it is initially unintuative (for me 
atleast) to write left-recursion in the grammar specification.
