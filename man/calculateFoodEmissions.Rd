% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calculateFoodEmissions.R
\name{calculateFoodEmissions}
\alias{calculateFoodEmissions}
\title{Calculate Carbon Emissions from Food Consumption}
\usage{
calculateFoodEmissions(foodType, quantity)
}
\arguments{
\item{foodType}{Type of food (e.g., 'meat', 'vegetables', 'dairy').}

\item{quantity}{Quantity of food in kilograms.}
}
\value{
Estimated carbon emissions in kilograms of CO2 equivalent.
}
\description{
Estimates carbon emissions associated with the consumption of various types of food, taking into account production and transportation.
}
\examples{
calculateFoodEmissions('meat', 5)
calculateFoodEmissions('vegetables', 2.5)
}
