anagram <- function(subject, candidates) {
  subjectToMatch <- unlist(strsplit(subject, split = ""))
  print(subjectToMatch)
  candidatesList <- strsplit(candidates, split = " ")
  print(candidatesList)
  candidatesToMatch <- lapply(candidatesList, strsplit, split = "")
  print(candidatesToMatch)
  sc_match <- sapply(subjectToMatch, grepl, candidates, ignore.case = TRUE)
  print(sc_match)
  cs_match <- lapply(candidatesToMatch, grepl, subject, ignore.case = TRUE)
  print(cs_match)
  # full_match <- apply(match, 1, all)
  # return(candidates[full_match])
}
