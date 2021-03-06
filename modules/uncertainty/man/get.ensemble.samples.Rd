% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ensemble.R
\name{get.ensemble.samples}
\alias{get.ensemble.samples}
\title{Get Ensemble Samples}
\usage{
get.ensemble.samples(
  ensemble.size,
  pft.samples,
  env.samples,
  method = "uniform",
  param.names = NULL,
  ...
)
}
\arguments{
\item{ensemble.size}{number of runs in model ensemble}

\item{pft.samples}{random samples from parameter distribution, e.g. from a MCMC chain}

\item{env.samples}{env samples}

\item{method}{the method used to generate the ensemble samples. Random generators: uniform, uniform with latin hypercube permutation. Quasi-random generators: halton, sobol, torus. Random generation draws random variates whereas quasi-random generation is deterministic but well equidistributed. Default is uniform. For small ensemble size with relatively large parameter number (e.g ensemble size < 5 and # of traits > 5) use methods other than halton.}

\item{param.names}{a list of parameter names that were fitted either by MA or PDA, important argument, if NULL parameters will be resampled independently}

\item{...}{Other arguments passed on to the sampling method}
}
\value{
matrix of (quasi-)random samples from trait distributions
}
\description{
Get parameter values used in ensemble
}
\details{
Returns a matrix of randomly or quasi-randomly sampled trait values 
to be assigned to traits over several model runs.
given the number of model runs and a list of sample distributions for traits
The model run is indexed first by model run, then by trait
}
\author{
David LeBauer, Istem Fer
}
