#'
#' @title \code{resortMonthly()} utility to sort Death inputs by Month within Year
#' 
#' @description This data input has no Sex column at present.
#' 
#' @param XXXmonthly data.frame
#' 
#' @return XXXmonthly data.frame, resorted
#' 
#' @export
#' 
resortMonthly <- function(XXXmonthly){
  if (class(XXXmonthly$Year) != "integer"){
    XXXmonthly$Year <- as.integer(XXXmonthly$Year)
  }
  if (class(XXXmonthly$Month) != "character"){
    XXXmonthly$Month <- as.character(XXXmonthly$Month)
  }
  XXXmonthly$Month[XXXmonthly$Month == "UNK"] <- "999"
  XXXmonthly$Month[XXXmonthly$Month == "TOT"] <- "888"
  XXXmonthly$Month <- as.integer(XXXmonthly$Month)
  
  # df sorting tip from: http://stackoverflow.com/questions/1296646/how-to-sort-a-dataframe-by-columns-in-r
  XXXmonthly <- XXXmonthly[with(XXXmonthly, order(Year, Month)), ]
  XXXmonthly$Month <- as.character(XXXmonthly$Month)
  XXXmonthly$Month[XXXmonthly$Month == "999"] <- "UNK"
  XXXmonthly$Month[XXXmonthly$Month == "888"] <- "TOT"
  XXXmonthly
}


