start <- Sys.time()
x <- 1:100
sum(x)**2 - sum(x**2)
end <- Sys.time()
end-start