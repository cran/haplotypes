\name{Dna-class}
\Rdversion{1.1}
\docType{class}
\alias{Dna}
\alias{Dna-class}
\title{Class \code{"Dna"} in the Package \pkg{haplotypes}}
\description{
S4 class to hold DNA sequence data. }
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("Dna", sequence, seqlengths, seqnames)}, however reading fasta file using   \code{\link{read.fas}} function or coerce matrix, data.frame or list objects to a Dna object using \code{\link{as.dna}} methods is preferable.

}
\section{Slots}{
  \describe{
    \item{\code{sequence}:}{Object of class \code{"matrix"} containing DNA sequence data, rows represent sequences and columns represent sites. See also \sQuote{Note}.}
    \item{\code{seqlengths}:}{Object of class \code{"numeric"} containing the length of each DNA sequence.}
    \item{\code{seqnames}:}{Object of class \code{"character"} containing the name of each DNA sequence.}
  }
}
\section{Methods}{
  \describe{
    \item{[}{\code{signature(x = "Dna", i = "ANY", j = "ANY")}: extracts part of a DNA sequence as an object of class matrix.}
    \item{[<-}{\code{signature(x = "Dna", i = "ANY", j = "ANY", value = "ANY")}: replaces part of a Dna sequence with an object of class \code{"matrix"}, \code{"numeric"} or \code{"character"}.}
    \item{as.data.frame}{\code{signature(x = "Dna")}: coerces an object of class Dna to a data.frame.}
    \item{as.list}{\code{signature(x = "Dna")}: coerces an object of class Dna to a list; elements of the list are character vectors that contains the DNA sequences of length equal to corresponding value in the slot \code{seqlengths}.}  
    \item{as.matrix}{\code{signature(x = "Dna")}: coerces an object of class Dna to a matrix.}
    \item{as.numeric}{\code{signature(x = "Dna")}: coerces an object of class Dna to a numeric matrix.}
    \item{distance}{\code{signature(x = "Dna")}: computes and returns an absolute pairwise character difference matrix from DNA sequences. }
    \item{haplotype}{\code{signature(x = "Dna")}: infers haplotypes from DNA sequences. }
    \item{indelcoder}{\code{signature(x = "Dna")}: supports simple indel coding method. }
    \item{length}{\code{signature(x = "Dna")}: returns the longest sequence length. }
    \item{append}{\code{signature(x = "Dna", value = "ANY")}: combines two Dna objects.}
    \item{names}{\code{signature(x = "Dna")}: gets the names of an object Dna. }
    \item{names<-}{\code{signature(x = "Dna")}: sets the names of an object Dna. }
    \item{ncol}{\code{signature(x = "Dna")}: returns the longest sequence length. }
    \item{nrow}{\code{signature(x = "Dna")}: returns the total sequence number. }
    \item{pairnei}{\code{signature(x = "Dna")}:  calculates Nei's average number of differences between populations. }
    \item{parsimnet}{\code{signature(x = "Dna")}: estimates genealogies using statistical parsimony.}
    \item{polymorp}{\code{signature(x = "Dna")}: displays information about DNA polymorphisms of two sequences; indels and base substitutions, respectively.}
    \item{show}{\code{signature(object = "Dna")}: displays Dna object briefly. }
    \item{subs}{\code{signature(x = "Dna")}: displays information about base substitutions. }
	 }
}

\author{
Caner Aktas, \email{caktas.aca@gmail.com}
}


\note{

Valid characters for the slot \code{sequence} are "A","C","G","T","a","c","g","t","-","?". Numeric entries (integers) between 0-5 will be converted to "?","A","C","G","T","-", respectively. Invalid characters will be replaced with "?" with a warning message.

}

\keyword{DNA ANALYSIS}
\keyword{CLASSES}
