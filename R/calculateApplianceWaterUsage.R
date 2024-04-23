#' Calculate Water Usage of Household Appliances
#'
#' Calculates water usage of common household appliances, which helps in managing water consumption more effectively.
#' @param applianceType Type of appliance (e.g., 'washing_machine', 'dishwasher').
#' @param cycles Number of usage cycles.
#' @return Estimated water usage in liters.
#' @examples
#' calculateApplianceWaterUsage('washing_machine', 5)
#' calculateApplianceWaterUsage('dishwasher', 3)
#' @export

calculateApplianceWaterUsage <- function(applianceType, cycles) {
  # Define water usage for common household appliances in liters per cycle
  usagePerCycle <- c(washing_machine = 50, dishwasher = 15)  # Values based on average consumption from the Environmental Protection Agency (EPA)

  if (!applianceType %in% names(usagePerCycle)) {
    stop("Unsupported appliance type")
  }

  totalWaterUsage <- cycles * usagePerCycle[applianceType]

  return(totalWaterUsage)
}
