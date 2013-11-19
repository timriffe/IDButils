#'
#' @title \code{resortLDB()} utility to sort LexisDB objects by Lexis within Age within Year
#' 
#' @description LexisDB objects should actually already be sorted, and this function was written just for the sake of comparing output while getting a handle on the matlab scripts. Columns must already be in standard order.
#' 
#' @param Death data.frame
#' 
#' @return Death data.frame, resorted
#' 
#' @export
#' 

resortLDB <- function(x){
  colnames(x) <- c("Year", "Age", "Lexis", "Cohort", "Population", "Deaths")
  x <- x[with(x, order(Year, Age, Lexis)), ]
  x
}

