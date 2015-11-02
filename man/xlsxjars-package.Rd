\name{xlsxjars-package}
\alias{xlsxjars-package}
\alias{xlsxjars}
\docType{package}
\title{
   Package required jars for the xlsx package
}
\description{
  
  The \code{xlsxjars} package collects all the external jars required
  for the \code{xlxs} package.  These external jars are quite large in
  size (10MB) and have a slow release cycle.  By separating the Java and
  R development, the storage footprint on CRAN is reduced.

  The Java library comes from the Apache project, see
  \url{http://poi.apache.org/index.html} for License and Copyright of
  this piece of software.  The POI Apache project provides a Java API to
  Microsoft Documents (Excel, Word, PowerPoint, Outlook, Visio, etc.)
  By using the \code{rJava} package that links \R and Java, we can use
  the excellent work already done by the folks at the Apache project and
  provide this functionality in R.
 
  Current version corresponds to release 3.13 of the POI project. 
}
\details{
\tabular{ll}{
Package: \tab xlsxjars\cr
Type: \tab Package\cr
Version: \tab 0.8.0\cr
Date: \tab 2015-11-29\cr
License: \tab GPL-3\cr
}

}
\author{
Adrian A. Dragulescu

Maintainer: Adrian A. Dragulescu <adrian.dragulescu@gmail.com>

}
\references{
  Apache POI project for Microsoft Excel format:
  \url{http://poi.apache.org/spreadsheet/index.html}.
  
  The Java Doc detailing the classes:
  \url{http://poi.apache.org/apidocs/index.html}.

}
\keyword{ package }

