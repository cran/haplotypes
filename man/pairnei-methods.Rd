\name{pairnei-methods}
\docType{methods}
\alias{pairnei}
\alias{pairnei-methods}
\alias{pairnei,Dna-method}
\alias{pairnei,dist-method}
\alias{pairnei,matrix-method}
\title{Provides the average number of pairwise Nei's (D) differences between populations}
\description{
 Function provides pairwise Nei's raw number of nucleotide differences between populations.
}

\usage{
\S4method{pairnei}{Dna}(x,populations,indels="sic")
\S4method{pairnei}{dist}(x,populations)
\S4method{pairnei}{matrix}(x,populations)
}
\arguments{
 \item{x}{an object of class \code{\link{Dna}}, \code{"dist"} or \code{"matrix"}.}
 \item{populations}{a vector giving the populations, with one element per individual.}
 \item{indels}{the indel coding method to be used. This must be one of "sic", "5th" or "missing". Any unambiguous substring can be given.  See \code{\link{distance}} for details. }
}

\value{
	a list with following components: 
  	\item{\code{Between}}{a matrix giving the average number of pairwise Nei's (D) differences between the populations.}
	\item{\code{Within}}{a numeric vector giving the average number of pairwise Nei's (D) differences within the populations.}
	\item{\code{Uniquepopulations}}{a character vector giving the names of the populations. }
}

\section{Methods}{
\describe{

\item{\code{signature(x = "Dna")}}{
}

\item{\code{signature(x = "dist")}}{

}

\item{\code{signature(x = "matrix")}}{
}
}}

\references{
Nei, M. and Li, W. H. (1979) Mathematical model for studying genetic variation in terms of restriction endonucleases. \emph{Proceedings of the National Academy of Sciences of the United States of America } \bold{76}, 5269-5273.		
		
  }

\author{
Caner Aktas, \email{caktas.aca@gmail.com}
}


\examples{
data("dna.obj")
x<-dna.obj[1:6,,as.matrix=FALSE]
populations<-c("pop1","pop1","pop2","pop3","pop3","pop3") 

## Method for signature 'Dna'.
pairnei(x, populations)

## Method for signature 'dist'.
d<-distance(x)
pairnei(d, populations)

## Method for signature 'matrix'.
d<-as.matrix(distance(x))
pairnei(d, populations)


}

\keyword{DNA ANALYSIS}


