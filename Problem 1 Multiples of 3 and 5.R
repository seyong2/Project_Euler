start <- Sys.time()
sum(3*c(1:trunc(1000/3))) + sum(5*c(1:(trunc(1000/5)-1))) - sum(15*c(1:trunc(1000/15)))
end <- Sys.time()
end-start