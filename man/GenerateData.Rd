% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/epiN.R
\name{GenerateData}
\alias{GenerateData}
\title{Generate data from extended model.}
\usage{
GenerateData(model, extTopology, FPrate, FNrate, replicates)
}
\arguments{
\item{model}{model of a topology
from CreateTopology}

\item{extTopology}{extended topology}

\item{FPrate}{false positive rate}

\item{FNrate}{false negative rate}

\item{replicates}{number of replicates}
}
\value{
data matrix with effect reporters as rows and knock-downs
(including double kock-downs) as columns.
}
\description{
Given a model created from
CreateTopology and ExtendTopology, this function creeates acorresponding
artificial data matrix, which is used as a ground truth for simulation
studies.
}
\examples{
topology <-
CreateTopology(3, 1, force = TRUE)
topology <-
unlist(unique(topology), recursive = FALSE)
extTopology <-
ExtendTopology(topology$model, 100)
sortedData <-
GenerateData(topology$model, extTopology, 0.05, 0.13, 3)
}
\seealso{
CreateTopology
}
\author{
Madeline Diekmann
}
