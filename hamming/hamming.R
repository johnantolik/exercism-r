# This is a stub function to take two strings
# and calculate the hamming distance
# per mentor: no loop or if statement
hamming <- function(strand1, strand2) {
  # split character string into vector
  split_strand1 <- unlist(strsplit(strand1, split = ""))
  split_strand2 <- unlist(strsplit(strand2, split = ""))
  # input data validation
  stopifnot(length(split_strand1) == length(split_strand2))
  # count without a loop or if statement
  print(sum(split_strand1 != split_strand2))
}  
  
  