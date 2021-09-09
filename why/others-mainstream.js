// == Imperative

// tag::ifElse[]
   if (true) { console.log("it is true"); } else { console.log("it is not true"); } 
// end::ifElse[]

// tag::loops[]
   for (var i of [1, 2, 3, 4, 5]) { console.log(i); }
   while (true) { console.log("this is an infinite loop"); }
// end::loops[]

// == Imperative constructs from scratch 

// tag::short[]
   true && doThis() || doThat();              // <1>
   // (1) if else then, implemented with short circuit
// end::short[]

// end::recursion[]
   echo = (x) => { console.log(x); return true; };
   function while_loop() { echo("yes") && true && while_loop(); }    // <2>
   function   for_loop(i) { i++; echo(i); (i == 5) || for_loop(i); } // <3>
   while_loop()
   for_loop(0)
   // (2) while loop implemented with recursion
   // (3)   for loop implemented with recursion
// end::recursion[]

// == Functional

const numbers = [1, 2, 3, 4, 5];
echo(numbers.map(i => i * 3));          // <1>
echo(numbers.filter(i => i % 2));       // <2>
echo(numbers.reduce((a,b) => a + b ));  // <3>

// (1) map
// (2) filter
// (3) reduce

//    * curry, partial application 

// == Functional constructs from scratch 


// == Object-Oriented

//    * properties, methods

myObject = { myProperty: "name", myMethod: (x) => "name"; }


// == Object-Oriented constructs from scratch 

