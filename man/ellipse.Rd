\name{ellipse}
\alias{ellipse}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Generate ellipse boundaries
%%  ~~function to do ... ~~
}
\description{
Generate general ellipse boundaries with semidiameteres \code{a} and \code{b}, centered at \code{(r0, theta0)}, with the \code{a} axis rotated by \code{phi} relative to the polar axis.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
ellipse(a, b, r0 = 0, theta0 = 0, phi = 0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{a, b}{semidiameter parameters where \code{a} > \code{b}}
  \item{r0, theta0}{the polar form of the center of the ellipse}
  \item{phi}{the angle rotated by the major axis}
%%     ~~Describe \code{x} here~~
}

\examples{
gamma.fun = ellipse(a = 0.35, b = 0.25)
theta.plot = seq(from = 0, to = 2*pi, length.out = 200)
require(plotrix)
my.radial <- function(r, theta, ...){
  radial.plot(c(r[order(theta)]), c(theta[order(theta)]),
              rp.type = "p", show.grid.label = TRUE, radial.lim = c(0, 0.5),
              ...)
}
my.radial(gamma.fun(theta.plot), theta.plot, main = 'Ellipse boundary',
          line.col = 1, lty = 2, lwd = 2, show.grid = FALSE)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
