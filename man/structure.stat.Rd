\name{structure.stat}
\alias{structure.stat}
\title{
The Structure Scan Statistic
}
\description{
The structure scan statistic evaluate the statistic which compare the log likelihood within the subgraph with that outside the subgraph when the distribution of the graph follows Poisson random graph.

}
\usage{
structure.stat(g, subnodes)
}
\arguments{
  \item{g}{
The original graph.
}
  \item{subnodes}{
Numeric vector, the vertices of the original graph which will separate the original graph into two partitions.
}
}
\details{
Suppose subnodes are selected and form a subgraph \eqn{Z}.
The likelihood ratio statistic of a selected subgraph \eqn{Z} is
\deqn{
\lambda_S(Z)=\ln LR(Z) = \ln \frac{L_Z}{L_0}=
    |E_Z|\ln\big({\frac{|E_Z|}{\mu(Z)}}\big) + (|E_G|-|E_Z|) \ln\big({\frac{|E_G|-|E_Z|}{\mu(G)-\mu(Z)}}\big)
	\mbox{ when }\hat{\alpha}>\hat{\beta}, 
}
where \eqn{\hat{\alpha}=\frac{|E_Z|}{\mu(Z)}} and \eqn{\hat{\beta}=\frac{|E_G|-|E_Z|}{\mu(G)-\mu(Z)}},
in which 
\deqn{
\mu(G)=\frac{k_G^2}{4|E_G|}, \mu(Z)=\frac{k_Z^2}{4|E_G|}, \mbox{ and } \mu(Z^C)=\mu(G)-\mu(Z)
}
with \eqn{k_G=\sum_{i \in G} k_i} the total sum of degrees.
When \eqn{\hat{\alpha} \leq \hat{\beta}}, \eqn{\lambda_S(Z)=0}.
}
\value{
Three values will be returned. The first value is the test statistic. 
The rest of are estimated ratios which equal to observed edges divided by expected edges while
the former was estimated outside and the later was estimated within the selected subgraph.
}
\references{
Wang, B., Phillips, J. M., Schreiber, R., Wilkinson, D. M., Mishra, N., & Tarjan, R. (2008). 
Spatial Scan Statistics for Graph Clustering. In SDM (pp. 727--738).\cr
Wang, T. C., & Phoa, F. K. H. (2016). 
A scanning method for detecting clustering pattern of both attribute and structure in social networks. 
Physica A: Statistical Mechanics and its Applications, 445, 295-309.
}
\author{
Taichi Wang <taichi43@stat.sinica.edu.tw>
}
\seealso{
\code{\link[igraph]{igraph}} 
}
\examples{
library(igraph)
g <- graph.ring(10)
structure.stat(g=g, subnodes=c(1:3))
}
\keyword{ statistics }

