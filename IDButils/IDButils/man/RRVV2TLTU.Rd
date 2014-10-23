\name{RRVV2TLTU}
\alias{RRVV2TLTU}
\title{RRVV2TLTU split RR and VV redundant tabulations into TL and TU Lexis shapes}
\usage{
  RRVV2TLTU(RR, VV)
}
\arguments{
  \item{RR}{a vector of age-period count data, in in single
  ages, including the open age group, not including TOT or
  UNK. (demo_magec, if EUROSTAT is the source)}

  \item{VV}{a vector of the same length as RR for count
  data in vertical parallelograms, i.e. 'age reached during
  the year'. excl TOT and UNK (demo_mager, if EUROSTAT is
  the source)}
}
\value{
  a list containing elements TL and TU. TL is 1 element
  longer than TU
}
\description{
  This takes advantage of the fact that age 0 VV is
  actually a TL, and then iterates upward. There can be no
  gaps in ages, and ages must be single. RR and VV must be
  the same length.
}

