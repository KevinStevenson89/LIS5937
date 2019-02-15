#Create two matrices
A <- matrix(c(2,0,1,3), ncol=2)
B <- matrix(c(5,2,4,-1), ncol=2)

#Addition of matrix A and B
C <- A + B

#Subtraction of matrix B from A
D <- A - B

#Creates matrix of size 4 with the following values in the diagonal 4,1,2,3
E <- diag(c(4,1,2,3))

#Generate a matrix of size 5 with the diagonals equal to 3 
G <- diag(3, nrow=5)
#Assigns a value of 1 to each column in row 1 except the first diagonal spot
G[1, 2:5] <- 1
#Assigns a value of 2 to each row in column 1 except the first diagonal spot
G[2:5, 1] <- 2
