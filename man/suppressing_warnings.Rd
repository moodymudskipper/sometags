% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/09_suppressing_warnings.R
\name{suppressing_warnings}
\alias{suppressing_warnings}
\title{suppressing_warnings tag to Selectively suppress warnings}
\usage{
suppressing_warnings(.regex = "*")
}
\arguments{
\item{.regex}{a string, a function, or a formula}
}
\description{
\code{suppressing_warnings} permits the user to provide a regular expression that
will be forwarded to \code{grepl}. The warning will be suppressed in case of match.
If the user feeds a function or formula to \code{.regex} argument it will be applied
on the text of the warning, and the warning will be suppressed if the output
is \code{TRUE}
}
\examples{
\dontrun{
fun <- function(x) {
  warning("ooops", call. = FALSE)
  sqrt(x)
}
fun(-1)
suppressing_warnings$fun(-1)
suppressing_warnings("prod")$fun(-1)
suppressing_warnings(~startsWith(., "o"))$fun(-1)
}
}
