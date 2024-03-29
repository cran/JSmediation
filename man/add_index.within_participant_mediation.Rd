% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mdt_within_index.R
\name{add_index.within_participant_mediation}
\alias{add_index.within_participant_mediation}
\title{add_index method for within-participant mediation}
\usage{
\method{add_index}{within_participant_mediation}(mediation_model, times = 5000, level = 0.05, ...)
}
\arguments{
\item{mediation_model}{A mediation model of class
\code{"within_participant_mediation"}.}

\item{times}{Number of simulations to use to compute the Monte Carlo indirect
effect confidence interval.}

\item{level}{Alpha threshold to use for the confidence interval.}

\item{...}{Further arguments passed to or from other methods.}
}
\description{
Adds the confidence interval for the index of
within-participant mediation to a  model fitted with
\code{\link{mdt_within}} or \code{\link{mdt_within_wide}}.
}
\details{
Indirect effect index for within-participant mediation uses \eqn{a}
and \eqn{b} estimates and their standard error to compute the \eqn{ab}
product distribution using Monte Carlo methods (see MacKinnon, Lockwood, &
Williams, 2004).
}
\examples{
## getting an indirect effect index
within_model <- mdt_within(data = dohle_siegrist,
                           IV = name,
                           DV = willingness,
                           M = hazardousness,
                           grouping = participant)
add_index(within_model)

}
\references{
MacKinnon, D. P., Lockwood, C. M., & Williams, J. (2004).
Confidence Limits for the Indirect Effect: Distribution of the Product and
Resampling Methods. \emph{Multivariate Behavioral Research}, \emph{39}(1),
99-128. doi: 10.1207/s15327906mbr3901_4
}
