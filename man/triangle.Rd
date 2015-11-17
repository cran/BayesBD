\name{triangle}
\alias{triangle}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Generate triangle boundaries
%%  ~~function to do ... ~~
}
\description{
Generate triangle boundaries with given height.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
triangle(h)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{h}{the height (altitude) of the regular triangle

%%     ~~Describe \code{x} here~~
}
}
\value{
\item{gamma}{A function for the boundary taking values from 0 to 2\eqn{\pi}}
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\examples{
gamma.fun = triangle(h = 0.5)
theta.plot = seq(from = 0, to = 2*pi, length.out = 200)
require(plotrix)
my.radial <- function(r, theta, ...){
  radial.plot(c(r[order(theta)]), c(theta[order(theta)]),
              rp.type = "p", show.grid.label = TRUE, radial.lim = c(0, 0.5),
              ...)
}
my.radial(gamma.fun(theta.plot), theta.plot, main = 'Triangle boundary',
          line.col = 1, lty = 2, lwd = 2, show.grid = FALSE)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
