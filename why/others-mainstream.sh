# = Programming Paradigms: and their constructs 
#
# The three main programming paradigms in widespread use today are:
#
# . Imperative
# . Functional
# . Object oriented 
#
# Each paradigm has different a different approach to how they solve problems.
#
# .Here's a summary of the main concepts related to each paradigm:
#
# 1. Imperative: 
#    * if else then
#    * while, do until, for loops
# 2. Functional
#    * map, filter, reduce
#    * curry, partial application 
# 3. Object oriented 
#
# We are also going to implement these constructs from scratch
#
# * if else then: short circuit
# * loops: goto or recursion
# * map, filter, reduce: recursion
# * curry, partial application
#
#
# == Imperative

if true; then echo "it is true"; else echo "it is not true"; fi
for i in 1 2 3 4 5; do echo $i; done
until true; do echo "this is never executed"; done   # <1>
while true; do echo "this is an infinite loop"; done # <2>

# (1) the `until true` loop can be thought of as a `while false` loop 
# (2) the `while true` loop can be thought of as a `until false` loop 

# === Implementing Imperative constructs: from scratch 

true && echo "it is true" || echo "it is not true" # <1>
for i in 1 2 3 4 5; do echo $i; done

# (1) if else then: short circuit
# (2) loops: goto or recursion

# == Functional

#    * map, filter, reduce
#    * curry, partial application 

if true then echo "it is true"; else echo "it is not true";
for i in 1 2 3 4 5; echo $i; done
while true; do echo "this is an infinite loop"; done

# === Implementing Functional constructs: from scratch 

# .if else then: short circuit

true && echo "it is true" || echo "it is not true"

# .loops: goto or recursion

true && echo "it is true" || echo "it is not true"

# == Object-Oriented

#    * map, filter, reduce
#    * curry, partial application 

if true then echo "it is true"; else echo "it is not true";
for i in 1 2 3 4 5; echo $i; done
while true; do echo "this is an infinite loop"; done

# === Implementing Object-Oriented constructs: from scratch 

# .if else then: short circuit

true && echo "it is true" || echo "it is not true"

# .loops: goto or recursion

true && echo "it is true" || echo "it is not true"

