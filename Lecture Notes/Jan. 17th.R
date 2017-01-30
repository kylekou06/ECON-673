#<<results = "asis">> =
  #xtable(matrix)
# sapply(list, function)
# tapply(vector, index, function)
# lapply(list, function)
#EX: 
sapply(1:500, function(i)
  lm(y~x[,i])$coef)
x <- matrix(rnorm(5000),50,100)
y <- rnorm(50)
sapply(1:100, function(i)
  lm(y~x[,i])$coef)
b <- lapply(1:100, function(i) 
  lm(y~x[,i]))
b[[1]]
b[[2]]
arg <- list(n=100, mean=5,sd=2)
do.call(rnorm,arg)

# rbind & cbind
# rbind(x,y) -> (2*n) vector x y
# cbind(x,y) -> (x,y) (n*2) vector (x,y)

x <- 1:5
y <- 6:10
y
rbind(x,y)
A <- rbind(x,y)
rbind(A,y)
cbind(x,y)
do.call(rbind, b)
do.call(cbind, b)

A <- matrix(rnorm(16),4,4)
A
apply(A,2,sd)
apply(A,2,mean)
colMeans(A)

apply(A,2,sum)
colSums(A)

A
apply(A,2,min)
apply(A,2,function(x) max(x) - min(x))
el <- expression(a*x/sin(x*b)
                 )
el
eval(el, list(x=1, a=1,b=2))
D(el,"x")
eval(D(el,"x"), list(x=a, a=1, b=1))
D(D(el,"x"), "x")

# library(parallel)
# mclapply() -> multi-core
library(parallel)
b <- mcapply(1:5000, function(i)
  lm(y~x[,i])$coef, mc.cores = 32) 



