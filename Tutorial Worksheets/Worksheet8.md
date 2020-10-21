# Worksheet 8

## Prolog

### 1

*Why is traditional logic insufficient to model the real world?*

Traditional logic assumes that facts are unchanging in some
snapshot of time, which does not represent the real world.

### 2

*What is the problem with negation in Prolog?*

Double negation does not work as you might expect. Double negation
means a failure to prove something to be false. This is because
the `not` operation attempts to prove the negative.

### 3

*How is inequality implemented in Prolog?*

Prolog attempts to prove that if two symbols are not symbolically
equivalent, they are equivalent due to it's rule and fact database.

### 4

*What are the two types of statements used in Prolog programs? Note that some
people also consider queries to be a separate type of statement.*

Facts and ~~logic~~ rules.

### 5

*Is Prolog well suited for dealing with complex mathematical problems involving
infinite datasets? Justify your answer.*

Yes, as you can define rules that work with infite sets without holding those
sets in memory.

### 6

*How does non-monotonic reasoning reduce the suitability of a language for rapid
prototyping?*

With non-monotonic reasoning you can change your rules/facts to adapt to changing
prototypes, which works against rapid prototyping which has emphasis on recreating
systems rather than adapting.

### 7

*Can Prolog handle non-monotonic problems?*

Yes, but it's not well suited as state changers (assert/retract) are restricted in
where they can be used.

### 8

*Is Prolog well suited for rapid prototyping?*

Yes, because it restricts assert/retract.

### 9

*What is the difference between forward and backward chaining?*

Forward chaining generates new goals until the goal is provided, while backwards
chaining tries to search backwards from the goal to the given facts.

Forward chaining needs to know *everything* to be able to reach the goal so it
does not make a lot of sense for complex problems.

Backwards chaining generates a big chain of assertions that must be true for
the goal to be true.

Forward is breadth-first (All the work up front) and backward is generally 
depth-first (Do the work after, but only what you need to compute).

### 10

*How have the resource limitations affected the overall design of Prolog?*

It cannot realistically use forward chaining and it works on operations
procedurally (Not pure logical programming).
