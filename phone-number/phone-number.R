parse_phone_number <- function(number_string) {
  number_string_cleaned <- gsub("[^0-9]", "", number_string)
  if (nchar(number_string_cleaned) == 11 && substr(number_string_cleaned, 1, 1) == "1" && substr(number_string_cleaned, 2, 2) > 1 && substr(number_string_cleaned, 5, 5) > 1) {
    number_string_cleaned <- substring(number_string_cleaned, 2)
  } else if (nchar(number_string_cleaned) == 10 && substr(number_string_cleaned, 1, 1) > 1 && substr(number_string_cleaned, 4, 4) > 1) {
    number_string_cleaned <- number_string_cleaned  
  } else {
    number_string_cleaned <- NULL
  }
  return(number_string_cleaned)
}
