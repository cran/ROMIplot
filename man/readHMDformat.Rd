\name{readHMDformat}
\alias{readHMDformat}
\title{
  A function to read data from the Human Mortality Database ("HMD")
}
\description{
  This function to read HMD data uses code from Tim Riffe's package
  HMDHFDplus, which has not been published on CRAN (yet), but is
  available at the webpage of the Max Planck Institute for Demographic
  Research. Please see "References" for more details. 
}
\usage{
readHMDformat(CNTRY = NULL, username = NULL, password = NULL, fixup = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{CNTRY}{
    Data for which country do you want?
  }
  \item{username}{
    Please supply your HMD username. Typically your email address.
  }
  \item{password}{
    Please supply your HMD password.
  }
  \item{fixup}{
    Logical. Should columns be made more user-friendly, e.g., forcing
    Age to be integer?
  }
}
\details{
  You need to register first at the Human Mortality Database at
  www.mortality.org to use this function.
}
\value{
\item{deaths}{A data frame containing death counts from the Human
  Mortality Database for country CNTRY in 1x1 (age x year) resolution}
\item{exposures}{A data frame containing exposure to risk information
  from the Human Mortality Database for country CNTRY in 1x1 (age x
  year) resolution}
}
\references{
  Riffe, T (2015): Reading Human Fertility Database and Human Mortality
  Database data into R. MPIDR Technical Report TR-2015-004, 5 pages
  (June 2015), includes R package HMDHFDplus.
  Available online at: http://goo.gl/qFC4JA
}
\author{
  Roland Rau, Tim Riffe 
}
\examples{
\dontrun{readHMDformat(CNTRY='USA', username=your@HMD.username,
                       password=yourHMDpassword)}
}
\keyword{online data}

