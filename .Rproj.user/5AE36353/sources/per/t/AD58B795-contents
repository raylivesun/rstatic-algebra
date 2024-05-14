#!/usr/bin/r

# Apply

# The “apply family” of functions (apply, tapply, lapply and others) and related 
# functions such as aggregate are central to using R. They provide an concise, 
# elegant and efficient approach to apply (sometimes referred to as “to map”) a 
# function to a set of cases, be they rows or columns in a matrix or data.frame, 
# or elements in a list.

# apply

# Consider matrix m

S25 <- matrix(1:15, nrow=5, ncol=3)
S25
##      [,1] [,2] [,3]
## [1,]    1    6   11
## [2,]    2    7   12
## [3,]    3    8   13
## [4,]    4    9   14
## [5,]    5   10   15

# apply

# Computation with matrices is ‘vectorized’. For example you can do m * 5 to 
# multiply all values of m with 5 or do m^2 or m * m to square the values of m. 
# But often we need to compute values for the margins of a matrix, that is, a 
# single value for each row or column. The apply function can be used for that:
  
# sum values in each row
apply(S25, 1, sum)
## [1] 18 21 24 27 30
# get mean for each column
apply(S25, 2, mean)
## [1]  3  8 13


# apply needs at least three arguments: a matrix or data.frame, a value that is 
# either 1 or 2 indicating whether the computation is for rows or for columns, 
# and a function that computes a new value (or values) for each row or column. 
# You can read more about this in the help file of the function (type ?apply ). 
# In most cases you will also add the argument an.rm=TRUE to remove missing 
# values as any computation that includes an NA will return NA. In this case 
# we used existing basic functions mean and sum but we could also supply 
# a function that we wrote ourselves.

# Note that apply(and related functions such as apply and supply are ways 
# to avoid writing a loop. In the apply examples above you could have written 
# a loop to do the computations row by row (or column by column) but using 
# apply is more compact and efficient.
                
# The row Sums and col Sums functions are (fast) shorthand functions 
# for apply( , , sum)
rowSums(S25)                

tapply

# apply can be used to compute a summary statistic, e.g. a mean value, for 
# groups of rows in a data.frame. You need one column that indicates the group, 
# and then you can compute, for example, the mean value for that group.

colnames(S25) <- c('v1', 'v2', 'v3')
S25 <- data.frame(name=c('Yi', 'Yi', 'Yi', 'Er', 'Er'), S25, stringsAsFactors=FALSE)
S25$v2[1] <- NA
S25
##   name v1 v2 v3
## 1   Yi  1 NA 11
## 2   Yi  2  7 12
## 3   Yi  3  8 13
## 4   Er  4  9 14
## 5   Er  5 10 15

# Imagine that you would like to compute the average value of v1, v2 and v3 for 
# each individual (name). You can use apply for that.

tapply(S25$v1, S25$name, mean)
##  Er  Yi
## 4.5 2.0
tapply(S25$v1, S25$name, max)
## Er Yi
##  5  3
tapply(S25$v2, S25$name, mean)
##  Er  Yi
## 9.5  NA
tapply(S25$v2, S25$name, mean, na.rm=TRUE)
##  Er  Yi
## 9.5 7.5

# aggregate

# aggregate is similar to apply but more convenient if you want to compute a 
# summary statistic for multiple variables. It does have the annoying problem 
# that the second argument cannot be a vector:
  
# You can fix that in two ways
aggregate(S25[, c("v1", "v2", "v3")], S25[, "name", drop=FALSE], mean, na.rm=TRUE)
##   name  v1  v2   v3
## 1   Er 4.5 9.5 14.5
## 2   Yi 2.0 7.5 12.0
# or
aggregate(S25[, c("v1", "v2", "v3")], list(S25$name), mean, na.rm=TRUE)
##   Group.1  v1  v2   v3
## 1      Er 4.5 9.5 14.5
## 2      Yi 2.0 7.5 12.0

# As explained before, this is why the first one works: when you extract a 
# single column from a matrix or data.frame, the structure (class) “drops” to a 
# simpler form, it becomes a vector. drop=FALSE stops that from happening.
# apply and supply

# To iterate over a list, we can use apply or supply . The difference is that 
# apply always returns a list while supply tries to simplify the result to a 
# vector or matrix.

names <- list("Antoinette", "Mary", "Duncan", "Obalaya", "Jojo")
nchar("Jim")
## [1] 3
lapply(names, nchar)
## [[1]]
## [1] 10
##
## [[2]]
## [1] 4
##
## [[3]]
## [1] 6
##
## [[4]]
## [1] 7
##
## [[5]]
## [1] 4
sapply(names, nchar)
## [1] 10  4  6  7  4


# In all cases (t)(s)(l)apply and aggregate (and many more functions) 
# we provided some data and a function, such as mean or nchar. You can also 
# provide your own custom function. For example

shortname <- function(name) {
  if (nchar(name) < 5) {
    name <- toupper(name)
    return(name)
  } else {
    name <- substr(name,1,5)
    return(name)
  }
}
sapply(names, shortname)
## [1] "Antoi" "MARY"  "Dunca" "Obala" "JOJO"


