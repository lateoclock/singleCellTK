% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/miscFunctions.R
\name{createSCE}
\alias{createSCE}
\title{Create a SCtkExperiment object}
\usage{
createSCE(assayFile = NULL, annotFile = NULL, featureFile = NULL,
  assayName = "counts", inputDataFrames = FALSE, createLogCounts = TRUE)
}
\arguments{
\item{assayFile}{The path to a text file that contains a header row of sample
names, and rows of raw counts per gene for those samples.}

\item{annotFile}{The path to a text file that contains columns of annotation
information for each sample in the assayFile. This file should have the same
number of rows as there are columns in the assayFile.}

\item{featureFile}{The path to a text file that contains columns of
annotation information for each gene in the count matrix. This file should
have the same genes in the same order as assayFile. This is optional.}

\item{assayName}{The name of the assay that you are uploading. The default
is "counts".}

\item{inputDataFrames}{If TRUE, assayFile and annotFile are read as data
frames instead of file paths. The default is FALSE.}

\item{createLogCounts}{If TRUE, create a log2(counts+1) normalized assay
and include it in the object. The default is TRUE}
}
\value{
a SCtkExperiment object
}
\description{
From a file of counts and a file of annotation information, create a
SCtkExperiment object.
}
\examples{
data("mouseBrainSubsetSCE")
counts_mat <- assay(mouseBrainSubsetSCE, "counts")
sample_annot <- colData(mouseBrainSubsetSCE)
row_annot <- rowData(mouseBrainSubsetSCE)
newSCE <- createSCE(assayFile = counts_mat, annotFile = sample_annot,
                    featureFile = row_annot, assayName = "counts",
                    inputDataFrames = TRUE, createLogCounts = TRUE)

}
