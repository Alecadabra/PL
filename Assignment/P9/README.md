# Week 9 - Functional Programming

## Program

Cocktail shaker sort in Scheme.

Source code located in `cocktail_sort.scm`.

Load into the mit-scheme interactive interpreter with
`scheme --load cocktail_sort.scm`.

Use the function `cocktail_sort`, pass it the list to sort, eg.

```scm
]=> (cocktail_sort `(3 1 5 7 3 2))

;Value 13: (1 2 3 3 5 7)
```

Send EOF (`^D`) to exit.

## Testing

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
Von-Neumann machines rather than the Lisp machines that Scheme is designed around.

## Weekly Reflection

### Overview

Writing cocktail shaker sort in Scheme proved to be quite a challenge due to how
different Scheme is from anything I've used in the past, but I ended up really
liking the language in it's extreme simplicity and regularity.

### Programming Principle Compliances

Scheme's two language constructs - lists and atoms, and everything being a function
call, makes for a very simple and regular language.  It also very regular that
even the Scheme program itself is just a Scheme list within the language.

The standard Scheme functions are very Orthogonal, for example the operations
`cons`, `car` and `cdr` are primitive but very powerful mechanisms.

### Programming Principle Violations

Functions with arguments rely on the positions in the argument list rather than
names or labels, which is a Labelling Programming Principle violation. This is
especially bad when the entire language is built around function calls, leaving
structures like simple if statements less readable.

Having Scheme interpret itself as a list of function calls makes debugging difficult
as program errors cannot be put to a line number in the original file, violating
the Security principle.

### Readability, Writability and Reliability

The reliability of Scheme is greatly helped by the fact that it has no side effets.

From a procedural programming perspective, Scheme is less writable as 
procedural constructs such as eagerly evaluated variables and general flexability
are not available to the programmer. In practice the writability is more 
significantly lessened by the fact that standard functions are very primitive;
for example to append to a list rather than prepending, you must reverse the list,
prepend, and then reverse the result.

Readability suffers as understanding a badly formatted scheme program is reduced to
counting brackets, but this is alleviated with proper formatting.
