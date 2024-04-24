#' @import methods
#' @import ggplot2

#' Define an S4 class for water usage data
setClass("WaterUsage",
         slots = c(usageType = "character", volume = "numeric", date = "Date"),
         prototype = list(usageType = NA_character_, volume = NA_real_, date = as.Date(NA)))

#' Summarize and visualize water usage data using ggplot2
#'
#' This function provides summary statistics and a ggplot for water usage data stored in an S4 object.
#' @param object An object of class WaterUsage.
#' @return A list containing summary statistics and a ggplot.
#' @examples
#' usageData <- new("WaterUsage", usageType = c("Domestic", "Industrial", "Agricultural"),
#'                  volume = c(150, 300, 450),
#'                  date = as.Date(c('2021-01-01', '2021-01-02', '2021-01-03')))
#' summary <- waterUsageSummary(usageData)
#' print(summary$plot)
#' @export

setMethod("summary", "WaterUsage", function(object) {
  summaryStats <- summary(object@volume)
  return(summaryStats)
})

setMethod("plot", definition = function(object) {
  data <- data.frame(Date = object@date, Volume = object@volume, UsageType = object@usageType)
  plot <- ggplot(data, aes(x = Date, y = Volume, color = UsageType, group = UsageType)) +
    geom_line() +
    geom_point() +
    scale_color_manual(values = c("Domestic" = "blue", "Industrial" = "red", "Agricultural" = "green")) +
    theme_minimal() +
    labs(title = "Water Usage Over Time",
         x = "Date",
         y = "Volume (Liters)",
         color = "Usage Type")
  return(plot)
})

waterUsageSummary <- function(object) {
  stats <- summary(object)
  p <- plot(object)
  return(list(summary = stats, plot = p))
}
