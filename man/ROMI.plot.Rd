\name{ROMI.plot}
\alias{ROMI.plot}
\title{
Creates a Lexis Surface Map of Rates of Mortality Improvement
}
\description{
Based on deaths counts and exposures OR on death rates, this function
plots rates of mortality improvement
}
\usage{
ROMI.plot(Dx = NULL, Nx = NULL, mx = NULL, smooth = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Dx}{
    Lexis matrix of death counts. Rows represent age. Columns represent year.
}
  \item{Nx}{
    Lexis matrix of exposure to risk information. Rows represent
    age. Columns represent year. Same dimensions required as for Dx
}
  \item{mx}{
    If you do not have Dx and Nx available, you can provide death rates
    here. Smoothing is not available in the current version of the
    package since the smoothing routine requires deaths counts and
    exposures.
}
  \item{smooth}{
    Logical. If TRUE, data will be smoothed using Giancarlo Camarda's
    package "MortalitySmooth"
}
}
\details{
  The main purpose of this function is to plot rates of mortality
  improvement. A matrix of those rates will be returned, nevertheless.
}
\value{
  A matrix of rates of mortality improvement. The main purpose, however,
  is to plot the data.
}
\author{
  Roland Rau
}
\examples{
\dontrun{ROMI.plot(Dx=Dx.matrix, Nx=Nx.matrix, smooth=TRUE)}
}
\keyword{Lexis maps}
\keyword{heat maps}
