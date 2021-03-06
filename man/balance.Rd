\name{balance}
\alias{balance}
\alias{balance.npCBPS}
\alias{balance.CBPS}
\alias{balance.CBMSM}
\title{Optimal Covariate Balance}
\description{Returns the mean and standardized mean associated with each treatment group, before and after weighting.}
\usage{\method{balance}{CBPS}(object, ...)}
\arguments{
  \item{object}{A CBPS, npCBPS, or CBMSM object.}
  \item{...}{Additional arguments to be passed to balance.}
}
\details{For binary and multi-valued treatments as well as marginal structural models, each of the matrices' rows are the covariates and whose columns are the weighted mean, and standardized mean associated with each treatment group.  The standardized mean is the weighted mean divided by the standard deviation of the covariate for the whole population.  For continuous treatments, returns the absolute Pearson correlation between the treatment and each covariate.}
\value{
  Returns a list of two matrices, "original" (before weighting) and "balanced" (after weighting).  
}
\author{Christian Fong, Marc Ratkovic, and Kosuke Imai.}

\examples{
###
### Example: Assess Covariate Balance
###
data(LaLonde)
## Estimate CBPS
fit <- CBPS(treat ~ age + educ + re75 + re74 + 
			I(re75==0) + I(re74==0), 
			data = LaLonde, ATT = TRUE)
balance(fit)
}