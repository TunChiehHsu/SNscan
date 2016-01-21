\name{usag}
\alias{usag}
\docType{data}
\title{
USA Poverty Data
}
\description{
The data were estimated by U.S. Census Bureau, 2007--2011 American Community Survey,
and were reported in \url{http://www.census.gov/hhes/www/poverty/}.
}
\usage{data(usag)}
\format{
The data are in the format of igraph object.
IGRAPH UN-- 49 109 -- 
+ attr: name (v/c), white.pop (v/n), black.pop (v/n), white.poverty (v/n), black.poverty (v/n), coor.x (v/n), coor.y (v/n)
}
\details{
The vertex attributes including 
name: US state names; white.pop: white people population size for each state; 
black.pop: black people population size for each state; 
white.poverty: number of white people under the poverty line for each state;
black.poverty: number of black people under the poverty line for each state; 
coor.x: longitudes of state centres; coor.y: latitudes of state centres.
}
\source{
\url{http://www.census.gov/hhes/www/poverty/}.
}
\examples{
data(usag)
}
\keyword{datasets}
