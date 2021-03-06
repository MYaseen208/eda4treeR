% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Exam3.1.1.R
\name{Exam3.1.1}
\alias{Exam3.1.1}
\title{Example 3.1.1 from Experimental Design & Analysis for Tree Improvement}
\description{
Exam3.1.1 is part of data from Australian Centre for Agricultural Research (ACIAR)
             in Queensland, Australia (Experiment 309).
}
\examples{

library(tidyverse)
data(DataExam3.1.1)

fm3.8   <-     lm(
   formula     = Mean~Repl+SeedLot
 , data        = DataExam3.1.1
 #, subset
 #, weights
 #, na.action
 , method      = "qr"
 , model       = TRUE
 , x           = FALSE
 , y           = FALSE
 , qr          = TRUE
 , singular.ok = TRUE
 , contrasts   = NULL
  )
anova(fm3.8)
DataExam3.1.1 \%>\%
dplyr::ungroup() \%>\%
 dplyr::group_by(SeedLot) \%>\%
 dplyr::summarize(Mean=mean(Mean))
}
\references{
\enumerate{
         \item Williams, E.R., Matheson, A.C. and Harwood, C.E. (2002).\emph{Experimental Design and Analysis for Tree Improvement}.
               CSIRO Publishing.
             }
}
\seealso{
\code{\link{DataExam3.1.1}}
}
\author{
\enumerate{
         \item  Muhammad Yaseen (\email{myaseen208@gmail.com})
         \item  Sami Ullah (\email{samiullahuos@gmail.com})
         }
}
