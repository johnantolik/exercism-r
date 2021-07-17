sieve <- function(limit) {
  range <- seq(1,limit)
  prime_num <- c()
  if (limit < 2) {
    return(prime_num)
  }
  for (i in seq(2,limit)) {
    if (any(range == i)) {
      prime_num <- c(prime_num, i)
      range <- c(range[(range %% i) != 0])
    }
  }
  return(prime_num)
}
