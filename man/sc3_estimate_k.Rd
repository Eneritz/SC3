% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CoreMethods.R
\docType{methods}
\name{sc3_estimate_k}
\alias{sc3_estimate_k}
\alias{sc3_estimate_k.SCESet}
\alias{sc3_estimate_k,SCESet-method}
\alias{sc3_estimate_k,SCESet-method}
\alias{sc3_estimate_k}
\title{Estimate the optimal k for k-means clustering}
\usage{
sc3_estimate_k.SCESet(object)

\S4method{sc3_estimate_k}{SCESet}(object)
}
\arguments{
\item{object}{an object of \code{SCESet} class}
}
\value{
an estimated value of k
}
\description{
Uses Tracy-Widom theory on random matrices to estimate the optimal number of
clusters k. Using the function \code{\link{estkTW}} to perform the estimation. 
It creates and populates the following items of the `sc3` slot:
\itemize{
  \item k_estimation - contains the estimated value of `k`.
}
Please note that by default the "exprs" slot of the input \code{scater} object 
is used for the SC3 analysis. If the scater object has been created in a standard
way then the expression values in the "exprs" slot will be automatically log-transformed.
If you have overwritten the "exprs" slot manually, please make sure that the values
in the "exprs" slot are log-transformed before running the SC3 analysis. SC3
assumes that the data is log-transformed by default.
}
