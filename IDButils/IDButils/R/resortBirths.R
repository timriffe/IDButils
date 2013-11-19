
#'
#' @title \code{resortBirths()} utility to sort Birth inputs by Sex within Year
#' 
#' @description does as promised
#' 
#' @param Births data.frame
#' 
#' @return Births data.frame, resorted
#' 
#' @export
#' 

resortBirths <- function(birthsInHMDFormat){
  birthsInHMDFormat <- birthsInHMDFormat[with(birthsInHMDFormat, order(Year, Sex)), ]
  birthsInHMDFormat
}

