#' Calculate Carbon Emissions from Food Consumption
#'
#' Estimates carbon emissions associated with the consumption of various types of food, taking into account production and transportation.
#' @param foodType Type of food (e.g., 'meat', 'vegetables', 'dairy').
#' @param quantity Quantity of food in kilograms.
#' @return Estimated carbon emissions in kilograms of CO2 equivalent.
#' @examples
#' calculateFoodEmissions('meat', 5)
#' calculateFoodEmissions('vegetables', 2.5)
#' @export

calculateFoodEmissions <- function(foodType, quantity) {
  # Define emission factors for different food types in kg CO2 per kg of food
  emissionFactors <- c(meat = 27, vegetables = 2, dairy = 13) # Example values based on global averages

  if (!foodType %in% names(emissionFactors)) {
    stop("Unsupported food type")
  }

  emissions <- quantity * emissionFactors[foodType]

  return(emissions)
}
