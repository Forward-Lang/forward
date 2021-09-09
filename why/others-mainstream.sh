# == Imperative constructs

# tag::ifElse[]
  if true; then echo "it is true"; else echo "it is not true"; fi
# end::ifElse[]

# tag::loops[]
  for i in 1 2 3 4 5; do echo $i; done
  until true; do echo "this is never executed"; done   # <1>
  while true; do echo "this is an infinite loop"; done # <2>

  # (1) the `until true` loop can be thought of as a `while false` loop 
  # (2) the `while true` loop can be thought of as a `until false` loop 
# end::loops[]

# == Imperative constructs from scratch 

# tag::short[]
  true && echo "it is true" || echo "it is not true"              # <1>
  # (1) if else then, implemented with short circuit
# end::short[]

# tag::recursion[]
  while_loop () { echo "yes" && true && while_loop; }             # <2>
    for_loop () { let i++; echo $i; test $i -eq 5 || for_loop; }  # <3>
  # (2) while loop implemented with recursion
  # (3)   for loop implemented with recursion
# end::recursion[]

# == Functional constructs

alias grep="grep --extended-regexp"

{ # <1> <2>
  tr a-z A-Z \
| tr ' ' "\n" \
| grep --invert-match 'O|S'; # <3>
} <<< "One Two Three Four Five Six"

shopt -s expand_aliases

# (1) map lower-case letters to upper-case letters
# (2) replace space with newlines
# (3) filter away lines containing 'O' or 'S'

alias ls="ls -l --color=always --almost-all --group-directories-first --human-readable --inode --sort=time" # <4>

# (4) partially apply flags to ls


# == Functional constructs from scratch 


# == Object-Oriented


# === Object-Oriented constructs from scratch 

