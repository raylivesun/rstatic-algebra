#!/usr/bin/r

# Functions

# We now have used many functions that come with R. For example c, matrix, 
# read.csv, and sum. Functions are always used (‘called’) by typing their name, 
# followed by parenthesis. In most, but not all, cases you supply ‘arguments’ 
# within the parenthesis. If you do not type the parenthesis the function 
# is not called. Instead, either the function definition, or some of type 
# of reference to it, is shown.

# Existing functions

# To see the content of a function, type its name:
nrow(1L)

# We see that nrow has a single argument called x. It calls another function, 
# dim to which it provides the same argument (x) and returns its first element 
# (1L) (recall that adding L (‘literal’) is a way to create an integer). Can 
# you guess how ncol is implemented? (See for yourself if you are right!). 
# Now, let’s see what dim looks like.
dim(1L)

# This fails, because the function requires a valid argument, like this:
S17 <- matrix(1:6, nrow=2, ncol=3, byrow=TRUE)
nrow(S17)
## [1] 2

# Note nrow(m) and that this is equivalent to
nrow(x=S17)
## [1] 2


# Writing functions

# R comes with thousands of functions for you to use. Nevertheless, it is often 
# necessary to write your own functions. For example, you may want to write 
# a function to:

# more clearly describe and isolate a particular task in your data analysis 
# workflow.

# re-use code. Rather than repeating the same steps several times (e.g. for 
# each of 200 cases you are analysing), you can write a function that gets 
# called 200 times. This should lead to faster development of scripts and 
# to fewer mistakes. And if there is a mistake it only needs to be fixed 
# in one place.

# create a function that is an argument to another function (!). This is quite 
# commonly done when using ‘apply’ type functions (see next chapter).

# For these reasons, writing functions is one of the most important coding 
# skills to learn. Writing your own functions is not difficult. The below 
# is a very simple function. It is called f. This is an entirely arbitrary 
# name. You can also call it myFirstFunction. It takes no arguments, 
# and always returns ‘hello’.
S18 <- function() {
  return("Hello")
}

# Look carefully how we assign a function to name f using the function keyword 
# followed by parenthesis that enclose the arguments (there are none in this 
# case). The body of the function is enclosed in braces (also known as 
# “curly brackets” or “squiggly brackets”).

# Now that we have the function, we can inspect it, and use it.
S18()


# f is a very boring function. It takes no arguments and always returns 
# the same result. Let’s make it more interesting.
S19 <- function(name) {
  x <- paste("hello", name)
  return(x)
}
S19('Jasmin')
## [1] "hello Jasmin"


# Note the return statement. This indicates that variable x (which is only known 
# inside of the function) is returned to the caller of the function. Simply 
# typing x would also suffice, and ending the function with paste("hello", 
# name) would also do! So the below is equivalent but shorter, at the expense 
# of being less explicit.
call.send <- function(name) {
  paste("hello", name)
}
call.send("Sviatoslav")
## [1] "hello Sviatoslav"

# Here is a function that returns a sequence of letters. The length is determined by argument n.

frs <- function(n) {
  s <- sample(letters, n, replace=TRUE)
  r <- paste0(s, collapse="")
  return(r)
}


# Because the function uses randomization, I use set.seed to always get the same 
# result (as we discussed here.
set.seed(0)
frs(5)
## [1] "nydga"
frs(5)
## [1] "bwknr"
S20 <- frs(10)
S20
## [1] "sauujvnjgi"


# Now an example of a functions that manipulates numbers. This function squares 
# the sum of two numbers.

sumsquare <- function(a, b) {
  d <- a + b
  dd <- d * d
  return(dd)
}

# We can now use the sumsquare function. Note that it is vectorized (each 
# argument can be more than one number)
sumsquare(1,2)
## [1] 9
S21 <- 1:3
S22 <- 5
sumsquare(S21,S22)
## [1] 36 49 64

# You can name the arguments when using a function; that often makes your 
# intentions clearer.
sumsquare(a=1, b=2)
## [1] 9

# But the names must match
sumsquare(a=1, b=2)

# Unless we redefine the function with default arguments that will be used 
# if a value for the argument is not provided.

sumsquareS2 <- function(a=0, b=1) {
  d <- a + b
  dd <- d * d
  return(dd)
}
sumsquareS2(1:5, 2)
## [1]  9 16 25 36 49

# As both arguments have a default value, we can call sumsquareD without 
# providing arguments
sumsquareS2(2)

# Above the value 5 was assigned to argument a because the argument was matched 
# “by position”. If we only wanted to provide a value for b, we need to 
# match “by name”.
sumsquareS2(4)

# Just another example, a function to compute the number of unique values 
# in a vector:

nunique <- function(x) {
  length(unique(x))
}
data <- c("a", "b", "a", "c", "b")
nunique(data)
## [1] 3

# Of course, these were toy examples, but if you understand these, you should 
# be able to write much longer and more useful functions. It can be difficult 
# to “debug” (find errors in) a function. It is often best to first write the 
# sequence of commands that you need outside a function, and only when it all 
# works, wrap that code inside of a function block (function( ) { }).
# Ellipses (…)

# Ellipses ... are a special argument to many functions. It allows to pass 
# optional additional arguments and/or arguments that are passed on to other 
# functions. Consider these two functions (this is a bit advanced).

S23 <- function(x, y=10) {
  x * y
}
# f2 calls f1
S24 <- function(x, ...) {
  S23(x, ...)
}
S23(5)
## [1] 50
S24(5, y=5)
## [1] 25

# Functions overview

# A list of much used functions that we discuss in this introduction to R:
# c, bind, r bind length, dim, n row, n col
# sum, mean, prod, sort
# apply, supply, apply, aggregate row Sums, row Means
# merge, reshape                                                                                       




