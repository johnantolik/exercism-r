space_age <- function(seconds, planet) {
  planet_years <- c(0.2408467, 0.61519726, 1.0000000, 1.8808158, 11.862615, 29.447498, 84.016846, 164.79132)
  planet_names <- c("mercury", "venus", "earth", "mars", "jupiter", "saturn", "uranus", "neptune")
  planet_df <- data.frame(planet_years, planet_names)
  seconds_factor <- seconds/31557600
  result <- round(seconds_factor/(planet_df[ which(planet_df$planet_names == planet), 1 ]), digits = 2)
  return(result)
}