// == Basics

// tag::anonFunction[]
   say = (x) => { console.log(x); return true; };
// end::anonFunction[]

// == Imperative

// tag::ifElse[]
   if (true) {
      say("it is true"); 
   } else { 
      say("it is not true"); 
   } 
// end::ifElse[]

// tag::loops[]
   for (var i of [1, 2, 3, 4, 5]) {
      say(i);
   }

   while (true) { 
      say("this is an infinite loop");
   }
// end::loops[]

// == Imperative constructs from scratch 

// tag::short[]
   true && say("it is true") || say("it is not true")
// end::short[]

// tag::recursion[]
   function while_loop() {
      say("yes") && true && while_loop();
   }

   function   for_loop(i) { 
      i++; 
      say(i);
      (i == 5) || for_loop(i);
   }

   for_loop(0)  // <1>
   while_loop() // <2>
   // (1) execute for-loop first
   // (2) since the while loop will enter an infinite loop,
   //     you will need to cancel the execution by pressing CTRL-C
// end::recursion[]

// == Functional

// tag::mapReduce[]
   const numbers = [1, 2, 3, 4, 5];
   say(numbers.map(i => i * 3));          // <1>
   say(numbers.filter(i => i % 2));       // <2>
   say(numbers.reduce((a,b) => a + b ));  // <3>
   // (1) map
   // (2) filter
   // (3) reduce
// end::mapReduce[]

//    * curry, partial application 

// == Functional constructs from scratch 


// == Object-Oriented

//    * properties, methods

myObject = { myProperty: "name", myMethod: (x) => "name"; }


// == Object-Oriented constructs from scratch 

