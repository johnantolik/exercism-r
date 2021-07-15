collatz_step_counter <- function(num) {
  count <- 0
  repeat {
    if (num == 1) {
      return(count)
      break
    }
    else if ((num %% 2) == 0) {
      num <- num/2
      count <- count + 1
    }
    else {
      num <- (3*num) + 1
      count <- count + 1
    }
  }
  return(count)
}
