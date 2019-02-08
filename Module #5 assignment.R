#Create two matrices
A <- matrix(1:100, nrow=10) 
B <- matrix(1:1000, nrow=10)

#Obtain the inverse of two matrices
solve(A) # Matrix A is singular and thus not invertible generating an error 
solve(B) # Matrix B is not a square matrix (same number of rows as columns) and thus an inverse matrix of B does not exist

#Obtain the determinant of the two matrices
det(A) # determinant equals 0, meaning no inverse matrix and matrix A is singular
det(B) # no determinant can be calculated because matrix B is not square 