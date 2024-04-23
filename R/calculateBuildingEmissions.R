#' Calculate Carbon Emissions from Building Operations
#'
#' This function estimates carbon emissions from building operations, focusing on heating, cooling, and electricity usage.
#' @param energyConsumed Energy consumed in kWh.
#' @param buildingType Type of building (e.g., 'residential', 'commercial').
#' @return Estimated carbon emissions in kilograms of CO2 equivalent.
#' @examples
#' calculateBuildingEmissions(1000, 'residential')
#' calculateBuildingEmissions(5000, 'commercial')
#' @export

calculateBuildingEmissions <- function(energyConsumed, buildingType) {
  # Define emission factors for different types of buildings (kg CO2 per kWh)
  factors <- c(residential = 0.22, commercial = 0.19)  # Values sourced from average emissions in the U.S. Energy Information Administration report

  if (!buildingType %in% names(factors)) {
    stop("Unsupported building type")
  }

  emissions <- energyConsumed * factors[buildingType]

  return(emissions)
}
