\name{eigen.fun}
\alias{eigen.fun}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Generate the Fourier series.
%%  ~~function to do ... ~~
}
\description{
\code{eigen.fun(n)} generate the first \code{n} Fourier series, which are \{\eqn{1/sqrt(2*pi), 1/sqrt(pi) * cos(x), 1/sqrt(pi) * sin(x), ...}\}. They are the eigen functions of the squared exponential kernel on the circle.
}
\usage{
eigen.fun(n)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{The number of eigen functions used in the estimation. It should be an odd number.
%%     ~~Describe \code{n} here~~
}
}

\references{
Li, M. and Ghosal, S.(2015) "Bayesian Detection of Image Boundaries." \emph{arXiv preprint.} \url{http://arxiv.org/abs/1508.05847}
%% ~put references to the literature/web site here ~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~


% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
