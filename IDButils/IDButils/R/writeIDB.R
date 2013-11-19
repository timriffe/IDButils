#'
#' @title \code{writeIDB()} write out a newly updated InputDB file
#' 
#' @description This function calls \code{write.table()} with all the correct arguments to write out a standard InoutDB file.
#' 
#' @param obj data.frame of inout object
#' @param path full path to write to including \code{".txt"} suffix
#' 
#' @return function called for its side effects. A file is either created or overwritten.
#' 
#' @export
#' 

writeIDB <- function(obj, path){
  write.table(obj, 
    file = path, 
    sep = ",", 
    col.names = colnames(obj), 
    row.names = FALSE,
    quote = FALSE,
    eol = "\r\n")
}
