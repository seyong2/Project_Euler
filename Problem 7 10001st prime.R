start <- Sys.time()
prime <- c(2)
i <- 3
while (length(prime) < 10001) {
  if (0 %in% c(i%%prime) == FALSE) {
    prime <- c(prime, i)
    i <- i+2
  }
  else i <- i+2
}
max(prime)
end <- Sys.time()
end-start