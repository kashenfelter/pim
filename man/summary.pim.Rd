% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summary.R
\docType{methods}
\name{summary.pim}
\alias{summary.pim}
\alias{summary}
\alias{summary,pim-method}
\title{The summary function for the pim class}
\usage{
summary(object, ...)

\S4method{summary}{pim}(object, h0 = 0, ...)
}
\arguments{
\item{object}{an object of the class pim.}

\item{...}{arguments passed to other methods. Currently ignored.}

\item{h0}{a numeric value or a vector as long as the number of coefficients
with the value that defines the null hypothesis to test against}
}
\value{
a \code{\link{pim.summary}} object
}
\description{
The function \code{\link[base]{summary}} is a generic function. We provide
a method for objects of the \code{\link{pim-class}}.
}
\examples{
data(FEVData)
Model <- pim(FEV~ Age + Smoke*Sex , data=FEVData)
summary(Model)

}
