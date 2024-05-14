#!/usr/bin/r

# Data preparation

# A very large part of research work can consist of data gathering, cleaning, 
# combining and formatting. You may spend much more time on data preparation 
# than on analysis, modeling or visualization. R provides some tools to make 
# this process easier; but doing this well also requires that you carefully 
# consider your options. See Wickham (2014) for a discussion. Two very important 
# functions in this context are reshape and merge. Sorting of data can also be 
# helpful.

# reshape

# reshape allows you to rearrange data from a wide to a long form and vice versa. 
# This can be a very important step to simplify data analysis. In the wide form, 
# each variable is a column and each case (e.g. individual) is a singe row. This 
# is the common ‘spreadsheet’ approach. In the long form there is column that 
# indicates the variable name and a column that has its value. Other columns 
# identify the cases, and these can be repeated many times. The long form can 
# be much easier for use in data analysis than the wide form. In many cases you 
# may want to go from one form to the other and back.

# The function to go between wide and long form is called reshape. Unfortunately 
# reshape is rather difficult to use. There is only one function to go from wide 
# to long and vice versa, creating confusion about what arguments to use when. It 
# is also poorly documented, and its error messages are bewildering. (There is a 
# package called reshape that you can use instead. But in this Introduction I want 
# to stick with base R idiom.)

# There is a good example of how to use reshape here. And I will re-use that and 
# expand on it.

# wide to long

# Get some example data on student’s performance in different subjects. Note how 
# you can read a text on a web server (http address).
S35 <- read.csv('https://stats.idre.ucla.edu/stat/data/hsb2.csv')
S36 <- S35[1:3, c(1:2, 8:9)]
S36
##    id female write math
## 1  70      0    52   41
## 2 121      1    59   53
## 3  86      0    33   54


# This is a “wide” form datasheet. To go to a long form, you need to provide an 
# argument varying that indicates the variables that are combined into one new 
# variable. v.names is the name of this new variable.

S36 <- c("write", "math")
S37 <- reshape(S35, varying=S36, v.names="score", direction = "long")
S37
##        id female time score
## 70.1   70      0    1    52
## 121.1 121      1    1    59
## 86.1   86      0    1    33
## 70.2   70      0    2    41
## 121.2 121      1    2    53
## 86.2   86      0    2    54

# x has two new variables “time”, and “score”. As you can see, “score” has the 
# values for “write” and “math” in the d. The “time” variable identifies which 
# is which. “write” is identified with a 1, and “math” is identified with a 2. 
# To have clear labels rather than such numbers, you can use the times argument; 
# and add the time var argument to rename “time” to something more meaningful. 
# Note that the argument names are based on the idea that the data refer to 
# different measurements over time. But this is not always the case.

S38 <- reshape(S35, varying=S36, v.names="score", times=S36, timevar = "subject", direction = "long")
S38
##            id female subject score
## 70.write   70      0   write    52
## 121.write 121      1   write    59
## 86.write   86      0   write    33
## 70.math    70      0    math    41
## 121.math  121      1    math    53
## 86.math    86      0    math    54


# The row names also identify how the records were created. To get rid of the row names do

rownames(S37) <- NULL
S37
##    id female subject score
## 1  70      0   write    52
## 2 121      1   write    59
## 3  86      0   write    33
## 4  70      0    math    41
## 5 121      1    math    53
## 6  86      0    math    54


# Variables “id” and “female” were unchanging, but they were duplicated because 
# two variables (“write” and “math”) were combined into one (“subject”)
# long to wide

# To go from long to wide we need to use “id var” and “time var”. “id var” 
# identifies the variables that identify a single case (e.g. a single person, 
# or other observational unit). In contrast, “time var” indicates the variable 
# that has the identifiers that become variables in the wide format. The 
# remaining variable should have the values that match these new variables.

S39 <- reshape(S38, idvar=c("id", "female"), timevar = "subject", direction = "wide")
S39
##    id female score.write score.math
## 1  70      0          52         41
## 2 121      1          59         53
## 3  86      0          33         54

# Note that w is identical to d, except for the last two column names that now 
# have “score.” pretended to them. We can change that like this:
  
S40 <- colnames(S39)
S40 <- gsub("score.", "", S40)
colnames(S39) <- S40
S40
##    id female write math
## 1  70      0    52   41
## 2 121      1    59   53
## 3  86      0    33   54

# merge

# A common situation is to have multiple data.frames with data for the same 
# cases (e.g., individuals, fields, countries, …). Such data.frames may need 
# to be joined such that they can be analyzed. For example here we have a and b:
  
S41 <- S35[, 1:3]
# random sample of 100 records)
set.seed(1)
S42 <- S35[sample(nrow(S35), 100), c(1, 7:10)]


# a has 200 records. It has a unique identifier for each student and information 
# about their sex (female or not) and race (4 groups).

dim(S41)
## [1] 200   3
head(S41)
##    id female race
## 1  70      0    4
## 2 121      1    4
## 3  86      0    4
## 4 141      0    4
## 5 172      0    4
## 6 113      0    4
table(S41$female)
##
##   0   1
##  91 109
table(S41$race)
##
##   1   2   3   4
##  24  11  20 145


# b has the same unique identifier as a (but only for 100 students) and it has 
# the grades for four subjects.

