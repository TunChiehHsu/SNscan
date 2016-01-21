\name{network.mc.scan}
\alias{network.mc.scan}
\title{
Monte Carlo scan statistic in social network
}
\description{
Evaluate scan statistics based on Monte Carlo data.
}
\usage{
network.mc.scan(n, g, radius, attribute, model, pattern, 
	fix.edge= FALSE, max.prop = 0.5, xmin = NULL, zetatable =NULL)
}
\arguments{
  \item{n}{
The size of the generated Monte Carlo data.
}
  \item{g}{
An igraph object.
}
  \item{radius}{
The radius of scanning windows.
Default is 3.
}
  \item{attribute}{
The interested attribute which should be a data list including observations (obs) and population (pop).
}
  \item{model}{
The distribution of attribute which can be 
"norm.stat", "pois.stat", "binom.stat", and "multinom.stat". 
}
  \item{pattern}{
The testing pattern of the network
which can be "structure", "attribute", and "both".
} 
  \item{fix.edge}{
Logical term: TRUE for generating fixed number of edges; FALSE for random number of edges.
Default is FALSE.
}
\item{max.prop}{
Numeric value, the maximum proportion of selecting graph.
Default is 0.5.
}
\item{xmin}{
Numeric value, the minimum value only for powerlaw stat.
Default is 1.
}
\item{zetatable}{
Zatatable is applied when power-law distribution is used. Default is NULL.
}
}
\details{
All arguments should be exactly the same as the set applied in network.scan.
}
\value{
A matrix will be returned. 
Each meaning of the row is equal to to network.scan.
The test statistic in network.mc.scan is maximum in each Monte Carlo sample.
}
\author{
Taichi Wang <taichi43@stat.sinica.edu.tw>
}
\seealso{
\code{\link{network.scan}};\code{\link{graph.rmedge}}
}
\examples{
#Please refer to the page of network.scan.
}
\keyword{ scanning method }