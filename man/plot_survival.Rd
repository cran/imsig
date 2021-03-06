% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_survival.R
\name{plot_survival}
\alias{plot_survival}
\title{Forest plot of survial analysis by ImSig}
\usage{
plot_survival(exp, cli, time = "time", status = "status", r = 0.6)
}
\arguments{
\item{exp}{Dataframe of transcriptomic data (natural scale) containing genes as rows and samples as columns. Note: Gene names should be set as row names and duplicates are not allowed. Missing values are not allowed within the expression matrix. Check example- head(example_data): \code{\link{example_data}}.}

\item{cli}{Clinical metadata containting the event data (dead or alive) and time to event data. Samples names should be in rownames and same as that in the expression file. Check head() of \code{\link{example_cli}} for an example clinical data.}

\item{time}{Column name of time-to-event parameter.}

\item{status}{Column name of event (dead or alive) parameter.}

\item{r}{Use a value between 0 and 1. Default is 0.6. This is a user defined correlation cut-off to perform feature selection (\code{\link{feature_select}}). Feature selection aids to enrich the prediction of relative abundance of immune cells by filtering off poorly correlated ImSig genes. To get an idea of what cut-off to use check the results of (\code{\link{gene_stat}}) and choose a cut-off that displays high median correlation and maintains a high proportion of genes after feature selection.}
}
\value{
Forest plot
}
\description{
Patients are split into two groups based on their immune cell abundance (median aundance value) and a regular survival analyis is carried out. Raw values can be obtained from \code{\link{imsig_survival}}.
}
\examples{
plot_survival (exp = example_data, r = 0.7, cli = example_cli, time = 'time', status= 'status')
}
\seealso{
\code{\link{feature_select}}, \code{\link{example_data}}, \code{\link{example_cli}}
}
