#!/usr/bin/r

# Miscellaneous
# Packages
# 
# Packages are collections of R functions. Typically around a related set of 
# tasks. R comes with a standard “base” set of packages. Others are available 
# for download and installation. These packages are developed by (groups of) 
# individuals independently of the “core R” development team. Most of these 
# packages are developed by volunteers, who write them to support their 
# research or other work. For that reason the are highly variable in design 
# and quality. There is also a lot of overlap between packages and it can take 
# a while to find the ones you need to best accomplish a task.
# 
# To install a package, you can do install.packages("package"); 
# replace “package” with the name of an actual package. For example 
# install.packages("raster").
# 
# You can install multiple packages at the same time like this: 
# install.packages(c("randomForest", "terra"))
# 
# The directory where packages are stored is called the library. 
# Once installed, a package needs to be loaded into the session 
# (taken out of the library) to be used. You do that with the 
# library function. For example:
#   
# library(terra)
# 
# If the package is not installed, you get an error message like this
# 
# So you install a package only once (for each R version), or once in a 
# while (to get updates), but you load (check it out from the library) a 
# package every time you start a new R session (script) that needs it.
# 
# It is very important to stay up to date with R and the packages, as they 
# improve every day…. You should update the main R program about every 
# 3 months and update your packages more regularly, perhaps once a month. 
# To update all your packages you can run update.packages()
# Piping
# 
# It has become quite common to use the |> “piping” operator in R, or 
# the %>% variant defined in the magrittr package. We do not use it much 
# in our tutorials, but we show it here so that you can understand it when 
# you come across it.
# 
# In this example we have vector v. We want to change it into a data.frame 
# with 10 rows and 3 columns, use apply to get the mean values per row, and 
# show the first few results

S56 <- 1:30

# The classic approach to this is

S57 <- matrix(S56, nrow=10)
S58 <- as.data.frame(S57)
S59 <- apply(S58, 1, mean)
head(S59)
## [1] 11 12 13 14 15 16

# The above can also be written as nested function calls

head(apply(as.data.frame(matrix(S56, nrow=10)), 1, mean))
## [1] 11 12 13 14 15 16

# Nested function calls can be difficult to read, as they need to be read 
# from the inside parentheses going out, but it can be hard to keep track 
# of the parentheses.

# The “piped” approach goes like this

S60 <- S56 |>
  matrix(nrow=10) |>
  as.data.frame() |>
  apply(MARGIN=1, FUN=mean)
head(S60)
## [1] 11 12 13 14 15 16

# Or on one line


# Note that we start with an object v that gets passed to the first function 
# (as.data.frame) as its first argument. The output of that function becomes 
# the first argument of the next function and so on.
# 
# Compared to nested function calls, the benefit of this approach is that the 
# operation sequence is read from left-to-right (not from the inside and out). 
# Compared with non-nested function calls, the benefit of this approach is that 
# there are fewer variables created. The downside is that it is harder to debug 
# (find errors) or improve the code, because you cannot inspect the results 
# from intermediate steps.
# How to write a good script?
#   
# It is very important to invest time and effort in writing clean, concise and 
# expressive scripts. Just like you might do when you write an essay.
# 
# Have a look, and consider following this style guide.
# 
# Only define a path name at the very top of your script. After that, all 
# filenames should be relative to that path.
# 
# Do not copy and paste the same code into a single script 
# (or multiple scripts), perhaps with minor changes. Rather, write general 
# purpose functions to put code together. You can store these functions in 
# a separate .R file and access them via source('myfunctions.R); and then 
# reuse them. If you have a few of these, you might want to put them into 
# your own R package. Even if the functions are only for your own use.
