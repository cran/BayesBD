\name{BayesBD.binary}
\alias{BayesBD.binary}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Bayesian boundary detection for binary images
}
\description{
Estimate the boundaries in a binary image.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
BayesBD.binary(obs, ini.mean = 0.4, n.run = 10000, n.burn = 1000, J = 10,
              output.all = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{obs}{
     The noisy observation, which is a list with the following required elements:

     \code{intensity -} observed intensity at each pixel.

     \code{theta.obs, r.obs -} the location at which the intensity is observed, recorded using the polar coordinate.

     \code{center - } the reference point that (\code{theta.obs, r.obs}) is referred to, defaulted as \code{(0.5, 0.5)}.

     \code{x, y - } the \code{(x, y)} coordinates of the location.

}

  \item{ini.mean}{a constant to specify the initial mean functions in the Bayesian estimation, defaulted as 0.4. }
  \item{n.run}{number of MCMC iterations.}
  \item{n.burn}{number of burn-in in the MCMC sampler.}
  \item{J}{truncation number of the Gaussian process kernel. The number of eigenfunctions is \eqn{2J + 1}.}
  \item{output.all}{whether output all posterior samples or not. If \code{FALSE}, only the estimated boundary function will be outputted, which is the posterior mean.}
}
\value{
Posterior samples of all parameters.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
Li, M. and Ghosal, S.(2015) "Bayesian Detection of Image Boundaries." arXiv preprint arXiv:1508.05847.
}
\examples{
set.seed(2015)
# ellipse boundary
gamma.fun = ellipse(a = 0.35, b = 0.25)
obs = par2obs(m = 100, pi.in = 0.5, pi.out = 0.2, design = 'J', gamma.fun)
\dontrun{
# it takes around 7min if runs 10000 iterations: saved in 'BayesEst.RData'
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

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
