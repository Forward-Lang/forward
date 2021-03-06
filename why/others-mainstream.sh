# == Basics

# tag::function[]
  function say () {
    echo $1;
  }
# end::function[]

# == Imperative constructs

# tag::ifElse[]
  if true; then
     say "it is true";
  else
     say "it is not true";
  fi
# end::ifElse[]

# tag::loops[]
  for i in 1 2 3 4 5; do
     say $i;
  done
  
  for ((i=1; i <= 5; i++)); do
     say $i;
  done
  
  # the `until true` loop can be thought of as a `while false` loop 
  until true; do
     say "this is never executed";
  done
  
  # the `while true` loop can be thought of as a `until false` loop 
  while true; do
     say "this is an infinite loop";
  done
# end::loops[]

# == Imperative constructs from scratch 

# tag::short[]
  true && say "it is true" || say "it is not true"
# end::short[]

# tag::recursion[]
  function while_loop () {
    say "yes" && true && while_loop;
  }
  
  function for_loop () {
    let i++;
    say $i;
    test $i == 5 || for_loop;
  }
    for_loop # <1>
  while_loop # <2>
  # (1) execute for loop first
  # (2) since the while loop will enter an infinite loop,
  #     you will need to cancel the execution by pressing CTRL-C
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

