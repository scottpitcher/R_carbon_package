#' Analyze and Visualize Energy Consumption Data
#'
#' This function processes energy consumption data and visualizes the results using ggplot2.
#' @param data A data frame containing the columns 'Date', 'EnergyType', and 'Consumption'.
#' @import dplyr
#' @import ggplot2
#' @return A ggplot object showing energy consumption over time by type.
#' @examples
#' data <- data.frame(Date = as.Date('2021-01-01') + 0:29,
#'                    EnergyType = rep(c('Electricity', 'Gas'), each = 15),
#'                    Consumption = rnorm(30, 200, 50))
#' analyzeEnergyData(data)
#' @export
#' @exportMethods plot

analyzeEnergyData <- function(data) {
  # Check if required packages are available
  if (!requireNamespace("dplyr", quietly = TRUE) || !requireNamespace("ggplot2", quietly = TRUE)) {
    stop("Required packages 'dplyr' or 'ggplot2' are not installed.")
  }

  library(dplyr)
  library(ggplot2)

  # Process data
  processedData <- data %>%
    group_by(Date, EnergyType) %>%
    summarise(TotalConsumption = sum(Consumption), .groups = 'drop')

  # Plot
  plot <- ggplot(processedData, aes(x = Date, y = TotalConsumption, fill = EnergyType)) +
    geom_bar(stat = "identity", position = "dodge") +
    theme_minimal() +
    labs(title = "Energy Consumption Over Time", x = "Date", y = "Total Consumption (kWh)")

  return(plot)
}
