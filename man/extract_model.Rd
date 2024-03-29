% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_models.R
\name{extract_model}
\alias{extract_model}
\title{Extracts a single model from a mediation_model object}
\usage{
extract_model(mediation_model, step = NULL)
}
\arguments{
\item{mediation_model}{An object of class \code{mediation_model}.}

\item{step}{An integer or a string corresponding to the model to extract.}
}
\value{
An \code{lm} object.
}
\description{
When conducting a joint-significant test, different models are
fitted to the data. This function helps you access the models used in an
object of class \code{mediation_model}.
}
\examples{
data(ho_et_al)
ho_et_al$condition_c <- build_contrast(ho_et_al$condition,
                                       "Low discrimination",
                                       "High discrimination")
my_model <-
  mdt_simple(data = ho_et_al,
             IV = condition_c,
             DV = hypodescent,
             M = linkedfate)

extract_model(my_model, step = "X -> M")

}
\seealso{
\code{\link{extract_models}} to access a list of every model
relevant to joint-significance testing.

Other extract functions: 
\code{\link{extract_models}()},
\code{\link{extract_tidy_models}()}
}
\concept{extract functions}
