// = Programming Paradigms: and their constructs 
//
// The three main programming paradigms in widespread use today are:
//
// . Imperative
// . Functional
// . Object oriented 
//
// Each paradigm has different a different approach to how they solve problems.
//
// .Here's a summary of the main concepts related to each paradigm:
//
// 1. Imperative: 
//    * if else then
//    * while, do until, for loops
// 2. Functional
//    * map, filter, reduce
//    * curry, partial application 
// 3. Object oriented 
//
// We are also going to implement these constructs from scratch
//
// * if else then: short circuit
// * loops: goto or recursion
// * map, filter, reduce: recursion
// * curry, partial application
//
//
// == Imperative

if (true) { console.log("it is true"); } else { console.log("it is not true"); } 
for (var i of [1, 2, 3, 4, 5]) { console.log(i); }
while (true) { console.log("this is an infinite loop"); } // <2>

// (1) the `until true` loop can be thought of as a `while false` loop 
// (2) the `while true` loop can be thought of as a `until false` loop 

// === Implementing Imperative constructs: from scratch 

true && doThis() || doThat();              // <1>
echo = (x) => { console.log(x); return true; };
function while_loop() { echo("yes") && true && while_loop(); }    // <2>
function   for_loop(i) { i++; echo(i); (i == 5) || for_loop(i); } // <3>
while_loop()
for_loop(0)

// (1) if else then, implemented with short circuit
// (2) while loop implemented with recursion
// (3)   for loop implemented with recursion


// == Functional

//    * map, filter, reduce
//    * curry, partial application 

if true then echo "it is true"; else echo "it is not true";
for i in 1 2 3 4 5; echo $i; done
while true; do echo "this is an infinite loop"; done

// === Implementing Functional constructs: from scratch 

// .if else then: short circuit

true && echo "it is true" || echo "it is not true"

// .loops: goto or recursion

true && echo "it is true" || echo "it is not true"

// == Object-Oriented

//    * map, filter, reduce
//    * curry, partial application 

if true then echo "it is true"; else echo "it is not true";
for i in 1 2 3 4 5; echo $i; done
while true; do echo "this is an infinite loop"; done

// === Implementing Object-Oriented constructs: from scratch 

// .if else then: short circuit

true && echo "it is true" || echo "it is not true"

// .loops: goto or recursion

true && echo "it is true" || echo "it is not true"
