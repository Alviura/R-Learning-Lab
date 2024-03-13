# Variables are named storage locations in memory which are containers for values

# Rules for name variables in R
# Variable names are case sensitive
# Variable names must start with a letter then can be followed by a number, undescore or period
# Reserved words cannot be used as variable names
# Variable names cannot start wih an underscore or number
# Variable names can start with a period but must not be follwed by a number

# how to assign a value to a variable
name <- "Alvin"
age <- 20
# how to print the value of the variable
name
age

# Data Structures in R
# Character
# Numeric
# Integer
# Logical
# Float
# String

# Vectors -> the simplest data structure that is used to store a sequence of values of the same type
# The c() function is used to concatinate the values to form a vector
names <-c("Cliff", "David", "Flin")
names
years <-c(2025, 2013, 2022)
years
years[2]
years[2:3]
years[c(1,3)]

# Matrix -> A two dimensonal data structure that stores multivaried data into rows and columns
# Ways of crearing matrices
# 1) Using rbind() Arranges rowwise
vec1 <-c(2,3,4)
vec2 <-c(5,6,7)
vec3 <-c(8,9,10)
matrec <-rbind(vec1,vec2,vec3)
matrec

# 2) Using cbind() Arranges columnwise
a <-c(0,3,5)
b <-c(5,9,10)
c <-c(0,0,4)
matA <-cbind(a,b,c)
matA

# 3) Using matrix()
# Syntax -> matrix(data, nrow, ncol, byrow)
v <-c(2,6,3,4,7,0)
matrV <-matrix(v, 2, 3, TRUE)
matrV

# Consider the following data consisting of marks  of 5 students in 2 Course
vec <-c(50,70,90,50,60,61,71,27,49,71, 'C', 'A', 'C', 'D', 'B')
matrec <-matrix(vec, nrow=5, ncol=3, byrow=F)
matrec

# To add labels for the columns and rows we use rownames() and colnames() functions
rownames(matrec) <-c("Mark", "Sam", "Jesse", "Susan", "Doreen")
colnames(matrec) <-c("Course1", "Course2", "Grade")
matrec
