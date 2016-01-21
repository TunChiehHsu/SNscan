\name{group.graph}
\alias{group.graph}
\title{
Generate igraph Objects with Different Connection Characteristics.
}
\description{
Generate two groups of igraph object with different connection probabilities.
}
\usage{
group.graph(V, cv = NULL, p1, p2 = NULL)
}
\arguments{
  \item{V}{
The number of vertices.
}
  \item{cv}{
The assigned nodes with connection probability p2.
}
  \item{p1}{
The connection probability for group 1.
}
  \item{p2}{
The connection probability for group 2.
}
}
\details{
If there is only one group, it is equivalent to the Erdos and Renyi model.
}
\value{
An igraph object.
}
\author{
Taichi Wang <taichi43@stat.sinica.edu.tw>
}
\seealso{
\code{\link[igraph]{erdos.renyi.game}}
}
\examples{
group.graph(V=10, cv =1:3 , p1=1/10, p2 = 1/2)
}
\keyword{ graph sampling }