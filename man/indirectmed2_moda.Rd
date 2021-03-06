% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/indirectmed2_moda.R
\name{indirectmed2_moda}
\alias{indirectmed2_moda}
\title{Indirect Effect for Serial Mediation and Moderator on Path A}
\usage{
indirectmed2_moda(formula2, formula3, formula4, x, m1, m2, mod, df, random)
}
\arguments{
\item{formula2}{The formula for mediation for the a1 path, usually
\code{m1 ~ x}. Can also include covariates and will be \code{eq2}
if the \code{createformula()} function is used. This effect will
also have a moderator for this model.}

\item{formula3}{The formula for mediation for the a2 and d21 paths, usually
\code{m2 ~ x + m1}. Can also include covariates and will be
\code{eq3} if the \code{createformula()} function is used.}

\item{formula4}{The formula for mediation for the b1 and b2 paths, usually
\code{y ~ x + m1 + m2}. Can also include covariates and will be \code{eq4} if the
\code{createformula()} function is used.}

\item{x}{The column name for x in the data frame.}

\item{m1}{The column name for mediator 1 in the data frame.}

\item{m2}{The column name for mediator 2 in the data frame.}

\item{mod}{The column name for the moderator in the data frame.}

\item{random}{This variable is used to denote the data frame will be
randomize by row, as part of the \code{boot} library.}

\item{data}{The dataframe where the columns from the formula can be found.}
}
\description{
This function runs a serial mediation model with two mediators to calculate
the indirect effect, which will be used for bootstrapping
the confidence interval of the indirect effect. This function
is used in conjunction with the \code{boot} function and is formatted to
work as a bootstrapped effect. This mediation model includes a
moderator on path A1.
}
\examples{
indirectmed2("Q31 ~ Q151*Q121", "Q41 ~ Q151 + Q31",
             "Q11 ~ Q151 + Q31 + Q41", mtcars)
}
\keyword{effect}
\keyword{indirect}
\keyword{mediation,}
\keyword{regression,}
