% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/penv.R
\docType{methods}
\name{penv}
\alias{penv}
\alias{penv,pim.formula-method}
\alias{penv,pim-method}
\title{Extract a pim environment from a model or formula}
\usage{
penv(x)

\S4method{penv}{pim.formula}(x)

\S4method{penv}{pim}(x)
}
\arguments{
\item{x}{either a \code{pim} or a \code{pim.formula} object}
}
\value{
In case of a \code{pim} object, the \code{pim.environment}
contained therein. In case of a \code{pim.formula} object, 
the environment itself. 
See the help page \code{pim.formula-class}.
}
\description{
This function allows you to extract the 
\code{\link{pim.environment}} object from either a \code{pim}
object or a \code{pim.formula} object.
}
\examples{
data("FEVData")
# Create the "model frame"
FEVenv <- new.pim.env(FEVData, compare="unique")

# create the formula and bind it to the pim.environment.
FEVform <- new.pim.formula(
  Age ~ I(L(Height) - R(Height))  ,
  FEVenv
)
theEnv <- penv(FEVform)
ls(theEnv)

themodel <- pim(Age ~ Height, FEVenv)
thePEnv <- penv(themodel)
thePEnv

ls(thePEnv)
# Note that this is a different environment, and that it only contains
# the variables in the formula, contrary to the environment created
# by new.pim.formula
}
