start <- Sys.time()
x <- 1:500
p <- c()
for (a in x) {
  for (b in x) {
    c <- 1000-a-b
    if (c <= 0) break
    else if (c**2==a**2+b**2) {
      print(a)
      print(b)
      print(c)
      p <- c(p, a*b*c)
    }
    if (length(p) == 1) break
  }
}
p
end <- Sys.time()
end - start