dim(S41)
## [1] 100   5
head(S42)
##      id read write math science
## 68  107   47    39   47      42
## 167 156   50    59   53      61
## 129  91   50    49   56      47
## 162  74   57    50   50      51
## 43  168   52    54   57      55
## 14  104   54    63   57      55


# Imagine we were interested in differences in reading by sex or race. We would 
# need to combine a and b. That, fortunately, is very simple, because we have 
# the merge function.

S43 <- merge(S41, S42, by='id')
head(S43)
##   id female race read write math science
## 1  3      0    1   63    65   48      63
## 2  6      1    1   47    41   46      40
## 3  8      1    1   39    44   52      44
## 4  9      0    1   48    49   52      44
## 5 12      0    1   37    44   45      39
## 6 13      1    1   47    46   39      47

# Always check the dimensions of the result
dim(S43)
## [1] 100   7

# In this case we expected 100 records (the lower number of the two; a had 200 
# records, but b only 100). Sometimes you get fewer than expected, suggesting 
# that the identifiers do not match. In other cases you might want to keep all 
# records, and create missing values where these are not available. You can do 
# that like this:
  
S44 <- merge(S41, S42, by='id', all.x=TRUE)
dim(S44)
## [1] 200   7
head(S44)
##   id female race read write math science
## 1  1      1    1   NA    NA   NA      NA
## 2  2      1    1   NA    NA   NA      NA
## 3  3      0    1   63    65   48      63
## 4  4      1    1   NA    NA   NA      NA
## 5  5      0    1   NA    NA   NA      NA
## 6  6      1    1   47    41   46      40

# Note that the “x” in all.x refers to the first argument, hence a in this case. 
# In other cases you might need to say all.y=TRUE or all=TRUE. Consider these 
# extreme cases (with no matching records):
  
merge(S41[1:3,], S42[1:3, ], by='id')
## [1] id      female  race    read    write   math    science
## <0 rows> (or 0-length row.names)
merge(S41[1:3,], S42[1:3, ], by='id', all.x=T)
##    id female race read write math science
## 1  70      0    4   NA    NA   NA      NA
## 2  86      0    4   NA    NA   NA      NA
## 3 121      1    4   NA    NA   NA      NA
merge(S41[1:3,], S42[1:3, ], by='id', all.y=T)
##    id female race read write math science
## 1  91     NA   NA   50    49   56      47
## 2 107     NA   NA   47    39   47      42
## 3 156     NA   NA   50    59   53      61
merge(S41[1:3,], S42[1:3, ], by='id', all=T)
##    id female race read write math science
## 1  70      0    4   NA    NA   NA      NA
## 2  86      0    4   NA    NA   NA      NA
## 3  91     NA   NA   50    49   56      47
## 4 107     NA   NA   47    39   47      42
## 5 121      1    4   NA    NA   NA      NA
## 6 156     NA   NA   50    59   53      61

# Now that we have ab we can compute what we needed:
  
tapply(S44$read, S44$female, mean, na.rm=TRUE)
##        0        1
## 53.43902 52.20339
tapply(S44$read, S44$race, mean, na.rm=TRUE)
##        1        2        3        4
## 49.69231 56.00000 45.00000 54.22535


# sort

# It is often useful to sort data to make it easier to inspect it. R has a sort 
# function but that is only for vectors. For matrices or data.frames you need 
# to use the order function.

# sort is straightforward:
S45 <- sample(10)
S45
##  [1] 10  8  2  5  4  7  6  9  3  1
sort(S45)
##  [1]  1  2  3  4  5  6  7  8  9 10


# Now consider order:
S46 <- order(S45)
S46
##  [1] 10  3  9  5  4  7  6  2  8  1
S45[i]
##  [1]  1  2  3  4  5  6  7  8  9 10

# order returns a vector that allows you to sort. The first value of i is 7. 
# This means that x[7] should be the lowest number in x. The next number 
# is x[6] followed by x[3] and x[2] and so forth.

# Consider data.frame x:
  
set.seed(0)
S47 <- S41[sample(nrow(S41), 10), ]
S47
##      id female race
## 142  90      1    4
## 68  107      0    4
## 167 156      1    4
## 129  91      1    4
## 162  74      1    4
## 43  168      0    4
## 14  104      0    4
## 187 158      1    4
## 51   27      0    2
## 85   58      0    4


# Here is how you can use order to sort it by one column (“id” in this case):
  
S48 <- order(S47$id)
S49 <- S47[S48, ]
S49
##      id female race
## 51   27      0    2
## 85   58      0    4
## 162  74      1    4
## 142  90      1    4
## 129  91      1    4
## 14  104      0    4
## 68  107      0    4
## 167 156      1    4
## 187 158      1    4
## 43  168      0    4


# Or by multiple columns. In this case, we want to sort first by “race”, then 
# by “female” and then by “id”:
  
S50 <- order(S47$race, S47$female, S47$id)
S47[S50, ]
##      id female race
## 51   27      0    2
## 85   58      0    4
## 14  104      0    4
## 68  107      0    4
## 43  168      0    4
## 162  74      1    4
## 142  90      1    4
## 129  91      1    4
## 167 156      1    4
## 187 158      1    4



