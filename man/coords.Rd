\name{coords}
\alias{coords}
\docType{data}
\title{
Protein coding gene coordinates (GRCh37/hg19)
}
\description{
Protein coding gene coordinates adapted from UCSC Genomes Browser KnownCanonical track.
}
\usage{data("coords")}
\format{
  A data frame with 18054 observations on the following 4 variables.
  \describe{
    \item{\code{chr}}{a numeric vector}
    \item{\code{start}}{a numeric vector}
    \item{\code{stop}}{a numeric vector}
    \item{\code{class}}{a character vector}
  }
}
\details{
These protein coding gene coordinates were adapted from the KnownCanonical track from the UCSC Genome Browser, GRCH37}
\source{
\url{https://genome.ucsc.edu/cgi-bin/hgTables}
}
\references{
Rosenbloom, K. R., Armstrong, J., Barber, G. P., Casper, J., Clawson, H., Diekhans, M., Dreszer, T. R., Fujita, P. A., Guruvadoo, L., Haeussler, M., Harte, R. A., Heitner, S., Hickey, G., Hinrichs, A. S., Hubley, R., Karolchik, D., Learned, K., Lee, B. T., Li, C. H., Miga, K.H. , Nguyen, N., Paten, B., Raney, B.J., Smit, A. F., Speir, M. L., Zweig, A. S., Haussler, D., Kuhn, R. M., Kent, W.J. (2015) <DOI:10.1093/nar/gku1177> The UCSC Genome Browser database: 2015 update. Nucleic Acids Res. Jan;43(Database issue):D670-81.
}
\examples{
data("coords")
}
\keyword{datasets}
