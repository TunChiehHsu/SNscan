\name{rmulti.one}
\alias{rmulti.one}
\title{
Generate Random (0, 1) Multinomial Data 
}
\description{
Generate random multinomial data in which all value no more than 1.
}
\usage{
rmulti.one(size, p)
}
\arguments{
  \item{size}{
Integer, the number of random samples from the multinomial distribution.
}
  \item{p}{
Numeric vector, probability vector for all categories (the sum of p should be 1).
}
}
\value{
Random (0,1) vector
}
\author{
Taichi Wang <taichi43@stat.sinica.edu.tw>
}
\seealso{
\code{\link[stats]{rmultinom}}
}
\examples{
rmulti.one(size=5, p=rep(1/10,10))
}