\name{writeIDB}
\alias{writeIDB}
\title{\code{writeIDB()} write out a newly updated InputDB file}
\usage{
  writeIDB(obj, path)
}
\arguments{
  \item{obj}{data.frame of inout object}

  \item{path}{full path to write to including \code{".txt"}
  suffix}
}
\value{
  function called for its side effects. A file is either
  created or overwritten.
}
\description{
  This function calls \code{write.table()} with all the
  correct arguments to write out a standard InoutDB file.
}

