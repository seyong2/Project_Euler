start <- Sys.time()
options(scipen = 999)
a <- 100:999
d <- a%*%t(a)
e <- sort(d[lower.tri(d, diag = T)], decreasing=T)
palindrome <- c()
for (i in e) {
  n_cha <- unlist(strsplit(as.character(i), NULL))
  if (n_cha[1] != n_cha[length(n_cha)]) next
  else if (length(n_cha) == 5 & n_cha[2] == n_cha[4]) palindrome <- c(palindrome, i)
  else {
    if (n_cha[2] != n_cha[5]) next
    else if (n_cha[3] == n_cha[4]) palindrome <- c(palindrome, i)
  }
  if (length(palindrome) == 1) break
}
palindrome
end <- Sys.time()
end-start