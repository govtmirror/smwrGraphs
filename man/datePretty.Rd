% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datePretty.R
\name{datePretty}
\alias{datePretty}
\title{Pretty Axis}
\usage{
datePretty(x, major = "Auto", minor = "Auto", tick.span = 1,
  style = c("Auto", "at", "between"), label.abbr = 0)
}
\arguments{
\item{x}{date and time data}

\item{major}{the major tick interval, must be one of "hours," "days," "months,"
"years," "water years," or "Auto," which will make an intelligent choice 
from those. "Auto" will also automatically change \code{tick.span}. Abbreviations
are permitted. See \bold{Details}.}

\item{minor}{the minor tick interval, must be one of "min," "hours," "days,"
"months," "years," or "Auto," which will make an intelligent choice from
those, possibly adjusted by a scaling factor. Can also be formatted as an
argument to \code{seq}, such as "15 mins" for 15-minute ticks. Abbreviations
are not permitted to account for the scaling factor.}

\item{tick.span}{span between major labels. For example, with "years"
option, tick.span=5 would generate labels like 1990, 1995, 2000 and so
forth.}

\item{style}{the style of labels, must be one of "at," "between," or "Auto,"
which selects the "best" style. "At" places the labels at the ticks and
"between" places the labels between the major ticks. Abbreviations
are permitted.}

\item{label.abbr}{indicator of the degree of abbreviation for labels\cr
\tabular{lr}{ 0 \tab best guess based on number of intervals\cr 1 \tab
shortest (single letter month, for example)\cr 2 \tab USGS abbreviation
(3- or 4-letter month name, for example)\cr 3 \tab full text\cr }}
}
\value{
Formatting information about the axis labels.
}
\description{
Constructs information for making a nicely formatted  date axis. 
A support function for creating date/time axes. Understanding the arguments 
can help in building specially formatted axes.
}
\details{
Setting \code{major} to "water year" is practical only for periods of
time from 1 to 5 water years in length; also sets the date range to water years.
}
\seealso{
\code{\link{timePlot}}, \code{\link{month.USGS}}, \code{\link{timePretty}}
}
\keyword{dplot}

