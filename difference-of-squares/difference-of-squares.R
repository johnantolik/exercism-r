# this is a stub function that takes a natural_number
# and should return the difference-of-squares as described
# in the README.md
difference_of_squares <- function(natural_number) {
  all_natural_nums <- 1:natural_number
  square_sum <- sum(all_natural_nums)^2
  sum_square <- sum(all_natural_nums^2)
  return(square_sum - sum_square)
}
