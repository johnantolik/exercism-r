number_type <- function(n){
  # data validation
  stopifnot(n > 0)
  # variables
  possible_factors <- c(1:n)
  factors_l <- n %% possible_factors == 0
  factors_n <- possible_factors*factors_l
  result <- sum(head(factors_n, -1))
  # print conditions
  if (result == n) {
    print("perfect")
  } else if (result > n) {
    print("abundant")
  } else {
    print("deficient")
  }
}  