% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gene_stat.R
\name{gene_stat}
\alias{gene_stat}
\title{General stastitics of ImSig analysis}
\usage{
gene_stat(exp, r = 0.6)
}
\arguments{
\item{exp}{Dataframe of transcriptomic data (natural scale) containing genes as rows and samples as columns. Note: Gene names should be set as row names and duplicates are not allowed. Missing values are not allowed within the expression matrix. Check example- head(example_data): \code{\link{example_data}}.}

\item{r}{Use a value between 0 and 1. Default is 0.6. This is a user defined correlation cut-off to perform feature selection (\code{\link{feature_select}}). Feature selection aids to enrich the prediction of relative abundance of immune cells by filtering off poorly correlated ImSig genes. To get an idea of what cut-off to use check the results of (\code{\link{gene_stat}}) and choose a cut-off that displays high median correlation and maintains a high proportion of genes after feature selection.}
}
\value{
Dataframe of general statistics of ImSig analysis.
}
\description{
[Total genes in ImSig]: The total number of genes in ImSig list. [No. of ImSig genes in user dataset]: The number of ImSig genes found in user's dataset. Like all signatures, ImSig works best when this overlap is high, preferably over 75%. [Median correlation of ImSig genes]: This is the number of remaining ImSig genes after \code{\link{feature_select}}. If this number drops drastically or if the median correlation is low, it may indicate the absence of the particular cell type in users dataset. [Median correlation of feature selected ImSig genes]: These values again can be used gauge the presence or absence of a cell type. As ImSig genes were designed to be co-expressed when the cell type is present, poor correlations may indicate absence of the cell type in the dataset. A network graph (\code{\link{plot_network }}) may be generated to visually confirm the observation.
}
\examples{
gene_stat (exp = example_data, r = 0.7)
}
\seealso{
\code{\link{feature_select}}
}
