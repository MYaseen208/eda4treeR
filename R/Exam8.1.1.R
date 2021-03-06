#' @title    Example 8.1.1 from Experimental Design & Analysis for Tree Improvement
#' @name     Exam8.1.1
#' @description Exam8.1.1 presents the Mixed Effects Analysis of Diameter at breast height (Dbh) of 60 SeedLots
#'              under layout of row column design with 6 rows and 10 columns in 18
#'              countries and 59 provinces of 18 selected countries given in Example 8.1.
#' @author
#' \enumerate{
#'          \item  Muhammad Yaseen (\email{myaseen208@@gmail.com})
#'          \item  Sami Ullah (\email{samiullahuos@@gmail.com})
#'          }
#'
#' @references
#' \enumerate{
#'          \item Williams, E.R., Matheson, A.C. and Harwood, C.E. (2002).\emph{Experimental Design and Analysis for Tree Improvement}.
#'                CSIRO Publishing.
#'              }
#'
#' @seealso
#'    \code{\link{DataExam8.1}}
#'
#' @import tidyverse
#' @import ggplot2
#' @importFrom magrittr %>%
#' @importFrom stats lm anova
#' @import emmeans
#' @import pbkrtest
#' @import lme4
#'
#' @examples
#' data(DataExam8.1)
#' library(tidyverse)
#' library(emmeans)
#' library(lme4)
#' fm8.8<- lmer(formula=
#'      Dbh~1+Replication+Column+Province+(1|Replication:Row)+(1|Replication:Column)
#'     ,data = DataExam8.1
#'     ,REML = TRUE
#'     ,control = lmerControl()
#'     ,start = NULL
#'     , verbose = 0L
#'    #, subset
#'    #, weights
#'    #, na.action
#'    #,offset
#'     , contrasts = NULL
#'     , devFunOnly = FALSE)
#'   anova(fm8.8)
#'   summary(fm8.8)
#'   anova(fm8.8, ddf = "Kenward-Roger")
#'   emmeans::emmeans(fm8.8,specs ="Replication")
#'   emmeans::emmeans(fm8.8,specs ="Column")
#'   emmeans::emmeans(fm8.8,specs ="Province")
#'   RCB1<- aov(Dbh~Province+Replication,data = DataExam8.1)
#'   RCB<- emmeans::emmeans(RCB1,specs="Province")
#'   Mixed<- emmeans::emmeans(fm8.8,specs ="Province")
#'   table8.9<-data.frame(as.data.frame(summary(RCB))[c('emmean', 'SE')],
#'   as.data.frame(summary(Mixed))[c('emmean', 'SE')])
#'   colnames(table8.9)<- c("RCB(Mean)","RCB(SE)", "Mixed(Mean)", "Mixed(SE)")
#'   print(table8.9)
NULL
