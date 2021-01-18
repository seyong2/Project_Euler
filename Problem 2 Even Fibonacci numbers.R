start <- Sys.time()
fib <- c(1,2)
while (max(fib) < 4000000) {
  fib <- c(fib, sum(tail(fib,2)))
}
fib
sum(fib[fib%%2==0])
end <- Sys.time()
end-start