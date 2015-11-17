\name{par2obs}
\alias{par2obs}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Simulate binary images
}
\description{
The generated data \eqn{Y \sim Bernoulli(p)}, where the success probability \eqn{p} is determined by whether the location \eqn{X} is inside the boundary or not.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
par2obs(m, pi.in, pi.out, design, gamma.fun)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{m}{number of pixels at each direction. The total number of observations is \eqn{n = m^2}}
  \item{pi.in}{The success probability \code{p} if the location is inside the boundary}
  \item{pi.out}{The success probability \code{p} if the location is outside the boundary}
  \item{design}{Taking values: 'J' for deterministic designs or 'J' for jitteredly random design.}
  \item{gamma.fun}{The function to generate boundaries.}
%%     ~~Describe \code{x} here~~
}

\examples{
set.seed(2015)
# use ellipse boundary
gamma.fun = ellipse(a = 0.35, b = 0.25)
obs = par2obs(m = 100, pi.in = 0.5, pi.out = 0.2, design = 'J', gamma.fun)
# rotate a matrix
rotate <- function(x) t(apply(x, 2, rev))  # rotate closewise by 90 degrees
# rotate & image it - square (asp = 1)
image(rotate(obs$intensity), axes = FALSE, asp = 1, main = 'observation')
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
