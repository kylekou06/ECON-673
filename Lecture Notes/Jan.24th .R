
# Econ 673 Jan.24th

# x <- matrix(rnorm(500), 100, 5)


x <- matrix(rnorm(500), 100, 5)
res <- qr(x)
x
$rank
$qraux
$pivot
Q <- qr.Q(res)
R <- qr.R(res)
R
y<- rnorm(100)
backsolve(R, t(Q)%*%y)
lm(y~x)
solve(crossprod(x), crossprod(x,y))

system.time(crossprod(x))
x <- matrix(rnorm(1000000),1000000,10)
system.time(crossprod(x))
system.time(crossprod(x))[3]
system.time(t(x)%*%x)[3]














