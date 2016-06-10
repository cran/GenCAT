\name{CardioMapped}
\alias{CardioMapped}
\docType{data}
\title{
CARDIoGRAM data mapped to classes
}
\description{
CARDIoGRAM test statistics mapped to protein coding genes on chromosomes 13, 14, and 15.
}
\usage{data("CardioMapped")}
\format{
  A data frame with 98582 observations on the following 7 variables.
  \describe{
    \item{\code{SNP}}{a character vector}
    \item{\code{effect_allele}}{a character vector}
    \item{\code{other_allele}}{a character vector}
    \item{\code{testStat}}{a numeric vector}
    \item{\code{chr}}{a numeric vector}
    \item{\code{position}}{a numeric vector}
    \item{\code{class}}{a character vector}
  }
}
\details{
Data on coronary artery disease / myocardial infarction have been contributed by CARDIoGRAMplusC4D investigators and have been downloaded from www.CARDIOGRAMPLUSC4D.ORG.
}
\source{
\url{www.CARDIOGRAMPLUSC4D.ORG}.
}
\references{
Schunkert, H., Konig, I. R., Kathiresan, S., Reilly, M. P. and et. al. (2011) <DOI:10.1038/ng.784> Large-scale association analysis identifies 13 new susceptibility loci for coronary artery disease. Nat. Genet. 43 333-338.
}
\examples{
data("CardioMapped")
}
\keyword{datasets}
