\name{binom.stat}
\alias{binom.stat}
\title{
Binomial Scan Statistic
}
\description{
The binomial scan statistic evaluate the statistic which compares the node attribute within
the subgraph with that outside the subgraph while the node attribute follows the binomial distribution.
}
\usage{
binom.stat(obs, pop, zloc)
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
\lambda_A(Z) =n_z \ln\big(\frac{p_{11}}{p_0}\big)+ (N_z-n_z) \ln\big(\frac{1-p_{11}}{1-p_0}\big)
+(n_G-n_z) \ln\big(\frac{p_{10}}{p_0}\big) +[(N_G-N_z)-(n_G-n_z)] \ln\big(\frac{1-p_{10}}{1-p_0}\big),
}
where \eqn{p_0=n_G/N_G}, \eqn{p_{10}=(n_G-n_z)/(N_G-N_z)}, 
and \eqn{p_{11}=n_z/N_z}, in which \eqn{N_G} and \eqn{n_G} 
are population sizes and number of successful cases respectively in the whole graph \eqn{G}, 
and \eqn{N_Z} and \eqn{n_Z} are similarly expressed in a selected subgraph \eqn{Z}, 
are estimated by the likelihood function.
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

\examples{
binom.stat(obs=rbinom(n=100, size=10000, prob=0.0001),pop=rep(10000,100),zloc=1:5)
}
\keyword{ statistics }
