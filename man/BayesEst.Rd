\name{BayesEst}
\alias{data}
\alias{BayesEst}
\docType{data}
\title{Estimated boundary based on the simulated data
%%  ~~function to do ... ~~
}
\description{
It contains the estimated boundary function based on the simulated data.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
data(BayesEst)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{BayesEst}{Data set containing the estimated boundary functioin.
%%     ~~Describe \code{x} here~~
}
}
\details{
You can either run the code in the example of \code{\link{BayesBD.binary}} to obtain the estimates, or use \code{data(BayesEst)} to recall the estimates to save time.
%%  ~~ If necessary, more details than the description above ~~
}
\value{
\item{BayesEst}{Estimated boundary function.}
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\examples{
data(BayesEst)
gamma.hat = BayesEst$gamma.hat
gamma.hat(c(0, 1.5 * pi, 2 * pi))
}
%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{BayesBD.binary}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
