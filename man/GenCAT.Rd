\name{GenCAT}
\alias{GenCAT}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Running GenCAT
%%  ~~function to do ... ~~
}
\description{
This function runs the GenCAT approach on a data frame of SNP level 
test statistics.
}
\usage{
GenCAT(SNPdata, genoData, snpInfo, pcCutoff = 0.95, 
workers = getOption("mc.cores", 2L))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{SNPdata}{
A data table containing SNP level test statistics, chromsome, class, and allele assignment. This must have the column names 'SNP', 'testStat', 'chr', 'class', 'effect_allele', and 'other_allele'.
}
  \item{genoData}{
This is an object of class 'SnpMatrix' with genotype data to run GenCAT
}
  \item{snpInfo}{
If 'genoData' is provided this is a table which includes SNP data with columns 'chr', 'SNP', 'position', 'A1', and 'A2'."  
}
  \item{pcCutoff}{
Threshold for the cumulative poportion of eigenvalues given by eigen() for the SNP-wise correlation matrix. By default this is set to 0.95.
}
  \item{workers}{
Specifies the number of parallel processes to run. 
}
}
\details{

Reference population should be representative of population used to generate SNP level test statistics. Genotype data is input using the arguments \code{genoData} and \code{snpInfo}.  The former should be of class \code{SnpMatrix}. The latter should be a data frame similar to that of the \code{map} element of the list created by the \code{read.plink} or \code{read.pedfile} functions from the \code{snpStats} package.

The \code{pcCutoff} argument specifies the proportion of variability in the SNP wise correlation matrix used in the eigen decomposition and estimation of independent test statistics.

}
\value{
An object of class "GenCATtest" with five elements. 

\item{GenCAT}{A data frame containing GenCAT test results.}
\item{Used}{A data frame containing SNP information for SNPs used in GenCAT analysis}
\item{notFound}{A data frame containing SNP information for SNPs for which there was no reference genotype data}
\item{unMatched}{A data frame containing SNP information for SNPs in which an allele assignment wasn't in reference genotype}
\item{TransStats}{A data frame containing transformed test statistics from eigen decomposition of each class}

}
\references{
Qian J, Nunez S, Reed E, Reilly MP, Foulkes AS (2016) <DOI:10.1371/journal.pone.0148218> A Simple Test of Class-Level Genetic Association Can Reveal Novel Cardiometabolic Trait Loci. PLoS ONE 11(2): e0148218.
}
\author{
Eric Reed, Sara Nunez, Jing Qian, Andrea Foulkes 
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link[snpStats:snpStats-package]{snpStats}
}}
\examples{

###############
#Running GenCAT
###############
data("CardioMapped")

#Subset CardioMapped to decrease CPU time
CardioMappedSub<-CardioMapped[CardioMapped$chr < 15,]
set.seed(1)
CardioMappedSub<-CardioMappedSub[sample(1:nrow(CardioMappedSub), 100),]

print(head(CardioMappedSub))

library(snpStats)
data('geno')

genoData<-geno$genotypes
snpInfo<-geno$map

print(str(genoData))

colnames(snpInfo)<-c('chr', 'SNP', 'gen.dist', 'position', 'A1', 'A2')
print(head(snpInfo))

GenCATtest <- GenCAT(CardioMappedSub, genoData=genoData, snpInfo = snpInfo)

  }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
