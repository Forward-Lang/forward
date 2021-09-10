-- == Basics

-- tag::function[]
   function say(text)
     print(text);
     return true;
   end
-- end::function[]

-- tag::anonFunction[]
   say = function (text) print(text); return true; end
-- end::anonFunction[]

-- == Imperative constructs

-- tag::ifElse[]
   if true then
      say("it is true");
   else
      say("it is not true");
   end
-- end::ifElse[]

-- tag::loops[]
   for i = 1,5 do
      say(i);
   end

   -- execute once, stop when true
   repeat
     say("this is executed once");
   until true

   -- execute only if true
   while true do
      say("this is an infinite loop");
   end
-- end::loops[]

-- == Imperative constructs from scratch 

-- tag::short[]
   say(true and "it is true" or "it is not true")              -- <1>
   -- (1) if else then, implemented with short circuit
   --     print in lua is evaluated as a falsey value,
   --     so the following would print both "it is true" and "it is not true":
   --       return true and print("it is true") or print("it is not true") 
   --     the return statement is required since lua distinguishes between statements and expressions
-- end::short[]

-- tag::recursion[]
   function while_loop ()
     say("yes");
     return true and while_loop();
   end

   function for_loop (i)
     i = i+1;
     say(i);
     return (i == 5) or for_loop(i);
   end

   for_loop(0)   -- <1>
   while_loop()  -- <2>
   -- (1) execute for-loop first
   -- (2) since the while-loop will enter an infinite loop,
   --     you will need to cancel the execution by pressing CTRL-C
-- end::recursion[]

-- == Functional constructs

-- lua doesn't implement map, reduce, filter by default

-- == Functional constructs from scratch 


-- == Object-Oriented


-- === Object-Oriented constructs from scratch 

