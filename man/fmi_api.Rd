% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fmi_api.R
\name{fmi_api}
\alias{fmi_api}
\title{FMI API}
\usage{
fmi_api(request, storedquery_id = NULL, ...)
}
\arguments{
\item{request}{character request type of either \code{DescribeStoredQueries} or
\code{getFeature}.}

\item{storedquery_id}{character id of the stored query id. If \code{request} is
\code{getFeature}, then \code{storedquery_id} must be provided and otherwise
it's ignored.}

\item{...}{stored query specific parameters. NOTE: it's up to the high-level
functions to check the validity of the parameters.}
}
\value{
fmi_api (S3) object with the following attributes:
\describe{
\item{content}{XML payload.}
\item{path}{path provided to get the resonse.}
\item{response}{the original response object.}
}
}
\description{
Requests to FMI API.
}
\details{
Make a request to the FMI API. The base url is
opendata.fmi.fi/wfs?service=WFS&version=2.0.0 to which other
components defined by the arguments are appended.

This is a low-level function intended to be used by other higher level
functions in the package.

Note that GET requests are used using \code{httpcache} meaning that requests
are cached. If you want clear cache, use \code{\link[httpcache:cache-management]{httpcache::clearCache()}}. To turn
the cache off completely, use \code{\link[httpcache:cache-management]{httpcache::cacheOff()}}
}
\examples{
  # List stored queries
  fmi_api(request = "DescribeStoredQueries")

}
\author{
Joona Lehtomäki \href{mailto:joona.lehtomaki@iki.fi}{joona.lehtomaki@iki.fi}
}
