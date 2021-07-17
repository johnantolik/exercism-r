handshake <- function(n) {
  # n to binary
  num <- n
  vec <- NULL
  repeat {
    if (num < 1) {
      break
    } 
    else {
    vec <- c(vec, (num %% 2)) 
    num <- trunc(num/2)
    }
  }
  # binary to handshake
  action_vec <- c("wink", "double blink", "close your eyes", "jump")
  result <- switch(length(action_vec[as.logical(vec[1:4])]) != 0, action_vec[as.logical(vec[1:4])])
  # results
  if (n == 0) {
    return(NULL)
  }
  else if (is.na(vec[5]) | vec[5] == 0) {
    return(result[!is.na(result)])
  }
  else {
    return(rev(result[!is.na(result)]))
  }
}