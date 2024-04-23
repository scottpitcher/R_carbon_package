#' Transportation Carbon Emissions Calculator
#'
#' @param distance Sample distance traveled
#' @param transportMode The mode of transportation used
#' @param efficiency
#'
#' @return The output of \code{emissions}
#' @export
#'
#' @examples
calculateTransportEmissions <- function(distance, transportMode, efficiency) {
  # Define emission factors for different transport modes (kg CO2 per liter of fuel or per passenger-km for public transport)
  emissionFactors <- c(car = 2.31, bus = 0.104, airplane = 0.255) # Example values; adjust based on research

  # Calculate emissions based on mode
  if (transportMode %in% c("car", "airplane")) {
    # For cars and airplanes, emissions are based on efficiency (liters per 100 km or emissions factor) and distance
    emissions <- (distance / 100) * efficiency * emissionFactors[transportMode]
  } else if (transportMode == "bus") {
    # For buses, assume efficiency is passenger-km per liter, calculate emissions per passenger
    emissions <- distance * emissionFactors[transportMode]
  } else {
    stop("Unsupported transport mode")
  }

  return(emissions) # Returns emissions in kg of CO2 equivalent
}
