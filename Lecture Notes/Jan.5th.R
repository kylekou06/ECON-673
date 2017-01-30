# Jan.5th ECON 673
# Matrix: 
x <- matrix(rnorm(20),5,4)
x
is(x)
# Dimention of matrix x:
dim(x)
matrix(rnorm(1),5,1)
matrix(rnorm(1),1,5)
rnorm(5)
# Difference between vector and matrix:
# Matrix has n-rows, n-cols. However, vector does not.
x
# Row 1, col 1 & 2
x[1,c(1,2)]
# Row 1 to 2, col 1
x[1:2,1]
x[1:2,1,drop = FALSE]
x[1,1:2, drop = FALSE]
# First col, print only x less than 0
x[x[,1]<0,]
x[c(1,2),c(1,2)][2,2]
matrix(1:24,6,4)[1:1,1:2]

# Some algoritms: *, +, -, /, ^

A <- matrix(1:4,2,2)
A
B <- matrix(1:6,3,2)
B
# Error in A + B : non-conformable arrays
A+B
A+B[1:2,]
C <- c(5,8)
C
A+c(1,2,3)
# Multiplication of Matrix
B%*%A
# Inverse of Matrix
solve(A)
# Inverse of A multiply A itself
solve(A)%*%A
# Transpose of B
B
t(B)
x <- matrix(rnorm(500),100,5)
y <- rnorm(100)
XX <- t(x)%*%x
XX
XY <- t(x)%*%y
XY
solve(XX)%*%XY
# Simplier in this way
crossprod(x)
crossprod(x,y)
mylist <- list(name="Pierre", X=x, XX=XX)
mylist
res <- lm(y~x)
mylist <- list(name="Pierre", X=x, XX=XX, regResult=res)
is(mylist)
mylist[[1]]
mylist$name
mylist$reg
mylist$name
mylist[c(1,4)]
names(mylist)
is(res)
names(res)
res$coefficients

# Functions
sum
lm
# Loops
s <- 0
for (i in 1:100) {
  s <- x[i]+s
}
s
sum(x)
sum(x[,1])

while (i<=100) {
  s <- s+x[i]
  i <- i+1
}
s

i = 1
while (TRUE) {
  s <- s + x[i]
  i <- i+1
  if(i>100)
    break
}
# Create Functions
x <- 1:3
y <- rnorm(100)

mysum <- function(x)
{
  n<- length(x)
  s<- 0
  for (i in 1:n)
    s <- s+x[i]
  s
}
# Plots
myplot <- function(f,a,b,np=100,...)
{
  x <- seq(a, b, length.out = np)
  y <- f(x, ...)
  plot(x,y, main="Han kou's plot", xlab = "x", ylab = "y", type = "1")
  
}









