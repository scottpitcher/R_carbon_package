% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calculateApplianceWaterUsage.R
\name{calculateApplianceWaterUsage}
\alias{calculateApplianceWaterUsage}
\title{Calculate Water Usage of Household Appliances}
\usage{
calculateApplianceWaterUsage(applianceType, cycles)
}
\arguments{
\item{applianceType}{Type of appliance (e.g., 'washing_machine', 'dishwasher').}

\item{cycles}{Number of usage cycles.}
}
\value{
Estimated water usage in liters.
}
\description{
Calculates water usage of common household appliances, which helps in managing water consumption more effectively.
}
\examples{
calculateApplianceWaterUsage('washing_machine', 5)
calculateApplianceWaterUsage('dishwasher', 3)
}
