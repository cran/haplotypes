\name{haplotypes-package}
\alias{haplotypes-package}
\alias{haplotypes}
\docType{package}
\title{
Haplotype inference and statistical analysis of genetic variation
}
\description{
This package provides S4 classes and methods for reading and manipulating aligned DNA sequences, supporting indel coding methods, showing polymorphic sites (base substitutions and indels), calculating absolute pairwise distances between DNA sequences, and inferring haplotypes from DNA sequences or user provided absolute character difference matrix.  This package also includes S4 classes and methods for estimating genealogical relationships among haplotypes using statistical parsimony. It requires R-packages: \pkg{network} to plot statistical parsimony networks.
}

\author{
Caner Aktas, \email{caktas.aca@gmail.com}
}

\examples{

## Read example FASTA file.	
f<-system.file("example.fas",package="haplotypes") 
# invalid character 'N' was replaced with '?' with a warning message
x<-read.fas(file=f)
# an object of class 'Dna'
x 

## or load DNA Sequence data set.
data("dna.obj") 
x<-dna.obj
\dontrun{
x
}

## Compute an absolute pairwise character difference matrix from DNA sequences.
# coding gaps using simple indel coding method
d<- distance(x,indels="sic") 
\dontrun{
d
}

## Infer haplotypes using the 'Dna' object.
# coding gaps using simple indel coding method
h<-haplotype(x,indels="s") 
\dontrun{
h
}

## Conduct statistical parsimony analysis with %95 connection limit.
p<-parsimnet(x,prob=.95) 

\dontrun{
p
# plot network
plot(p) 
}
}

\keyword{PACKAGE}
