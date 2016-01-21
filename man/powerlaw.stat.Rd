\name{powerlaw.stat}
\alias{powerlaw.stat}
\title{
Discrete Power-Law Scan Statistic
}
\description{
The discrete power-law scan statistic evaluates the statistic which compares the node attribute within the subgraph with that outside the subgraph while the node attribute follows the power-law distribution.
}
\usage{
powerlaw.stat(obs, pop = 1, zloc, xmin = 1, zetatable = NULL)
}
\arguments{
   \item{obs}{
Numeric vector of observation values.
}
  \item{pop}{
Numeric vector of population values; default = 1.
}
  \item{zloc}{
Numeric vector of selected nodes.
}
  \item{xmin}{
The minmum value of power law distribution; defaut = 1.
}
  \item{zetatable}{
When xmin=1, set up the data(zetatable).
}
}
\value{
Three values will be returned. The first value is test statistic. 
The second is the estimated means which estimated outside the selected nodes. 
The third is estimated means which estimated within the selected nodes.
}
\references{
Wang, T. C., Phoa, F. K. H., & Hsu, T. C. (2015). Power-law distributions of attributes in community detection. Social Network Analysis and Mining, 5(1), 1-10.
}
\author{
Taichi Wang <taichi43@stat.sinica.edu.tw>
}

\seealso{
\code{\link[poweRlaw]{rplcon}},\code{\link[SNscan]{zetatable}},\code{\link[SNscan]{conpowerlaw.stat}}
}
\examples{
library(poweRlaw)
data(zetatable)
x=rpldis(n=100, xmin=1, alpha=1.5) #function from poweRlaw
powerlaw.stat(obs=x,zloc=1:5,zetatable = zetatable)
}
\keyword{ statistics }