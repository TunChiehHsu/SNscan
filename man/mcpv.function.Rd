\name{mcpv.function}
\alias{mcpv.function}
\title{
Monte Carlo p-value
}
\description{
Compute the Monte Carlo p-value.
}
\usage{
mcpv.function(obs.stat, ms.stat, direction)
}
\arguments{
  \item{obs.stat}{
The observed testing statistics.
}
  \item{ms.stat}{
The Monte Carlo testing statistics.
}
  \item{direction}{
The comparative direction of observed testing statistics and the Monte Carlo testing statistics.
}
}
\value{
The p-values of observations will be returned.
}
\author{
Taichi Wang <taichi43@stat.sinica.edu.tw>
}
\seealso{
\code{\link{network.scan}}
}
\examples{
#Please refer to the page of network.scan.
}