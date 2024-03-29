# Week 5 - Scripting Languages

## Program

A script to find every `.conf` file on a computer in bash, perl and ruby.

Source code located in `findConfig.bash` (Bash), `findConfig.pl` (Perl) and
`findConfig.rb` (Ruby).

Run with `./findConfig.<bash|pl|rb> [path]`. If no path is specified it
will default to root (`/`).

## Testing

When the current directory or a parent directory is specified all scripts find
the `sample.conf` file.

Problem: The Perl implementation shows errors for directories it cannot check
due to insufficient permissions. Looking into this I found that it was not
worth the effort to learn Perl to a great enough extent to be able to fix
this.

## Weekly Question

*Which of these languages was hardest to write this program in, and why?*

Perl, although it is known to be a very writable language, it makes it quite
difficult to learn as there are so many ways to do any one thing.

By contrast, I already knew bash and using unix `find` was very easy, and Ruby
was very structured and easy to learn.

## Weekly Reflection

### Bash

#### Programming Principle Compliances

Being a shell language, Bash complies with simplicity by having few constructs
and relying on the programs installed to provide complex functions.

#### Programming Principle Violations

The arbitrary way of ending scope, eg. `fi` for ending `if` and `done` for
ending `for` is a regularity and syntactic consistency violation. A better
approach would be to use braces like C or labelled ends like Ada.

Having optional string delimitation makes for less readable code where it is
not obvious if something is a statement or a literal string. This breaks
defence in depth.

#### Readability, Writability and Reliability

Being able to use all of (in this case) linux's programs inside a programming
language exactly as you do in a terminal is great for writability and
readability to anyone already familiar with bash.

### Perl

#### Programming Principle Compliances

Perl complies with abstraction by providing subprograms and support for
Object Orientation.

#### Programming Principle Violations

Perl is very large as it combines many language concepts haphazardly,
resulting in a large simplicity principle violation.

Parameter passing is completely arbitrary, which is a big violation of defence
in depth. It also flattens arrays into normal parameters when passed in.

#### Readability, Writability and Reliability

Perl is very writable as there are many different ways to do any one thing.

### Ruby

#### Programming Principle Compliances

Having the four member scope classes explicitly part of the member name
makes code readable and allows for information hiding on par with modern
languages, especially as the only way to have a public variable is to
define get and set functions.

#### Programming Principle Violations

Dynamic variable types are a defence in depth violation and reduce
readability and reliability.

#### Readability, Writability and Reliability

Being structured and regular makes Ruby readable.
