# CAT 1 Revision
# 1) A program that outputs the negative values of X and replaces the positive values of X with P *2 where P is a positve number
X <-c(4,-2,-3,0,7,-9,10,-10,5,-4)
negative.values <- X[X<0]
X[X>0] <- X[X>0]*2


# 2) Solve using matrices the following equation and write an R-code to solve it
matrixA <-matrix(c(-2,6, -7, 8), nrow=2, ncol=2, byrow=T)
matrixB <-matrix(c(6,-5), nrow=2)
solution <- solve(matrixA,matrixB)
# Another way to tacle it
inv_matrixA <- solve(matrixA)
result <- inv_matrixA %*% matrixB


 # 3) The demand function of company is p = 42 -0.001x and cost function is C(x) 30x + 1200, where is is the number of units demanded
# find the marginal profit function
cost <-function(x){
  return(30*x + 1200)
}
revenue <-function(x){
  return((42 - 0.001*x) * x)
}
profit <-function(x){
  return(revenue(x) - cost(x))
}
margin_profit <-function(x){
  return(12 - 0.002*x)
}
revenue(2)
cost(2)
profit(2)
margin_profit(2)

# 4) A function that takes in any four vectors as arguments and returns their respective standard deviations
calculate_std_dev<- function(..., na.rm = FALSE){
  data <- cbind(...)
  std_dev <-apply(data, 2, sd, na.rm=na.rm)
  return(std_dev)
}
a <-c(2,3,4,5)
b <-c(6,7,8,9)
c <-c(2,1,10,9)
result <-calculate_std_dev(a,b,c)
