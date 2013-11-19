
#'
#' @title \code{resortTadj()} utility to sort tadj inputs by Age within Sex within Year
#' 
#' @description does as promised
#' 
#' @param tadj data.frame
#' 
#' @return tadj data.frame, resorted
#' 
#' @export
#'

resortTadj <- function(tadj){
    # first give Type = Rb a value of -1 for age
    tadj$Age[tadj$Type == "Rb"] <- -1
    tadj <- tadj[with(tadj, order(Year, Sex, Age)), ]
    tadj$Age[tadj$Type == "Rb"] <- NA
    tadj
}
