\name{GenCAT_manhattan}
\alias{GenCAT_manhattan}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Create Manhattan Plot of GenCAT Results
%%  ~~function to do ... ~~
}
\description{
This function will create a Manhattan Plot from output of \code{GenCAT} function
}
\usage{
GenCAT_manhattan(GenCATout, sigThresh = NULL, highlightPosi = FALSE,
labelPosi = FALSE, sepChr = 8e+05,  
plotTitle = "Manhattan Plot of GenCAT Results")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{GenCATout}{
An object of class, \code{GenCATtest}. 
}
  \item{sigThresh}{
P-value threshold to highlight classes with strong signal from GenCAT test
}
  \item{highlightPosi}{
logical. If \code{TRUE}, classes with GenCAT p-value less than \code{sigThresh} will be shown in blue
}
  \item{labelPosi}{
logical. If \code{TRUE}, classes with GenCAT p-value less than
\code{sigThresh} will be labelled. 
}
  \item{sepChr}{
Specifies the space to put between chromosomes on the plot. 
}
  \item{plotTitle}{
Character expression for plot title.
}
}
\details{
\code{GenCATtest} is the class of the output of the \code{GenCAT} function. 
}
\author{
Eric Reed, Sara Nunez, Jing Qian, Andrea Foulkes 
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\examples{
###############
#Running GenCAT
###############
data("CardioMapped")

#Subset CardioMapped to decrease CPU time
CardioMappedSub<-CardioMapped[CardioMapped$chr < 15,]
set.seed(1)
CardioMappedSub<-CardioMappedSub[sample(1:nrow(CardioMappedSub), 100),]

library(snpStats)
data('geno')

genoData<-geno$genotypes
snpInfo<-geno$map

colnames(snpInfo)<-c('chr', 'SNP', 'gen.dist', 'position', 'A1', 'A2')
print(head(snpInfo))

GenCATtest <- GenCAT(CardioMappedSub, genoData=genoData, snpInfo = snpInfo)

######################
#Create Manhattan Plot
######################

print(str(GenCATtest))
GenCAT_manhattan(GenCATtest, sigThresh = (0.05/nrow(GenCATtest$GenCAT)), 
highlightPosi = TRUE, labelPosi = TRUE)
}
