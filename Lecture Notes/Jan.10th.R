# Jan.10th 
x <- rnorm(100)
y <- 1 + x + rnorm(100)
res <- lm(y~x)
is(res)
names(res)
stats:::print.lm
cat("the mean of x is", mean(x), "\n", sep="")
data <- list(x=rnorm(100), y=rnorm(100))
data
class(data) <- "myData"
print.myData <- function(x) cat("This is my Data")
data
data$x

myMean <- function(x)
{
  n <- length(x)
  s <- 0
  for (i in 1:n)
    s <- s+x[i]
  s <- s/n
  class(s) <- "mystats"
  ans <- list(res=s, type="mean", n=n)
  class(ans) <- "mystats"
  ans
}
myMean

myVar <- function(x)
{
  n <- length(x)
  mx <- myMean(x)$res
  v <- 0
  for (i in 1:n)
    v <- v + (x[i]-mx)^2
  v <- v/(n-1)
  ans <- list(res=v, type="variance", n=n)
  class(ans) <- "mystats"
  ans
}
myVar
#n%%2L == 1L means n is odd
myMedian <- function(x)
{
  n <- length(x)
  if (n%%2L == 1L) 
  {
    m <- sort(x)[(n+1L)/2L]
  } else {
    m1 <- sort(x)[n/2L]
    m2 <- sort(x)[n/2L+1]
    m <- (m1+m2)/2
  }
  ans <- list(res=m, type="median", n=n)
  class(ans) <- "mystats"
  ans
}
myMedian
