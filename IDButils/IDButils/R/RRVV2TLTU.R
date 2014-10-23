
#'@title RRVV2TLTU split RR and VV redundant tabulations into TL and TU Lexis shapes
#' 
#' @description This takes advantage of the fact that age 0 VV is actually a TL, and then iterates upward. There can be no gaps in ages, and ages must be single.
#' RR and VV must be the same length.
#' 
#' @param RR a vector of age-period count data, in in single ages, including the open age group, not including TOT or UNK. (demo_magec, if EUROSTAT is the source)
#' @param VV a vector of the same length as RR for count data in vertical parallelograms, i.e. 'age reached during the year'. excl TOT and UNK (demo_mager, if EUROSTAT is the source)
#' 
#' @return A data.frame with elements Age, Lexis and Deaths
#'  
#' @export 
RRVV2TLTU <- function(RR, VV){
  # assuming ages organized in same way
  # no UNK and no TOT, last age open
  n  <- length(RR)
  TU <- cumsum(RR - VV)
  TL <- c((RR - TU)[-n], RR[n])
  data.frame(Age = c(1:length(TL)-1,1:length(TU)-1),
             Lexis = c(rep("TL",length(TL)),rep("TU",length(TU))),
             Deaths=c(TL,TU))
}

