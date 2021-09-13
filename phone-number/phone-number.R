parse_phone_number <- function(number_string) {
  number_string_cleaned <- gsub("[^0-9]", "", number_string)
  number_string_cleaned <- gsub("^1", "", number_string_cleaned)
  
  if (nchar(number_string_cleaned) == 10 && grepl("[2-9]\\d{2}[2-9]\\d{6}", number_string_cleaned)) {
    number_string_cleaned <- number_string_cleaned
  } else {
    number_string_cleaned <- NULL
  }
  return(number_string_cleaned)
}
