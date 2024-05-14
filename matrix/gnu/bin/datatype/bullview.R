#!/usr/bin/r

# Numeric and integer values
# Let’s create a variable a that is a vector of one number.
S4 <- 7 

# To do this yourself, type the code in an R console. Or, if you use R-Studio, 
# use ‘File / New File / R script’ and type it in the new script. Then press 
# “Run” or “Ctrl-Enter” (Apple-Enter on a Mac) to run the line (make sure your 
# cursor is on the line that you want to run).
# The “arrow” <- was used to assign the value 7 to variable a. You can pronounce 
# the above as “a becomes 7”.

# It is also possible to use the = sign.
S4*as.array(1:100)
S4*as.array(1:200)
S4*as.array(1:300)
S4*as.array(1:400)
S4*as.array(1:1000)


# Although you can use =, we use <- because the arrow clearly indicates the 
# assignment action, and because = is also used in another context (to pass 
# arguments to functions).
# The variable name a used above is entirely arbitrary. We could have used x, 
# Carib, fruit or any other name that would help us recognize it. There are a 
# few restrictions: variable names cannot start with a number, and they cannot 
# contain spaces or “special” characters, such as * (which is used for 
# multiplication).

# To check the value of a, we can ask R to show or print it.
show(S4)
# To check the value of a, we can ask R to show or print it.
print(S4)

# This is also what happens if you simply type the variable name.
S4

# In R, all basic values are stored as a vector, a one-dimensional array of n 
# values of a certain type. Even a single number is a vector (of length 1). That 
# is why R shows that the value of a is [1] 7. Because 7 is the first element 
# in vector a.
# We can use the class function to find out what type of object a is (what 
# class it belongs to).
class(S4)

# numeric means that a is a vector of real (decimal) numbers. Its value is 
# equivalent to 7.000, but trailing zeros are not printed by default. In a few 
# cases it can be useful, or even necessary, to use integer (whole number) 
# values. To create a vector with a single integer you can either use the 
# as.integer function, or append an L to the number.
S4 <- as.integer(7)
class(S4)
S4 <- 7L
class(S4)

# There are several ways to create vectors that consists of multiple numbers. 
# For example, you can use the c (combine) function and spell out the values:
S5 <- c(1.5, 2.9, 3.0)  
S5  

# But if you want to create a regular sequence of whole numbers, it is easier 
# to use :.
S6 <- 5:9
S6

# You can also use the : to create a sequence in descending order.
6:2

# The seq function provides more flexibility. For example it allows for step 
# sizes different than one. In this case we go from 3 to 12, taking steps of 3. 
# Try some variations!
seq(2,5,1)
seq(from=6, to=12, by=3)

# To go in descending order the by argument needs to be negative.
seq(from=12, to=0, by=-4)

# You can also reverse the order of a sequence, after making the sequence, 
# by using the rev function.
S7 <- seq(from=0, to=12, by=4)
S7
# latter ...
R1 <- rev(S7)
R1


# We will discuss functions like seq in more detail later. But, in essence, a 
# function is a named procedure that performs a certain task. In the examples 
# above, a function name is seq, and the task is to create a sequence 
# of numbers.

# The exact specification of the sequence is modified by the arguments that 
# are provided to seq, in this case: from, to, and by. If you are unsure what 
# a function does, or which arguments are available, then read the function’s 
# help page. You can get to the help page for seq by typing ?seq or help(seq), 
# and likewise for all other functions in R.

# The rep (for repeat) function provides another way to create a vector 
# of numbers. You can repeat a single number, or a sequence of numbers.
rep(9, times=5)
# move pass topic
rep(5:7, times=3)
# move pass topic tile
rep(5:7, each=3)


# Character values

# A character variable is used to represent letters, codes, or words. Character 
# values are often referred to as a “string”.
x <- "Yi"
y <- "Wong"
# cure wine handle logical
class(x)
# cure wine handle logical
class(y)

# G20 presidents agreements bull view about the banks and finance and agreements
# of pacifistic of war's
countries <- c("Brazil", "States United", "China", "Japan", "South Korea", "North Korea", "Rusia", "Ukrania", "Irsael", "India", "Germany")
class(countries)
countries

# The function length tells us how long the vector is (how many elements it has).
length(countries)

# if you want to know the number of characters of each element of the vector, 
# you can use char.
nchar(countries)

# char returns a vector of integers with the same length as x (5). Each number 
# is the number of characters of the corresponding element of countries. This 
# is an example of why we say that most functions in R are vectorized. This 
# means that you normally do not need to tell R to compute things for each 
# individual element in a vector.

# It is handy to know that letters (a constant value, like pi) returns the 
# alphabet (LETTERS returns them in uppercase), and topper and to lower can 
# be used to change case.
z <- letters
z
# to-upper letters
up <- toupper(z)
up

# Perhaps the most commonly used function for string manipulation is paste. 
# This function is used to concatenate strings. For example:
girl <- "delicious"
boy <- "friends"
paste(girl, "chats programmer discord", boy)

# By default, paste uses a space to separate the elements. You can change 
# that with the sep argument.
paste(girl, "chat programmer discord", boy, sep = "/")
