% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CreateScoreFun.R
\name{CreateScoreFun}
\alias{CreateScoreFun}
\title{Create a score function for use in a pim.}
\usage{
CreateScoreFun(Z, Y, link = c("probit", "logit", "identity"), W = NULL)
}
\arguments{
\item{Z}{the model matrix of pseudo-observations}

\item{Y}{a vector with the response of the pseudo-observations}

\item{link}{a character vector indicating the link function 
to be used.}

\item{W}{a vector with weights.}
}
\value{
a function used for estimating the coefficients by
the estimator functions.
}
\description{
This function creates a suitable score function for the fitting 
process of a probabilistic index model.
}
\section{NOTE}{
 This function is not exported.
}

