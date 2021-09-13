acronym <- function(input) {
  phrase_vec <- unlist(strsplit(input, "[- _,]+"))
  letters_vec <- substr(phrase_vec, 1, 1)
  toupper(paste0(letters_vec, collapse = ""))
}
