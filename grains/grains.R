# grains on a given square

square <- function(n) {
  stopifnot(1 <= n && n <= 64)
  return(2^(n-1))
}

# total grains on the board up to a given square

total <- function(n) {
  board <- matrix(1:64, nrow = 8)
  sum(sapply(board[1:n], square))
}
