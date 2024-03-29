# Worksheet 4

## EBNF

### 1 

*Given the EBNF description below:*

```ebnf
  <program>::=begin<stmt_list>end
  <stmt_list>::=  <stmt>{“;”<stmt>}
  <stmt>::= <var>”=”<expression>
  <var>::= A|B|C
  <expression>::=<var>[(+|-)<var>]
```
*draw the corresponding syntax graphs for the EBNF rules.*

`<program>`:

`*-->(begin)-->[smt_list]-->(end)-->*`

`<stmt_list>`:

```
*-+->smt-+->*
  |      |
  +-(;)<-+
```

`<stmt>`:

`*->[var]->(=)->[expression]->*`

`<var>`:

```
  +->(A)-+
  |      |
*-+->(B)-+->*
  |      |
  +->(C)-+

```

`<expression>`:
```
*->[var]-+->(+)-+->[var]->*
         |      |
         +->(-)-+
         |
         +->*
         
```

### 2

*Give the EBNF and syntax graph description of the FOR statement in Java.*

```ebnf
<for_statement>
  ::=
  "for" "(" ( <variable_declaration> | ( <expression> ";" ) | ";" )
  [ <expression> ] ";"
  [ <expression> ] ";"
  ")" <statement>
```

*[\<variable_declaration\>](http://cui.unige.ch/db-research/Enseignement/analyseinfo/JAVA/variable_declaration.html)
[\<expression\>](http://cui.unige.ch/db-research/Enseignement/analyseinfo/JAVA/expression.html)
[\<statement\>](http://cui.unige.ch/db-research/Enseignement/analyseinfo/JAVA/statement.html)*

```
*->(for)->(()->-+->[variable_delclaration]-+->-+---------------+->(;)-+---------------+->(;)->())->[statement]
                |                          |   |               |      |               |
                +->[expression]->(;)-------+   +->[expression]-+      +->[expression]-+
                |                          |
                +->(;)---------------------+
```

### 3

#### i

*Draw the syntax graphs down to the digit/letter level for a constant
declaration which allows strings of the form shown below (each new constant is
separated from the previous constant by a single coma, there can be an infinite
number of constants declared using the same declaration, the first term is an identifier
consisting of one or more alphanumeric characters while the value assigned is always
a single digit signed integer):*

```
const a = 5;
const b = -2, c2 = 4, constant3 = 0;
```

```ebnf
<var_name>::= (a-zA-Z){a-zA-Z0-9}
<var_value>::= (0|1|2|3|4|5|6|7|8|9)+
<const_declaration>::= "const"(<var_name>"="<var_name>){","<var_name>"="<var_name>}
```

I did the EBNF instead of the syntax graph :shrug:

#### ii

*Draw the syntax graphs down to the digit/letter level for a type declaration which
allows strings of the form shown below (each new type declaration is separated from 
the previous type by a single colon, there can be an infinite number of types declared
using the same declaration, the first term is an identifier consisting of one or more
alphanumeric characters while the type is always one of three valid types – int, real or
complex):*

```
TYPE a : int;
TYPE b : int, a : real, c : complex, x : complex;
```

*Convert the syntax graphs to EBNF.*

Skipped.

### 4

*Languages continually evolve. What sort of restrictions are appropriate for
changes made to programming languages?*

Break backwards compatability.

Also changing the PL paradigm, adding features already handled by the language.

### 5

*You are part of a committee that is given the task of designing a new
procedural programming language. You are expected to contribute to the effort by
specifying 3 things you would like to include in the language and 3 things that should
under no circumstances be included in the new language. You are also required to
explain your feature selection.*

Don't include:

Goto - Bad for readability, security, defence-in-depth - It's 2020, use a control structure.

Pointers - Not needed when you steal Ada's parameter passing.

Nulls - This is quite difficult but it could make for a great language.

Do include:

Ada's parameter passing - It's super orthogonal, no need for pointers, very flexible.

Exception handling - Essential for proper defence-in-depth and reliability.

Strong typing - More readable and reliable code.

### 6

*Write an EBNF grammar for lists of numbers: \[\], \[1\], \[1, 2, 3\], \[2, 4, 5, 8, 23\].
Your answer should cover all lists.*

```ebnf
<num>::= (0|1|2|3|4|5|6|7|8|9)+
<num_list>::= "["<num>{", "<num>}"]"
```
