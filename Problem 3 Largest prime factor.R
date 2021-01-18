start <- Sys.time()
n = 600851475143
i <- 2
factor <- c()
while (i <= n) {
  while (n%%i==0) {
    n <- n/i
  }
  factor <- c(factor, i)
  ifelse(i==2, i <- i+1, i <- i+2)
}
max(factor)
end <- Sys.time()
end-start