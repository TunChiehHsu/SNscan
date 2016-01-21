\name{multinom.stat}
\alias{multinom.stat}
\title{
Multinomial Scan Statistic
}
\description{
The multinomial scan statistic evaluates the statistic which compares the node attribute within
the subgraph with that outside the subgraph while the node attribute follows the multinomial distribution.

}
\usage{
multinom.stat(obs, pop = 1, zloc)
}
\arguments{
  \item{obs}{
Numeric vector of observation values.
}
  \item{pop}{
Numeric vector of population values (default is 1).
}
  \item{zloc}{
Numeric vector of selected nodes.
}
}
\details{
A network with interested attributes is denoted as \eqn{G=(V,E,X)}, 
where \eqn{X=(x_1,\ldots,x_{|V|})} follows a defined distribution. Suppose a subgraph, \eqn{Z}, is selected. 
Suppose there are \eqn{k} categories in an interested data, the multinomial test statistic is expressed as
\deqn{
            \lambda_A(Z)=\sum_k \{ n_{zk} \ln\big(\frac{n_{zk}}{n_{z}}\big) +
            (n_k-n_{zk}) \ln\big(\frac{n_k-n_{zk}}{n-n_{z}}\big) -n_k \ln \big(\frac{n_k}{n}\big) \},
}
where \eqn{n} is the total number of observations (nodes), 
\eqn{n_{z}} is total number of observations in \eqn{z}, 
\eqn{n_{zk}} is total number of \eqn{k} category in \eqn{z}, and \eqn{n_{k}} is total number of \eqn{k} category in all data.
}
\value{
Three values will be returned. The first value is test statistic. 
The second is the estimated means which estimated outside the selected nodes. 
The third is the estimated means estimated within the selected nodes.
}
\references{
Jung, I., Kulldorff, M., & Richard, O. J. (2010). 
A spatial scan statistic for multinomial data.
\emph{Statistics in medicine}, 29(18), 1910--1918.
}
\author{
Taichi Wang <taichi43@stat.sinica.edu.tw>
}

\examples{
multinom.stat(obs=rep(1:5,each=10),zloc=1:5)
}
\keyword{ statistics }