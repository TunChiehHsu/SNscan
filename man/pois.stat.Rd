\name{pois.stat}
\alias{pois.stat}
\title{
The Poisson Scan Statistic
}
\description{
The Poisson scan statistic evaluates the statistic which compares the node attribute within the subgraph with that outside the subgraph while the node attribute follows the Poisson distribution.

}
\usage{
pois.stat(obs, pop, zloc)
}
\arguments{
  \item{obs}{
Numeric vector of observation values.
}
  \item{pop}{
Numeric vector of population values.
}
  \item{zloc}{
Numeric vector of selected nodes.
}
}
\details{
A network with interested attributes is denoted as \eqn{G=(V,E,X)}, 
where \eqn{X=(x_1,\ldots,x_{|V|})} follows a defined distribution. Suppose a subgraph, \eqn{Z}, is selected. 
\deqn{
    \lambda_A(Z)=n_z \ln\big(\frac{p_{11}}{p_0}\big)+(n_G-n_z) \ln\big(\frac{p_{10}}{p_0}\big),
}
where the estimated parameters are equivalent to those in the binomial distribution.
}
\value{
Three values will be returned. The first value is test statistic. 
The second is the estimated means which estimated outside the selected nodes. 
The third is estimated means estimated within the selected nodes.
}
\references{
Kulldorff, M. (1997). A spatial scan statistic. 
\emph{Communications in Statistics-Theory and methods}, 26(6), 1481--1496.
}
\author{
Taichi Wang <taichi43@stat.sinica.edu.tw>
}
\seealso{
\code{\link[SNscan]{binom.stat}} 
}
\examples{
pois.stat(obs=rpois(n=100, lambda=10),pop=rep(1,100),zloc=1:5)
}
\keyword{ statistics }

