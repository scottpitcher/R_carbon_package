#' Total Water Usage Calculator
#'
#' @param numberOfPeople Amount of people in the household
#' @param usageType Drinking, Bathing, or Cooking
#'
#' @return The output is the total estiimated usage in Litres per day \code{totalUsage}
#' @export
#'
#' @examples
calculateDomesticWaterUsage <- function(numberOfPeople, usageType) {
  # Define average water usage (in liters) per person per day for different activities
  averageUsage <- c(drinking = 2, bathing = 80, cooking = 5) # Example values; adjust based on research

  # Check if the usageType is valid
  if (!usageType %in% names(averageUsage)) {
    stop("Unsupported usage type")
  }

  # Calculate total water usage
  totalUsage <- numberOfPeople * averageUsage[usageType]

  return(totalUsage) # Returns water usage in liters per day
}
