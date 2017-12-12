# SNscan

## Introduction 

This package is constructed for testing the clustering patterns of structure and attribute among a social network through the scan statistics. Most contents are related to the references mentioned below. Some data sets are presented to be examples in this package as well.

## Installation

To install the stable version from Cran, run this command:

```
install.packages("SNscan")
```

For up-to-date version, please install from github. Windows user will need to install RTools first.

```
devtools::install_github('TunChiehHsu/SNscan')
```

## Goal of SNscan

SNscan is constructed based on the approaches developed by the following two refereced papers (Wang and Phoa, 2016; Wang et al., 2015). These papers develop the community detection methods in social networks based on the scan statistics which are the popular approaches in detecting spatial clusters. Generally speaking, the methods are used to systematically detect both attribute and structure clusters in social networks.

## Getting Started

The following scripts show how to use SNscan to detect communities by the scan statistics.

The data for demonstration are the karate network which is a social network of friendships between 34 members of a karate club at a US university in the 1970 (Zachary, 1997).

There would be some warnings in the following functions due to the updated version of igraph. Don't worry about that since there is no influence on the testing results.

```
data(karate)

ks=network.scan(g=karate,radius=3,attribute=NULL,
	model="pois.stat",pattern="structure")	
mc.ks=network.mc.scan(n=9,g=karate,radius=3,attribute=NULL,
	model="pois.stat",pattern="structure")	
pv=mcpv.function(obs.stat=ks[,3],ms.stat=mc.ks[,3],direction=">=")

```

## Reference

Wang, T. C., & Phoa, F. K. H. (2016). A scanning method for detecting clustering pattern of both attribute and structure in social networks. Physica A: Statistical Mechanics and its Applications, 445, 295-309.
Wang, T. C., Phoa, F. K. H., & Hsu, T. C. (2015). Power-law distributions of attributes in community detection. Social Network Analysis and Mining, 5(1), 1-10.
Zachary,W.W. (1977). An information flow model for conflict and fission in small groups. Journal of anthropological research, 452–473.