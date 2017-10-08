% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/skygrowth.R
\name{skygrowth.map}
\alias{skygrowth.map}
\title{Maximum a posteriori estimate of effective size through time with a non-parametric growth model}
\usage{
skygrowth.map(tre, tau0 = 10, tau_logprior = "exponential", res = 50,
  quiet = FALSE, maxiter = 20, abstol = 0.01, control = NULL, ...)
}
\arguments{
\item{tre}{A dated phylogeny in ape::phylo format (see documentation for ape)}

\item{tau0}{Initial guess of the precision parameter}

\item{tau_logprior}{Prior for precision parameter (character string (gamma or exponential) or function)}

\item{res}{Number of time points (integer)}

\item{quiet}{Provide verbose output?}

\item{maxiter}{Maximum number of iterations}

\item{abstol}{Criterion for convergence of likelihood}

\item{control}{List of options passed to optim}
}
\value{
A fitted model including effective size through time
}
\description{
Maximum a posteriori estimate of effective size through time with a non-parametric growth model
}
\examples{
#require(skygrowth)
#require(ape)
#load('NY_flu.rda') 
#(tr <- NY_flu) # NOTE branch lengths in weeks  / 13 years in all
#fit <- skygrowth.map( tr 
# , res = 24*13  # Ne changes every 2 weeks
# , tau0 = .1    # Smoothing parameter. If prior is not specified, this will also set the scale of the prior
#)
#plot( fit ) + scale_y_log10()
}