#' Calculate Carbon Emissions from Energy Consumption
#'
#' This function estimates the carbon emissions associated with energy consumption, considering different energy sources.
#' @param energyConsumption Amount of energy consumed in kWh.
#' @param energyType Type of energy (e.g., 'electricity', 'natural_gas', 'oil').
#' @return Estimated carbon emissions in kilograms of CO2 equivalent.
#'
#' @examples
#' calculateEnergyEmissions(200, 'electricity')
#' calculateEnergyEmissions(150, 'natural_gas')
#' @export

calculateEnergyEmissions <- function(energyConsumption, energyType) {
  # Define CO2 emission factors for different types of energy in kg CO2 per kWh
  factors <- c(electricity = 0.233, natural_gas = 0.185, oil = 0.265) # Example values; adjust based on actual data

  if (!energyType %in% names(factors)) {
    stop("Unsupported energy type")
  }

  emissions <- energyConsumption * factors[energyType]

  return(emissions)
}
