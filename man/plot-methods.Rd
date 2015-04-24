\name{plot-methods}
\docType{methods}
\alias{plot-methods}
\alias{plot,Parsimnet-method}
\title{Methods for function \code{plot} in the package \pkg{haplotypes}}
\description{
 Plots statistical parsimony networks.
}

\usage{
\S4method{plot}{Parsimnet}(x,net=1,inter.labels=FALSE,...)
 }

\arguments{
 \item{x}{an object of class \code{\link{Parsimnet}}.}
 \item{net}{a numeric vector of length one indicating which network to plot.}
  \item{inter.labels}{boolean; should vertex labels of intermediate haplotypes to be displayed? }
  \item{...}{additional arguments to \code{\link{plot.default}} and \code{\link{plot.network.default}}.}
  }
  
  \details{
This method calls \code{\link{plot.network.default}} from package \pkg{network}. Some default parameters are changed:
  \describe{
   \item{label}{ a vector of vertex labels. By default the row names of the distance matrices in slot \code{d} are used. If \code{inter.labels==FALSE} only haplotype labels are displayed. }
   \item{usearrows}{ boolean; should arrows (rather than line segments) be used to indicate edges? Default is set to FALSE. }
     \item{mode}{ the vertex placement algorithm. Default is set to \code{"kamadakawai"}. }
     \item{pad}{ amount to pad the plotting range; useful if labels are being clipped. Default is set to 1.}
       \item{label.cex}{ character expansion factor for label text. Default is set to 0.75.}
	\item{vertex.cex}{ a numeric vector of expansion factor for vertices. By default it is 0.8 for haplotypes and 0.5 for intermediates. }
	\item{vertex.col}{ an integer or character vector for the vertex colors. By default it is 2 (red) for haplotypes and 4 (blue) for intermediates. }

  }
}
 
 \value{
 A two-column matrix containing the vertex positions as x,y coordinates.
}
 
  
\section{Methods}{
\describe{
\item{\code{signature(x = "Parsimnet", y = "ANY")}}{
 Plots Parsimnet objects.

}
}}


\seealso{
 \code{\link{plot.default}} and \code{\link{plot.network.default}}
}

\author{
Caner Aktas, \email{caktas.aca@gmail.com}. 


}



\examples{
data("dna.obj")
x<-dna.obj

## Statistical parsimony with %95 connection limit 
p<-parsimnet(x) 
p

## Plotting with default parameters.
plot(p)

## Displaying vertex labels of intermediate haplotypes.
plot(p, inter.labels=TRUE)

\dontrun{ 
## Interactively adjusting vertex positions.
plot(p, interactive=TRUE)
}
 
## Adjusting vertex sizes.
plot(p, vertex.cex=c(rep(3,nrow(p@d[[1]]))))

# different sizes for haplotypes and intermediates
plot(p, vertex.cex=c(rep(3,p@nhap),rep(1,c(nrow(p@d[[1]])-p@nhap))))  

## Statistical parsimony with %98 connection limit.
p<-parsimnet(x,prob=.98) 
p

#plot the first network
plot(p,net=1)

#plot the second network
plot(p,net=2)

#plot the third network. It is a single vertex.
plot(p,net=3) 
}

\keyword{STATISTICAL PARSIMONY}



