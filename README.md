# forward
A stack-based programming language

## Goals
- Literate programming
- Debugging
  - Read Eval Print Loop
- Denotational semantics
- Axiomatic semantics
  - [Hoare triples]: Pre- and Post-conditions. Possibly also while-conditions aka invariants.
  - [Dependent types]
- Stupidly Simple Grammar
- Pattern Matching
  - Macros
  - Intuitive Grammar (on layer 2, after macros are applied)
  - Code as Data, but not Data as Code.

### Inspiration sources

Currently being inspired mainly by:
- UI/UX of [factor], [pharo] and especially [:r4]
- - Holistic approach of Lisp Machines, Oberon, Smalltalk, Forth
- Numerical semantics of [APL]
- Textual semantics of the unix shell.

### Denotational semantics


#### Informal definitions

- Atoms/Elements:
  - Booleans
  - Characters
  - Numbers
- Arrays
  - Bitarrays
  - Strings
  - Vectors
  - Matrixes

#### Formal definitions



# [Waterfall] process

1. Requirements
2. Design
3. Specification
4. Implementation
5. Verification
6. Maintenance 




[Hoare triples]: https://en.wikipedia.org/wiki/Hoare_logic#Hoare_triple
[Waterfall]: https://en.wikipedia.org/wiki/Waterfall_model#Model
[Dependent types]: https://en.wikipedia.org/wiki/Dependent_type
[factor]: https://github.com/factor/factor/
[APL]: https://tryapl.org/
[pharo]: https://github.com/pharo-project/pharo
[:r4]: https://github.com/phreda4/r4

<a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc/4.0/88x31.png" /></a><br />This README is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/">Creative Commons Attribution-NonCommercial 4.0 International License</a>.
