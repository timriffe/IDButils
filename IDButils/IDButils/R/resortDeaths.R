#'
#' @title \code{resortDeaths()} utility to sort Death inputs by Lexis within Sex within Age within Year
#' 
#' @description does as promised
#' 
#' @param deathsInHMDFormat data.frame
#' 
#' @return deathsInHMDFormat data.frame, resorted
#' 
#' @export
#' 
resortDeaths <- function(deathsInHMDFormat){
	if (class(deathsInHMDFormat$Age) != "character"){
		deathsInHMDFormat$Age <- as.character(deathsInHMDFormat$Age)
	}
	deathsInHMDFormat$Age[deathsInHMDFormat$Age == "UNK"] <- "999"
	deathsInHMDFormat$Age[deathsInHMDFormat$Age == "TOT"] <- "888"
	deathsInHMDFormat$Age <- as.integer(deathsInHMDFormat$Age)
    # df sorting tip from: http://stackoverflow.com/questions/1296646/how-to-sort-a-dataframe-by-columns-in-r
	deathsInHMDFormat <- deathsInHMDFormat[with(deathsInHMDFormat, order(Year, Sex, Age, Lexis)), ]
	deathsInHMDFormat$Age <- as.character(deathsInHMDFormat$Age)
	deathsInHMDFormat$Age[deathsInHMDFormat$Age == "999"] <- "UNK"
	deathsInHMDFormat$Age[deathsInHMDFormat$Age == "888"] <- "TOT"
	deathsInHMDFormat
}