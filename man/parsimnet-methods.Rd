\name{parsimnet-methods}
\docType{methods}
\alias{parsimnet}
\alias{parsimnet-methods}
\alias{parsimnet,dist-method}
\alias{parsimnet,Dna-method}
\alias{parsimnet,matrix-method}
\title{Estimates gene genealogies using statistical parsimony}
\description{
 Function for estimating gene genealogies from DNA sequences or user provided absolute pairwise character difference matrix using statistical parsimony.
}

\usage{
\S4method{parsimnet}{Dna}(x,indels="sic",prob=.95)
\S4method{parsimnet}{dist}(x,seqlength,prob=.95)
\S4method{parsimnet}{matrix}(x,seqlength,prob=.95)
}

\arguments{
 \item{x}{an object of class \code{\link{Dna}}, dist, or matrix.}
 \item{indels}{the indel coding method to be used. This must be one of "sic", "5th" or "missing". Any unambiguous substring can be given.  See \code{\link{distance}} for details. }
  \item{seqlength}{an integer of length one giving the sequence length information (number of characters). }
  \item{prob}{a numeric vector of length one between 0 and 1 giving the probability of parsimony as defined in Templeton et al. (1992).}
  }
  
  \details{
The network estimation method implemented in parsimnet function finds one of the most parsimonious network within the parsimony limit. If algorithm finds more than one best networks, only the minimum spanning network is returned. 

}
  

\value{
  \code{parsimnet} returns an object of class \code{\link{Parsimnet}}.
}


\section{Methods}{
\describe{

\item{\code{signature(x = "Dna")}}{
estimating gene genealogies from DNA sequences.
}

\item{\code{signature(x = "dist")}}{
estimating gene genealogies from distance matrix (dist object).
}

\item{\code{signature(x = "matrix")}}{
estimating gene genealogies from distance matrix.
}
}}


\references{
  Templeton, A. R., Crandall, K. A. and Sing, C. F. (1992) A cladistic
  analysis of phenotypic associations with haplotypes inferred from
  restriction endonuclease mapping and DNA sequence data. III. Cladogram
  estimation. \emph{Genetics}, \bold{132}, 619-635.
  
  Paradis, E. (2010) pegas: an R package for population genetics with an
  integrated-modular approach. \emph{Bioinformatics}, \bold{26}, 419-420.
  
}

\seealso{
  \code{\link{network}} and  \code{\link{plot-methods}}
  }


\author{
Caner Aktas, \email{caktas.aca@gmail.com}. 

}

\note{
	An internal function \code{.TempletonProb} is taken from package pegas version 0.6 without any modification, authors Emmanuel Paradis, Klaus Schliep.
}


\examples{
data("dna.obj")
x<-dna.obj

## Method for signature 'Dna'.
# statistical parsimony with %95 connection limit 
p<-parsimnet(x) 
p
plot(p)

# statistical parsimony with %99 connection limit 
p<-parsimnet(x,prob=.99) 
p
# plot the first network
plot(p,net=1) 

# statistical parsimony with %95 connection limit, indels are coded as missing
p<-parsimnet(x,indels="m")
p
plot(p)


## Method for signature 'dist'.
d<-distance(x)
seqlength<-length(x)
# statistical parsimony with %95 connection limit for 113 character
p<-parsimnet(d,seqlength) 
p
plot(p)


## Method for signature 'matrix'.
d<-as.matrix(distance(x))
seqlength<-length(x)
# statistical parsimony with %95 connection limit for 113 character
p<-parsimnet(d,seqlength)
p
plot(p)

}



\keyword{STATISTICAL PARSIMONY}




