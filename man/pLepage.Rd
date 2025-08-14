\name{pLepage}
\alias{pLepage}
\title{
Lepage
}
\description{
  Function to compute the P-value for the observed Lepage (1971)
  \eqn{T} statistic,
  \eqn{\Pr(T \ge t)}{T >= t}.
}
\usage{
pLepage(x, y=NA, g=NA, method=NA, n.mc=10000)
}
\arguments{
  \item{x}{
    Either a list or a vector containing either all or the first group
    of data.  If x is a list, its first component is taken as x and the
    second component as y.
  }
  \item{y}{
    If x contains the first group of data, y contains the second group
    of data. Otherwise, not used.
  }
  \item{g}{
    If x contains a vector of all of the data, g is a vector of 1's and
    2's corresponding to group labels. Otherwise, not used.
  }
  \item{method}{
    Either "Exact", "Monte Carlo" or "Asymptotic", indicating the
    desired distribution. When method=NA, "Exact" will be used if the
    number of permutations is 10,000 or less. Otherwise, "Monte Carlo"
    will be used.
  }
  \item{n.mc}{
    If method="Monte Carlo", the number of Monte Carlo samples used to
    estimate the distribution. Otherwise, not used. 
  }
}
\details{
  The data entry is intended to be flexible, so that the two groups of
  data can be entered in any of three ways. For data a = 1,2 and y = 3,4
  all
  of the following are equivalent:
  \itemize{
    \item\code{pLepage(x = c(1,2), y = c(3,4))}
    \item\code{pLepage(x = list(c(1,2), c(3,4)))}
    \item\code{pLepage(x = c(1,2,3,4), g = c(1,1,2,2))}
  }
}
\value{
  A list of class "NSM3Ch5p" class including (among other)
  the following components:
  \item{m}{
    number of observations in the first data group (x)
  }
  \item{n}{
    number of observations in the second data group (y)
  }
  \item{obs.stat}{
    the observed \eqn{T} statistic
  }
  \item{p.val}{
    upper tail P-value
    \eqn{\Pr(T \ge t)}{T >= t} where \eqn{t} is the observed \eqn{T}
    statistic.
  }
}
\references{
  Yves Lepage, A combination of Wilcoxon's and Ansari-Bradley's
  statistics, Biometrika, Volume 58, Issue 1, April 1971, Pages 213-217,
  \doi{https://doi.org/10.1093/biomet/58.1.213}
}
\author{
  Grant Schneider
}
\examples{
## data as two arguments
pLepage(x = c(1,2), y = c(3,4))
## argument is a list, data in the two first components
pLepage(x = list(c(1,2), c(3,4)))
## All data is a single vector, group indicators given
pLepage(x = c(1,2,3,4), g = c(1,1,2,2))
## Hollander-Wolfe-Chicken Example 5.3 Platelet Counts of Newborn Infants
## using a list with components 'x' and 'y'.
platelet.counts <- list(
   x = c(120000, 124000, 215000, 90000, 67000, 95000, 
         190000, 180000, 135000, 399000),
   y = c(12000, 20000, 112000, 
         32000, 60000, 40000))
pLepage(platelet.counts)

## or equivalently, using two arguments 'x' and 'y'
pLepage(platelet.counts$x, platelet.counts$y)

}
\keyword{Lepage}
