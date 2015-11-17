\name{uni.slice}
\alias{uni.slice}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Univariate slice sampling by Neal (2003).
%%  ~~function to do ... ~~
}
\description{
Performs a slice sampling update from an initial point to a new point that leaves invariant the distribution with the specified log density function. The code is modified based on http://www.cs.toronto.edu/~radford/ftp/slice-R-prog.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
uni.slice(x0, g, w = 1, m = Inf, lower = -Inf, upper = +Inf, gx0 = NULL)
}
\arguments{
  \item{x0}{Initial point
%%     ~~Describe \code{x0} here~~
}
  \item{g}{Function returning the log of the probability density up to an additive constant
%%     ~~Describe \code{g} here~~
}
  \item{w}{Size of the steps for creating interval (default 1)
%%     ~~Describe \code{w} here~~
}
  \item{m}{Limit on steps (default infinite)
%%     ~~Describe \code{m} here~~
}
  \item{lower}{Lower bound on support of the distribution (default -Inf)
%%     ~~Describe \code{lower} here~~
}
  \item{upper}{Upper bound on support of the distribution (default +Inf)
%%     ~~Describe \code{upper} here~~
}
  \item{gx0}{Value of g(x0), if known (default is not known)
%%     ~~Describe \code{gx0} here~~
}
}
\references{
Neal, Radford M. (2003). Slice sampling. \emph{Annals of statistics}, 705-741.

Original code: \url{http://www.cs.toronto.edu/~radford/ftp/slice-R-prog}

%% ~put references to the literature/web site here ~
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
