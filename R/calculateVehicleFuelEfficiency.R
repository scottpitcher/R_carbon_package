#' Calculate Fuel Efficiency of Vehicles
#'
#' Evaluates the fuel efficiency of vehicles based on the amount of fuel consumed and the distance traveled.
#' @param fuelConsumed Fuel consumed in liters.
#' @param distanceTraveled Distance traveled in kilometers.
#' @return Fuel efficiency in kilometers per liter.
#' @examples
#' calculateVehicleFuelEfficiency(50, 500)
#' calculateVehicleFuelEfficiency(70, 350)
#' @export

calculateVehicleFuelEfficiency <- function(fuelConsumed, distanceTraveled) {
  # Calculate fuel efficiency
  fuelEfficiency <- distanceTraveled / fuelConsumed

  return(fuelEfficiency)
}
