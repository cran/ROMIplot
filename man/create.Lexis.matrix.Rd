\name{create.Lexis.matrix}
\alias{create.Lexis.matrix}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Creates a Lexis surface matrix.
}
\description{
Creates a matrix (age by year) based on data formatted in the Human
Mortality Database format.

}
\usage{
create.Lexis.matrix(HMD.dataset, Sex = "Female", minage = 50, maxage = 100,
				minyear = 1950, maxyear = 2011)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{HMD.dataset}{
    A dataset as formatted in the Human Mortality Database, i.e. a data
    frame with the columns "Year", "Age", "Female", "Male", "Total" 
}
  \item{Sex}{
    For which sex should the matrix be created? Default setting is
    "Female". Other options are "Male" and "Total".
}
  \item{minage}{
    HMD data cover ages 0 to 100. Please select here a value for the
    lower bound to be included. Default is 50.
}
  \item{maxage}{
    HMD data cover ages 0 to 100. Please select here a value for the
    upper bound to be included. Default is 100.
}
  \item{minyear}{
    Please select the first year to be included in the matrix. Default
    is 1950.
  }
  \item{maxyear}{
    Please select the last year to be included in the matrix. Default
    is 2011.
}
}
\details{
  It is expected that age is an integer.
}
\value{
  A matrix with the dimensions: length(minage:maxage) x length(minyear:maxyear) 
  Rows represent ages, columns represent years.
}
\author{
  Roland Rau
}
\examples{

theyears <- 1900:2012
theages <- 0:110
n <- length(theyears) * length(theages)

# 'Simulating' a data frame in the HMD format
HMD.formatted.data <- data.frame(Year=sort(rep(theyears, length(theages))),
                                 Age = rep(theages, length(theyears)),
                                 Female = runif(n=n),
                                 Male = runif(n=n),
                                 Total = runif(n=n))

a.Lexis.matrix <- create.Lexis.matrix(HMD.dataset=HMD.formatted.data,
                                      Sex="Total", minage=30, maxage=105,
                                      minyear=1905, maxyear=2010)
}
\keyword{Lexis surface}

