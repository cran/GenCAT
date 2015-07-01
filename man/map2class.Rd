\name{map2class}
\alias{map2class}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Mapping SNPs to Classes
%%  ~~function to do ... ~~
}
\description{
The function maps SNPs to classes based on genome coordinates
}
\usage{
map2class(coords, SNPs, extend.boundary = 0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{coords}{
A data frame containing chromosome and upper and lower coordinates for a each class to be mapped. This must include column names 'chr', 'start', 'stop', and 'class'.

}
  \item{SNPs}{
A data frame containing genome coordinates of SNPs. This must include column names 'SNP', 'chr', 'position'.
}
  \item{extend.boundary}{
Number of base pairs to extend the class coordinates for mapping.
}
}
\details{
Genomic coordinates defining the class boundaies in object, \code{coors}, and SNP location in object, \code{SNPs} should be annotated within the same build. 

Note: That if using the \code{map2class} function to map SNPs to classes to use in the \code{GenCAT} function, then additional columns for \code{effect_allele} and \code{other_allele} can be used.
}
\value{

A data frame with SNP information including class label.
}
\author{
Eric Reed, Sara Nunez, Jing Qian, Andrea Foulkes 
}
\examples{
data('CardioData')
data('coords')

######################
#Mapping SNPs to genes
######################
print(head(coords))

#Subset CardioData to decrease CPU time
CardioDataSub<-CardioData[CardioData$chr < 15,]
set.seed(1)
CardioDataSub<-CardioDataSub[sample(1:nrow(CardioDataSub), 100),]

print(head(CardioDataSub))

CardioMapped<-map2class(coords, CardioDataSub, extend.boundary = 5000)
}

\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
