\name{norm.stat}
\alias{norm.stat}
\title{
Normal Scan Statistic
}
\description{
The normal scan statistic evaluates the statistic which compares the node attribute within
the subgraph with that outside the subgraph while the node attribute follows the normal distribution.

}
\usage{
norm.stat(obs, pop = 1, zloc)
}
\arguments{
  \item{obs}{
Numeric vector of observation values.
}
  \item{pop}{
Numeric vector of population values ; default = 1.
}
  \item{zloc}{
Numeric vector of selected nodes.
}
}
\details{
A network with interested attributes is denoted as \eqn{G=(V,E,X)}, 
where \eqn{X=(x_1,\ldots,x_{|V|})} follows a defined distribution. Suppose a subgraph, \eqn{Z}, is selected. 
\deqn{
        \lambda_A(Z)=n\ln (\sqrt{(\hat{\sigma}^2))}-n\ln (\sqrt{(2 \hat{\sigma}_z^2)}),
}
where \eqn{\hat{\sigma}^2=\sum_{i=1}^n(x_i-\bar{x})^2/n}, and 
\eqn{\hat{\sigma}_z^2=[\sum_{i \in Z}(x_i-\bar{x}_z)^2-\sum_{j \notin Z}(x_j-\bar{x}_x)^2]/n}, 
in which \eqn{n} is the number of nodes, and \eqn{\bar{x}_z=\sum_{i \in Z} x_i/n_z} and 
\eqn{\bar{x}_c=\sum_{j \notin Z} x_j/(n-n_z)}. 
It is equivalent to minimize the variance within the subgraph \eqn{Z}.
}
\value{
Three values will be returned. The first value is test statistic. 
The second is the estimated means which estimated outside the selected nodes. 
The third is the estimated means estimated within the selected nodes.
}
\references{
Kulldorff, M., Huang, L., & Konty, K. (2009). 
A scan statistic for continuous data based on the normal probability model. 
\emph{International journal of health geographics}, 8(1), 58.
}
\author{
Taichi Wang <taichi43@stat.sinica.edu.tw>
}
\examples{
norm.stat(obs=rnorm(100,10,1),zloc=1:5)
}
\keyword{ statistics }
