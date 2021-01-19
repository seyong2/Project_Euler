start_time <- Sys.time()
N <- 20
b <- 2:20
for (i in b) {
  for (a in (N:1)) {
    if (a != i & a%%i == 0) b <- b[! b %in% i]
  }
}

prime <- c()
fct <- vector(mode = "list", length=N)
for (n in b) {             
  factor <- 2                   # start with factor = 2
  while (factor <= n) {
    if (is.null(fct[[factor]]) == T) {
      fct[[factor]] <- 0
    }
    count <- 0
    while (n%%factor == 0) {      # if the remainder equals 0
      n <- n/factor             # n equals n divided by the factor
      count <- count+1
      prime <- c(prime, factor)
      ifelse(count>fct[[factor]], fct[[factor]] <- count, fct[[factor]] <- fct[[factor]])
    }
    ifelse(factor == 2, factor <- factor+1, factor <- factor+2)
  }
}
unique(prime)
fct
prod(sort(unique(prime))**unlist(fct)[unlist(fct)!=0])
end_time <- Sys.time()
end_time - start_time