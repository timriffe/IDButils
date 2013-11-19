
#'
#' @title \code{removeDuplicates()} remove duplicate rows from a data.frame
#' 
#' @description This pastes together each column of a row and compares against all others for exact duplicates. If the data.frame contains two rows with identical identifying variables, these will not be removed unless the numeric variable, e.g., Population, Deaths, is also a exactly the same. This is because deaths and population counts are treated as additive. This function will do the wrong thing if in fact exact duplicates are supposed to add, and it will do the wrong thing if someone was sloppy and re-estimated something without removing the prior numbers. Got it? So be careful, this is only a light sanity-check.
#' 
#' @param obj any HMD input data.frame.
#' 
#' @return the same object, purged of duplicate rows.
#' 
#' @export
#'
#' @examples
#' #obj <- data.frame(a=sample(1:10,size=1000,replace = TRUE),
#' # b=sample(LETTERS,size=1000,replace=TRUE),
#' # c=sample(LETTERS,size=1000,replace=TRUE), stringsAsFactors =FALSE)
#' #dim(obj)
#' #dim(removeDuplicates(obj))
#' 

removeDuplicates <- function(obj){
  if (!is.data.frame(obj)){
    obj <- as.data.frame(obj, stringsAsFactors = FALSE)
  }
  d.ind <- duplicated(do.call(paste, obj))
  invisible(obj[!d.ind, ])
}




