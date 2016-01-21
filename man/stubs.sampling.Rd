\name{stubs.sampling}
\alias{stubs.sampling}
\title{
Generate Random Graph 
}
\description{
Generate random graph by randomly permuting the stubs of nodes
}
\usage{
stubs.sampling(s, g)
}
\arguments{
  \item{s}{
Number of samplings. 
}
  \item{g}{
An igraph object, a baseline graph for generating random graph.
}
}
\value{
A data matrix in which each row is the edge expression of graph.
}
\author{
Taichi Wang <taichi43@stat.sinica.edu.tw>
}
\seealso{
\code{\link[igraph]{graph}}
}
\examples{
library(igraph)
par(mfrow=c(2,1))
g <- graph.ring(10);plot(g)
Sg=stubs.sampling(s=10, g=g)
sg=graph(Sg[1,],n=V(g),directed=FALSE);plot(sg)
}
\keyword{ graph sampling }