\name{coauthor}
\alias{coauthor}
\docType{data}
\title{
Co-Authorship Data
}
\description{
This co-authorship network data are extracted from geom.zip (see the source link) with 6158 vertices and 22577 edges. In this network, two authors were connected if they published at least one paper together and the node attribute represents the number of papers of each author.
}
\usage{data(coauthor)}
\format{
The data are in the format of igraph object.
IGRAPH U--- 6158 22577 -- 
+ attr: count (v/n)
}
\source{
http://vlado.fmf.uni-lj.si/pub/networks/data/collab/Geom.zip
}
\examples{
data(coauthor)
}
\keyword{datasets}