-- == Imperative constructs

if true then print("it is true"); else print("it is not true"); end
for i = 1,5 do print(i); end
repeat print("this is executed once"); until true     -- <1>
while true do print("this is an infinite loop"); end  -- <2>

-- (1) execute once, stop when true
-- (2) execute only if true 

-- == Imperative constructs from scratch 

print(true and "it is true" or "it is not true")              -- <1>
function while_loop () print("yes") and true and while_loop(); end            -- <2>
function for_loop (i) i = i+1; print(i); return (i == 5) or for_loop(i); end  -- <3>
for_loop(0)

-- (1) if else then, implemented with short circuit
-- (2) while loop implemented with recursion
-- (3)   for loop implemented with recursion

-- == Functional constructs

alias grep="grep --extended-regexp"

{ # <1> <2>
  tr a-z A-Z \
| tr ' ' "\n" \
| grep --invert-match 'O|S'; # <3>
} <<< "One Two Three Four Five Six"

shopt -s expand_aliases

-- (1) map lower-case letters to upper-case letters
-- (2) replace space with newlines
-- (3) filter away lines containing 'O' or 'S'

alias ls="ls -l --color=always --almost-all --group-directories-first --human-readable --inode --sort=time" # <4>

-- (4) partially apply flags to ls


-- == Functional constructs from scratch 


-- == Object-Oriented


-- === Object-Oriented constructs from scratch 

