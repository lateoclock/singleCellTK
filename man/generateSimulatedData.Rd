% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DownsampleMatrix.R
\name{generateSimulatedData}
\alias{generateSimulatedData}
\title{Generates a single simulated dataset, bootstrapping from the input counts
matrix.}
\usage{
generateSimulatedData(totalReads, cells, originalData, realLabels)
}
\arguments{
\item{totalReads}{Numeric. The total number of reads in the simulated
dataset, to be split between all simulated cells.}

\item{cells}{Numeric. The number of virtual cells to simulate.}

\item{originalData}{Matrix. The original raw readcount matrix. When used
within the Shiny app, this will be assay(SCEsetObject, "counts").}

\item{realLabels}{Factor. The condition labels for differential expression.
If only two factors present, will default to t-test. If multiple factors,
will default to ANOVA.}
}
\value{
A simulated counts matrix, the first row of which contains the 'true'
labels for each virtual cell.
}
\description{
Generates a single simulated dataset, bootstrapping from the input counts
matrix.
}
\examples{
data("mouseBrainSubsetSCE")
res <- generateSimulatedData(
         totalReads = 1000, cells=10,
         originalData = assay(mouseBrainSubsetSCE, "counts"),
         realLabels = colData(mouseBrainSubsetSCE)[, "level1class"])

}
