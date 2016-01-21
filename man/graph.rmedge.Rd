\name{graph.rmedge}
\alias{graph.rmedge}
\title{
Random Graph with Expected Edges
}
\description{
Generate random graph with expected edges.
}
\usage{
graph.rmedge(n, g, fix.edge = TRUE)
}
\arguments{
  \item{n}{
Integer value, the number of random graph.
}
  \item{g}{
An igraph object, a baseline graph for generating random graph.
}
  \item{fix.edge}{
When fix.edge = TRUE, the number of edges is fixed and equal to the number of edges in the original graph g.
When fix.edge = FALSE, the number of edges is randomly generated according to the connection probability of the original graph g.
}
}

\value{
A data list in which each component is an igraph object.
}
\author{
Taichi Wang <taichi43@stat.sinica.edu.tw>
}
\seealso{
\code{\link[igraph]{erdos.renyi.game}}
}
\examples{
library(igraph)
g = graph.ring(10)
graph.rmedge(n=1,g=g,fix.edge = TRUE)
graph.rmedge(n=1,g=g,fix.edge = FALSE)
}
\keyword{ graph sampling }