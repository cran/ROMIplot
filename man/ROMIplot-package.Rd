\name{ROMIplot-package}
\alias{ROMIplot-package}
\alias{ROMIplot}
\docType{package}
\title{
\packageTitle{ROMIplot}
}
\description{
\packageDescription{ROMIplot}
}
\details{
  This package should facilitate the creation of Lexis surface maps that
  depict rates of mortality improvement, which the first author has
  shown at several demographic conferences. See references.
}
\author{
Roland Rau, Tim Riffe

Maintainer: Roland Rau
}
\references{
  Roland Rau et al. (2013): Rates of Mortality Improvement on the Lexis
  Surface. Visualizing Age-, Period- and Cohort-Effects.
  See: http://paa2013.princeton.edu/abstracts/130485
}
\keyword{ package }
\examples{
\dontrun{
AUTdata <- readHMDformat(CNTRY = "AUT", username=HMDusername, password=HMDpassword)

Dth.matrix <- create.Lexis.matrix(AUTdata[["deaths"]], Sex="Female", minage=50,
                                maxage=100, minyear=1950,
                                  maxyear=2011)
Expo.matrix <- create.Lexis.matrix(AUTdata[["exposures"]], Sex="Female", minage=50,
                                maxage=100, minyear=1950,
                                  maxyear=2011)
AUT.1950.2011 <- ROMI.plot(Dx=Dth.matrix, Nx=Expo.matrix, smooth=TRUE)
}
}

