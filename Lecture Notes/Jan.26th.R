# Jan.26th ECON 673
x <- 1
n <- c(0:8)
myExp <- cumsum((x^(n)/factorial(n)))
myExp

# Example
f <- function(x,n) cumsum(x^(0:n)/factorial(0:n))
f(3,10)
f(3,20)-exp(3)

# Example
xn1 <- f(3,30)
y <- (xn1[-1]-exp(3))/(xn1[-31]-exp(3))
plot(1:30,y)
factorial(3)
factorial(30)
3^30/factorial(30)

# Example
myexp <- function(x,eps,maxn)
{
  ex0 <- 1
  n <- 1
  while(TRUE)
  {
    ex1 <- ex0 + x^n / factorial(n)
    crit <- abs(ex0-ex1)
    if(crit < eps)
    {
      mess <- "Converged"
      sol <- ex1
      break
    }
    if(n>maxn)
      {
      mess <- "Dis not converge"
      sol <- ex1
      break
    }
    n <- n+1
    ex0 <- ex1
  }
  cat(mess)
  sol
}
myexp(3, 1e-8, 100)


# Example 
norm
mynorm <- function(x)
  sqrt(sum(x^2))
x <- rnorm(100)
mynorm(x)
  
# Example
A <- matrix()
eigen(A)
eigen(A)$value
abs(eigen(A)$value)







