\name{names-methods}
\docType{methods}
\alias{names}
\alias{names-methods}
\alias{names<--methods}
\alias{names,Dna-method}
\alias{names<-,Dna-method}

\title{Function to get or set names of a \code{Dna} object}
\description{
 Function to get or set names of an object.
}
\usage{
\S4method{names}{Dna}(x)
\S4method{names}{Dna}(x)<-value
}

\arguments{
 \item{x}{an object of class \code{\link{Dna}}. }
 \item{value}{a character vector of the same length as nrow(x). }
}


\section{Methods}{
\describe{

\item{\code{signature(x = "Dna")}}{
 Function to get or set names of an object of Dna.
}
}}



\examples{

data("dna.obj")

x<-dna.obj
x<-as.dna(x[1:4,1:6])

## Getting sequence names.
names(x)

## Setting sequence names.
names(x)<-c("u","v","z","y")
names(x)

}


\keyword{DNA ANALYSIS}
