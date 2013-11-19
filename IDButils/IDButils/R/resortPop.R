#'
#' @title \code{resortPop()} utility to sort Population inputs by Age within Sex within Month within Year
#' 
#' @description does as promised
#' 
#' @param popInHMDFormat data.frame
#' 
#' @return popInHMDFormat data.frame, resorted
#' 
#' @export
#' 

resortPop <- function(popInHMDFormat){
	if (class(popInHMDFormat$Age) != "character"){
		popInHMDFormat$Age <- as.character(popInHMDFormat$Age)
	}
	popInHMDFormat$Age[popInHMDFormat$Age == "TOT"] <- "888"
	popInHMDFormat$Age[popInHMDFormat$Age == "UNK"] <- "999"
	popInHMDFormat$Age <- as.integer(popInHMDFormat$Age)
	popInHMDFormat<- popInHMDFormat[with(popInHMDFormat, order(Year, Month, Sex, Age)), ]
	popInHMDFormat$Age <- as.character(popInHMDFormat$Age)
	popInHMDFormat$Age[popInHMDFormat$Age == "888"] <- "TOT"
	popInHMDFormat$Age[popInHMDFormat$Age == "999"] <- "UNK"
	popInHMDFormat
}

