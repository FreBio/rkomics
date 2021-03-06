% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/msc.heatmap.R
\name{msc.heatmap}
\alias{msc.heatmap}
\title{Visualization of cluster matrices}
\usage{
msc.heatmap(clustmatrix, samples, groups)
}
\arguments{
\item{clustmatrix}{one cluster matrix generated with the msc.matrix function.}

\item{samples}{a vector containing the sample names. This can include all samples or it can be a subset.}

\item{groups}{a vector specifying to which groups (e.g. species) the samples belong to.}
}
\value{
a heatmap
}
\description{
The msc.heatmap function generates a heatmap of the input cluster matrix that summarizes the presence or absence  of Minicircle Cluster Sequences (MCSs) between groups of samples.
}
\examples{
data(exData)
data(matrices)

### run function 
msc.heatmap(matrices[["id80"]], groups = exData$species,
            samples = exData$samples )
   
### run function on every cluster matrix with subset of samples
### you will be asked to confirm
table(exData$species)
hybrid <- which(exData$species=="hybrid")
# msc.heatmap(matrices[["id97"]], groups = exData$species[hybrid], 
#             samples = exData$samples[hybrid])


}
