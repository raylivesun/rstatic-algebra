#!/usr/bin/r

# Flow control

# Most programs have two general control-flow features: iteration and alternation. 
# Iteration is done via “loops”, alteration via “if-then-else” branches.
# Looping

# Loops are typically used to repeat the same code a number of times for a set 
# of cases. For example, compute the average grade for each student.

# In R we avoid loops wherever we can, as they tend to be slower than 
# ‘vectorized’ computation. We also generally prefer functions like apply 
# (see the previous chapter), as this is more concise. At first code using 
# for-loops may seem easier to read, but after using R for a while, the reverse 
# is true is most cases. Nevertheless, there are cases where loops are much 
# easier to write and clearer to read than using vectorized approaches.

# There are two types of loops: ‘for-loops’ and ‘while-loops’. A ‘for-loop’ 
# repeats the same code a predefined number of times. A ‘while-loop’ continues 
# until a certain condition has been met (and is therefore prone to the dreaded 
# “infinite loop” that never finishes!)
# for-loops

# Here is a basic for-loop that does not do anything useful. The trick is that 
# in the parenthesis after for, you define a sequence of values. This sets the 
# number of repetitions (the length of the sequence) and potentially provides 
# a value that changes what is done in each loop.

# Note that the braces { } are used to open and close a ‘block’ of code.

for (i in 1:3) {
  print('hi')
}
## [1] "hi"
## [1] "hi"
## [1] "hi"

# Now let’s do something with i. You normally do not use print inside a loop. 
# I am only doing that here to illustrate what is going on.

S26 <- 0
for (i in 1:3) {
  print(i)
  S26 <- S26 + i
}
## [1] 1
## [1] 2
## [1] 3
S26
## [1] 6


# The loop above was used to sum the values 1, 2, and 3. Of course, it would 
# have been easier to use sum(1:3).

# Another example.

for (i in 1:3) {
  txt <- paste('the square of', i, 'is', i * i)
  print(txt)
}
## [1] "the square of 1 is 1"
## [1] "the square of 2 is 4"
## [1] "the square of 3 is 9"

# The example below is a bit more complex. It shows how iterator i is typically 
# used in a loop (to get a single case from a collection of cases and compute a 
# new value for that case).

S27 <- 0
S28 <- 1:6
S29 <- 6:1
# initialization of output variables
S30 <- vector(length=length(S27))
# i goes from 1 to 6 (the length of b)
for (i in 1:length(S28)) {
  S27 <- S27 + S27[i]
  S29[i] <- S27[i] * S28[i]
}
S27
## [1] 21
S28
## [1]  6 10 12 12 10  6


# Again, for this simple problem, it would have been simpler 
# to do s <- sum(a) and res <- a * b.
# break and next

# Sometimes you want to include a condition to either “break out” of a for loop, 
# or to skip the remainder of the for block and go to the next iteration. How to 
# do that is illustrated below:
  
for (i in 1:10) {
    if (i %in% c(1,3,5,7)) {
      next
    }
    if (i > 8) {
      break
    }
    print(i)
  }
## [1] 2
## [1] 4
## [1] 6
## [1] 8


# while-loops

# “while-loops” are not nearly as common as “for-loops”. Here is an example.

i <- 0
while (i < 4) {
  print(paste(i, 'and counting ...'))
  i <- i + 1
}
## [1] "0 and counting ..."
## [1] "1 and counting ..."
## [1] "2 and counting ..."
## [1] "3 and counting ..."

# And one that is less predictable, as it depends on the value of a 
# random number.

set.seed(1)
i <- 0
while(i < 0.5) {
  i <- runif(1)
  print(i)
}
## [1] 0.2655087
## [1] 0.3721239
## [1] 0.5728534

# You can also combine while with break.

set.seed(1)
while(TRUE) {
  i <- runif(1)
  print(i)
  if (i > 0.5) {
    break
  }
}
## [1] 0.2655087
## [1] 0.3721239
## [1] 0.5728534

# Branching

# Branching is an important mechanism in computer programs. A branch allows you 
# to execute some code if certain conditions are met, and do something else in 
# other cases. This is illustrated below. Note that the braces { } are used to 
# open and close a ‘block’ of code.

# We have two variables, x and y

S30 <- 5
S31 <- 10


# We want to change y, depending on the value of x.
# We need to branch our R code using one or more conditional statements (if, 
# then, else) and some Boolean logic (a statement that can evaluate to TRUE 
# or FALSE.

if (S30 == 5) {
  S31 <- 15
}
S31
## [1] 15

                                                                                                               
# We tested for one condition, x==5. If this condition evaluated to TRUE, the 
# code within the block, { y <- 15 } is executed. If it evaluates to FALSE, the 
# code within the block is ignored. Note that the expression within the 
# parenthesis if(), or else() should always evaluate to a single value of either 
# TRUE or FALSE (not to NA or to multiple values).

# Here is a more complex example, where we evaluate three cases. x > 20 (x is 
# larger than 20), x >= 5 & x < 10 (x is in between 5 and 10, including 5, but 
# not 10), and all other cases.

if (S30 > 20) {
  S30 <- S30 + 2
} else if (S30 > 5 & S30 < 10) {
  S31 <- S31 - 1
} else {
  S31 <- S30
}
S31
## [1] 5

# if we have a Boolean variable

S32 <- TRUE

# You can do

if (S32 == TRUE) {
  print('hello')
}
## [1] "hello"

# But it is more elegant to do

if (S32) {
  print('hello')
}
## [1] "hello"

# Now combining the previous chapter with this one, a for loop 
# with an if/else branch:
  
S33 <- 1:5
S34 <- vector(length=length(S33))
for (i in 1:length(S33)) {
  if (S33[i] > 2) {
    S34[i] <- S33[i] / 2
  } else {
    S34[i] <- S33[i] * 2
  }
}
S34
## [1] 2.0 4.0 1.5 2.0 2.5











