# == Imperative constructs

if true; then echo "it is true"; else echo "it is not true"; fi
for i in 1 2 3 4 5; do echo $i; done
until true; do echo "this is never executed"; done   # <1>
while true; do echo "this is an infinite loop"; done # <2>

# (1) the `until true` loop can be thought of as a `while false` loop 
# (2) the `while true` loop can be thought of as a `until false` loop 

# == Imperative constructs from scratch 

true && echo "it is true" || echo "it is not true"              # <1>
while_loop () { echo "yes" && true && while_loop; }             # <2>
  for_loop () { let i++; echo $i; test $i -eq 5 || for_loop; }  # <3>

# (1) if else then, implemented with short circuit
# (2) while loop implemented with recursion
# (3)   for loop implemented with recursion

# == Functional constructs

{
  tr a-z A-Z \
| grep --invert-match 'O|S'; # <2>
} <<- EOF
	One
	Two
	Three
	Four
	Five
	Six
EOF
alias ls="ls -l --color=always --almost-all --group-directories-first --human-readable --inode --sort=time" # <3>
shopt -s expand_aliases

# (1) map lower-case letters to upper-case letters
# (2) filter away lines containing 'O' or 'S'
# (3) partially apply flags to ls

shopt -s expand_aliases
alias grep="grep --extended-regexp"

echo One Two Three Four Five Six | # no
tr a-z' ' A-Z'\n'                | # yes
grep --invert-match 'O|S'          # yep


# == Functional constructs from scratch 


# == Object-Oriented


# === Object-Oriented constructs from scratch 

