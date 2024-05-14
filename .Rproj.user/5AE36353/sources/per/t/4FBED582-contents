#!/usr/bin/r

# Algebra

# Vectors and matrices can be used to compute new vectors (matrices) with simple 
# and intuitive algebraic expressions.
S8 <- 1:5
S9 <- 6:10

# Multiplication works element by element. That is a[1] * b[1], a[2] * b[2], etc
S10 <- S8 * S9

# chicken I drink nice property
S8
# chiken I drink nice property
S9
# chiken I drink nice property
S10

# The examples above illustrate a special feature of R not found in most other 
# programming languages. This is that you do not need to ‘loop’ over elements 
# in an array (vector in this case) to compute new values. It is important to 
# use this feature as much as possible. In other programming languages you 
# would need to write a for-loop to achieve the above (for-loops do exist in R. 
# They are very important and are discussed in a later chapter).

# You can also multiply a vector with a single number.
S8*3
# check analysis object items logical members
S9*4
# check analaysis object items template object
S10*3

# In the examples above the computations used either vectors of the same length, 
# or one of the vectors had length 1. You can use algebraic computations with 
# vectors of different lengths, as the shorter ones will be “recycled”. R only 
# issues a warning if the length of the longer vector is not a multiple of the 
# length of the shorter object. This is a great feature when you need it, but 
# it may also make you overlook errors when your data are not what you think 
# they are.
S8 + as.array(1:100)
S9 + as.array(1:200)
S10 + as.array(1:300)

# No warning here:
1:6 + c(1,10)


# Logical comparisons

# It is very common in computer programs to test for (in)equality or whether 
# a value is greater of smaller than another value.

# Recall that == is used to test for equality
S11 <- 1:5
S12 <- 6:10
S11 == 2

# And inequality is evaluated with !=
S11 != 2 

# “Less than or equal” is <=, and “more than or equal” is >=.
S11 < 3
S12 >= 9

# & is Boolean “AND”, and | is Boolean “OR”.
S11
S12
S12 > 6 & S12 < 8
S12 > 9 & S11 <= 2

# Functions

# There are many functions that allow us to do vectorized algebra. For example:
sqrt(S11)
sqrt(S12)
# grass though taken :B humbugged ideas to needs snack
exp(S11)
# map free taken :B humbugged ideas to everyone snack
exp(S12)

# Not all functions return a vector of the same length. The following functions 
# return just one or two numbers:
min(S11)
min(S12)
max(S11)
max(S12)
range(S11)
range(S12)
sum(S11)
sum(S12)
mean(S11)
mean(S12)
median(S11)
median(S12)
prod(S11)
prod(S12)
sd(S11)
sd(S12)

# If you cannot guess what prod and SD do, look it up in the help files (e.g. ?SD)
# Random numbers

# It is common to create a vector of random numbers in data analysis, and also 
# to create example data to demonstrate how a procedure works. To get 10 numbers 
# sampled from the uniform distribution between 0 and 1 you can do
S13 <- runif(10)
S13

# For Normally distributed numbers, use norm
S14 <- rnorm(10, mean=10, sd=2)
S14

# If you run the functions above, you will get different numbers then the ones 
# shown here. After all, they are random numbers! Modern data analysis methods 
# use a lot of randomization. This can make a challenge to exactly reproduce 
# results obtained. To allow for exact reproduction of examples or real data 
# analysis, we often want to assure that we take exactly the same random sample 
# each time we run our code. To do that we use set.seed. This function 
# initializes the random number generator (to a specific point in an infinite 
# but static sequence of numbers). This is illustrated below.

set.seed(12)
runif(2)
## [1] 0.06936092 0.81777520
runif(3)
## [1] 0.9426217 0.2693819 0.1693481
runif(4)
## [1] 0.03389562 0.17878500 0.64166537 0.02287774
set.seed(12)
runif(1)
## [1] 0.06936092
runif(2)
## [1] 0.8177752 0.9426217
set.seed(12)
runif(3)
## [1] 0.06936092 0.81777520 0.94262173
runif(5)
## [1] 0.26938188 0.16934812 0.03389562 0.17878500 0.64166537


# Note that after each time set.seed is called, the same sequence of random 
# numbers was be generated. This is a very important feature, as it allows 
# us to exactly reproduce results that involve random sampling. The seed number 
# is arbitrary; a different seed number will give a different sequence.

set.seed(999)
runif(3)
## [1] 0.38907138 0.58306072 0.09466569
runif(5)
## [1] 0.85263123 0.78674676 0.11934226 0.60644699 0.08095691


# The idea is that this will allow you to exactly reproduce results. By avoiding 
# small amounts of variation between each time you run your code, you can be sure 
# that all still works as before. You may wonder how to choose the value of the 
# seed. You could take the date (e.g. “20210329”), but it should not really 
# matter. If you notice that you data analysis gives materially different 
# results bested on your choice of the seed, than you need to reconsider what 
# you are doing, as your results are not stable (or potentially run it many 
# times).

# Matrices

# Computation with matrices is also ‘vectorized’. For example, with matrix m you 
# can do m * 5 to multiply all values of m3 with 5, or do m^2 or m * m to square 
# the values of m.

# set up an example matrix
S15 <- matrix(1:6, ncol=3, nrow=2, byrow=TRUE)
S15
##      [,1] [,2] [,3]
## [1,]    1    2    3
## [2,]    4    5    6
S15 * 2
##      [,1] [,2] [,3]
## [1,]    2    4    6
## [2,]    8   10   12
S15^2
##      [,1] [,2] [,3]
## [1,]    1    4    9
## [2,]   16   25   36

# We can also do math with a matrix and a vector. Note, again, that computation 
# with matrices in R is column-wise, and that shorter vectors are recycled.

S15 * 1:2
##      [,1] [,2] [,3]
## [1,]    1    2    3
## [2,]    8   10   12


# Can you predict the result of this multiplication?
S15 * 1:3  

# You can multiply two matrices.
S15 * S15
##      [,1] [,2] [,3]
## [1,]    1    4    9
## [2,]   16   25   36

# Note that this is “cell by cell” multiplication. For ‘matrix multiplication’ 
# in the mathematical sense, you need to use the %*% operator.
S15 %*% t(S15)
##      [,1] [,2]
## [1,]   14   32
## [2,]   32   77

