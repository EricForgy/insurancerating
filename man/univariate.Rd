% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/univariate.R
\name{univariate}
\alias{univariate}
\title{Univariate analysis for discrete risk factors}
\usage{
univariate(
  df,
  x,
  severity = NULL,
  nclaims = NULL,
  exposure = NULL,
  premium = NULL,
  by = NULL
)
}
\arguments{
\item{df}{data.frame with insurance portfolio}

\item{x}{column in \code{df} with risk factor}

\item{severity}{column in \code{df} with severity (default is NULL)}

\item{nclaims}{column in \code{df} with number of claims (default is NULL)}

\item{exposure}{column in \code{df} with exposure (default is NULL)}

\item{premium}{column in \code{df} with premium (default is NULL)}

\item{by}{column(s) in \code{df} to group by}
}
\value{
A list of class \code{univ_all} with components
\item{df}{data frame}
\item{xvar}{name of column in df with risk factor}
\item{severity}{name of column in df with severity}
\item{nclaims}{name of column in df with number of claims}
\item{exposure}{name of column in df with exposure}
\item{premium}{name of column in df with premium}
}
\description{
Univariate analysis for discrete risk factors in an insurance portfolio. The following summary statistics are calculated:
\itemize{
 \item{frequency (i.e. number of claims / exposure)}
 \item{average severity (i.e. severity / number of claims)}
 \item{risk premium (i.e. severity / exposure)}
 \item{loss ratio (i.e. severity / premium)}
 \item{average premium (i.e. premium / exposure)}
}
If input arguments are not specified, the summary statistics related to these arguments are ignored.
}
\examples{
univariate(MTPL2, x = area, severity = amount, nclaims = nclaims,
           exposure = exposure, premium = premium)

# The summary statistics related to premium are not calculated
univariate(MTPL2, x = area, severity = amount, nclaims = nclaims, exposure = exposure)

}
