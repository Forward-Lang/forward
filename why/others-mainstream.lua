-- == Imperative constructs

-- tag::ifElse[]
   if true then print("it is true"); else print("it is not true"); end
-- end::ifElse[]

-- tag::loops[]
   for i = 1,5 do print(i); end
   repeat print("this is executed once"); until true     -- <1>
   while true do print("this is an infinite loop"); end  -- <2>
   -- (1) execute once, stop when true
   -- (2) execute only if true
-- end::loops[]

-- == Imperative constructs from scratch 

-- tag::short[]
   print(true and "it is true" or "it is not true")              -- <1>
   -- (1) if else then, implemented with short circuit
   --     print in lua is evaluated as a falsey value,
   --     so the following would print both "it is true" and "it is not true":
   --       return true and print("it is true") or print("it is not true") 
   --     the return statement is required since lua distinguishes between statements and expressions
-- end::short[]

-- tag::recursion[]
   function while_loop () print("yes"); return true and while_loop(); end        -- <2>
   function for_loop (i) i = i+1; print(i); return (i == 5) or for_loop(i); end  -- <3>
   for_loop(0)
   while_loop()
   -- (2) while loop implemented with recursion
   -- (3)   for loop implemented with recursion
-- end::recursion[]

-- == Functional constructs

-- lua doesn't implement map, reduce, filter by default

-- == Functional constructs from scratch 


-- == Object-Oriented


-- === Object-Oriented constructs from scratch 

