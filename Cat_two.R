# Revision CAT 2

# 1) Write a program that creates a vector of the values of e^xcos(x) at x = 3,3.1,3.2...6
tmp <-seq(3,6,by=0.1)
tmp
values <- exp(tmp)*cos(tmp)
values
# 2) solve a linear equation using matrices

matA <-matrix(c(1,2,1,2,3,1,3,4,2), nrow=3, ncol=3, byrow=T)
matB <-matrix(c(1,4,4),nrow=3)
result<-solve(matA,matB)
result

# 3) Consider the following R code, what is the output
k <- 6
while(k){
  print(k)
  k <- k-1
  if (k == 3){
    break
  }
}

# 4) A program for a piecewise(continuous) function
myfn <- function(x) {
  ifelse(x < 0, x^2 + 2*x + 3, 
         ifelse(x < 2, x + 3, 
                x^2 + 4*x - 7))
}
myfn(1)
vec <- seq(-3,3,len=100)
vec
plot(vec, myfn(vec), type="l")

# 5) Marginal profit function
margin_pro_fn <- function(x){
  return(12 -0.002*x)
}
myfn(x){
  sin(x)
}
result <- integrate(myfn,2,4)