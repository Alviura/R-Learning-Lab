# Apply family functions
lapply() # Takes any structure and gives a list of result
sapply() # Similar to lapply() but tries to simplify the result to a vector or matrix
tapply() # Allows to create tables of values from subgroups, defined by one or more factors
apply() # Only used for Matrices or Arrays

# The apply() allows you to apply inbult or user defined functions rowise or columnwise

matX <-matrix(c(2,1,1,3,6,2,0,8,9), nrow=3, ncol=3, byrow=T)
matX
apply(matX, 1, mean)
apply(matX, 2, max)

# 1 specifies rowwise while 2 specifies columnwise

# DataFrames -> A table or two dimensional array structure in which each column contains values of one variable and each row contains one set of values from each column
# It is a generalisation of a matrix
# It contains a list of vectors & functions of the same length with a unique set of row names
# Dataframes can be created from pre-existing variables
# They are created using the data.frame()

student_names <-c("Mark", "Sam", "Mary") 
reg_no <-c("SC100", "SC101", "SC111")
unit_A <-c(70,20,10)
unit_B <-c(20,90,60)
Mydata<-data.frame(student_names,reg_no,unit_A,unit_B)
print(Mydata)

# Functions -> Block of code which when called it performs a certain task
# Types of functions
# Inbuilt functions -> already created/defined in the R Programmming framework
# Math functions -> Inbuilt functions used to perform mathematical calculations
x <- 30
abs(x) # Finds the absolute value of an input x
sqrt(x) # returns the square root of an input x
log(x) # returns the natural log as an input x
exp(x) # returns the exponent of an input x

# String functions -> work on strings
car <- "lamboghini"
toupper(car)
tolower(car)

# Statisical Probability Functions -> compute numerical summaries, produce graphical representation or fit statistical records to data
mean(x)
var(x)
std(x)
min(x)
max(x)
range(x)
sort(x) # Arranges values from smallest  to largest
median(x)

# Plotting functions -> Used to produce graphical representation of data
hist(x) # produce histogram
boxplot(x) # produce boxplot
plot(x,y) # produce a scatterplot

# User-defined functions
add <-function(y,z){
  val<- y+z
  return (val)
}
add(2,4)
