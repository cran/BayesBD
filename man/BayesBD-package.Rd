\name{BayesBD-package}
\alias{BayesBD-package}
\alias{BayesBD}
\docType{package}
\title{
  Bayesian Boundary Detection in Images}
\description{
  This package estimates the boundaries in an image in a Bayesian framework. The method guarantees the geometric restrictions on the boundary (closedness and smoothness), adaptive to the smoothness level of the boundary, and is convenient for joint inferences. The method is applicable to images with binary noise, Gaussian noise or Poisson noise.
}
\details{
  \tabular{ll}{
    Package: \tab BayesBD \cr
    Type: \tab Package\cr
    Version: \tab 0.1\cr
    Date: \tab 2015-11-15\cr
    License: \tab GPL (>= 3) \cr
  }

}
\author{
  \tabular{ll}{
    Authors: \tab Meng Li \cr
    Maintainer: \tab Meng Li <xylimeng@gmail.com> \cr
  }

}

\references{
  Li, M. and Ghosal, S.(2015) "Bayesian Detection of Image Boundaries." \emph{arXiv preprint.} \url{http://arxiv.org/abs/1508.05847}
}

\examples{
set.seed(2015)
# ellipse boundary
gamma.fun = ellipse(a = 0.35, b = 0.25)
obs = par2obs(m = 100, pi.in = 0.5, pi.out = 0.2, design = 'J', gamma.fun)
\dontrun{
# it takes around 7min if runs 10000 iterations: saved in 'BayesEst.Rdata'
BayesEst = BayesBD.binary(obs, n.run = 10000, n.burn = 1000)
}
data(BayesEst)

# visualize the estimates
theta.plot = seq(from = 0, to = 2*pi, length.out = 200)
gamma.hat.theta = BayesEst$gamma.hat(theta.plot)

## plotting utilities
require(plotrix)
my.radial <- function(r, theta, ...){
  radial.plot(c(r[order(theta)]), c(theta[order(theta)]),
              rp.type = "p", show.grid.label = TRUE, radial.lim = c(0, 0.5),
              ...)
}
# rotate a matrix
rotate <- function(x) t(apply(x, 2, rev))  # rotate closewise by 90 degrees

par(mfrow = c(1, 2))
# rotate & image it - square (asp = 1)
image(rotate(obs$intensity), axes = FALSE, asp = 1, main = 'observation')
my.radial(gamma.fun(theta.plot), theta.plot, line.col = 1, lty = 2, lwd = 2,
          main = 'Estimated boundary vs. True', show.grid = FALSE)
my.radial(gamma.hat.theta, theta.plot, add = TRUE,
         line.col = 'red', lty = 2, lwd = 2, show.grid = FALSE)
}

