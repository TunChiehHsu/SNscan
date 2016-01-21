\name{network.scan}
\alias{network.scan}
\title{
Network Scan Statistic
}
\description{
Evaluate scan statistics in social network.
}
\usage{
network.scan(g, radius, attribute, model, pattern, 
	max.prop = 0.5, xmin = NULL, zetatable = NULL) 
}
\arguments{
  \item{g}{
An igraph object.
}
  \item{radius}{
The radius of scanning windows.
Default is 3.
}
  \item{attribute}{
The interested attribute which should be a data list including observations (obs) and populations (pop).
}
  \item{model}{
The distribution of attribute which can be 
"norm.stat", "pois.stat", "binom.stat", "multinom.stat", and "powerlaw.stat". 
}
  \item{pattern}{
The testing pattern of the network
which can be "structure", "attribute", and "both".
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

\value{
A matrix will be returned.
The values include C: the center of a scanning window, 
D: The radius of a scanning window. test.L: the test statistic,
S0: Indicating the testing information 
within the selected nodes. Sz: Indicating the testing information 
outside the nodes.
The final column, z.length, is the number of the nodes in the cluster with corresponding center and radius.
}

\author{
Taichi Wang <taichi43@stat.sinica.edu.tw>
}
\seealso{
\code{\link{network.mc.scan}}
}
\examples{
data(karate)

ks=network.scan(g=karate,radius=3,attribute=NULL,
	model="pois.stat",pattern="structure")	
mc.ks=network.mc.scan(n=9,g=karate,radius=3,attribute=NULL,
	model="pois.stat",pattern="structure")	
pv=mcpv.function(obs.stat=ks[,3],ms.stat=mc.ks[,3],direction=">=")
}
\keyword{ scanning method }