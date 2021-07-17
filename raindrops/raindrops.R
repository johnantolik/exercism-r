raindrops <- function(number) {
  sounds <- c("Pling","Plang","Plong")
  factors <- number %% c(3, 5, 7) == 0
  if (any(factors)) {
    paste0(sounds[factors], collapse = "")
  } else {
    paste(number)
  }
}