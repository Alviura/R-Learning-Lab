# MATRIX OPERATIONS
# For both Addition & Multiplication, they have to have the same order
# Addition of 2 Matrices
A <-matrix(c(3,6,2,1), nrow=2, ncol=2, byrow=T)
A
B <-matrix(c(6,0,8,5), nrow=2, ncol=2, byrow=T)
B
C <- A + B # Adds to matrix A and B
C

# Matrix Multiplication
# We use the operation * for this operation
# But to do matrix multiplication the correct way we use the % symbol in the formula

D <- A * B # Not accurate
D
E <- A %*% B # This is accurate
E

# Transpose of a Matrix -> The rows becomes the columns & vise versa
# To do transpose of a matrix, we use the t()
matB <-matrix(c(2,3,1,4,8,2), nrow=2, ncol=3, byrow=T)
matB
AT <-t(matB)
AT

# Inverse of a Matrix
# To define inverse we use the function solve()
matC <-matrix(c(2,3,4,5), nrow=2, ncol=2, byrow=F)
matC
inverse <-solve(matC)
inverse

# Determinant of a Matrix
# To find the determinant we use the function det()
determinant <-det(matC)
determinant

# Accessing Elements in a Matrix
# Elements in a Matrix are accessed by specifying their positions in the matrix structure in terms of row and column
x <-c(2,1,1,3,6,2,0,8,9)
matX <-matrix(x, nrow=3, ncol=3, byrow=T)
matX
# Extract 6 from matX
matX[2,2]
# Extracting first row
matX[1,]
# Extracting the second column
matX[,2]
# Extracting the first & third row
matX[c(1,3),]
# Extracting the first & third column
matX[,c(1,3)]
