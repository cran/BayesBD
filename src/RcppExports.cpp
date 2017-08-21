#include <RcppArmadillo.h>
#include <Rcpp.h>


using namespace Rcpp;

// BayesBDbinary
Rcpp::List BayesBDbinary(SEXP & obs, SEXP & inimean, SEXP & nrun, SEXP & nburn, SEXP & J, SEXP & ordering, SEXP & slice, SEXP & outputAll);
RcppExport SEXP BayesBD_BayesBDbinary(SEXP obsSEXP, SEXP inimeanSEXP, SEXP nrunSEXP, SEXP nburnSEXP, SEXP JSEXP, SEXP orderingSEXP, SEXP sliceSEXP, SEXP outputAllSEXP){
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< SEXP & >::type obs(obsSEXP);
    Rcpp::traits::input_parameter< SEXP & >::type inimean(inimeanSEXP);
    Rcpp::traits::input_parameter< SEXP & >::type nrun(nrunSEXP);
    Rcpp::traits::input_parameter< SEXP & >::type nburn(nburnSEXP);
    Rcpp::traits::input_parameter< SEXP & >::type J(JSEXP);
    Rcpp::traits::input_parameter< SEXP & >::type ordering(orderingSEXP);
    Rcpp::traits::input_parameter< SEXP & >::type slice(sliceSEXP);
    Rcpp::traits::input_parameter< SEXP & >::type outputAll(outputAllSEXP);
    __result = Rcpp::wrap(BayesBDbinary(obs, inimean, nrun, nburn, J, ordering, slice, outputAll));
    return __result;
END_RCPP
}


// BayesBDnormal
Rcpp::List BayesBDnormal(SEXP & obs, SEXP & inimean, SEXP & nrun, SEXP & nburn, SEXP & J, SEXP & ordering_mu, SEXP & ordering_sigma, SEXP & slice, SEXP & outputAll);
RcppExport SEXP BayesBD_BayesBDnormal(SEXP obsSEXP, SEXP inimeanSEXP, SEXP nrunSEXP, SEXP nburnSEXP, SEXP JSEXP, SEXP ordering_muSEXP,SEXP ordering_sigmaSEXP , SEXP sliceSEXP, SEXP outputAllSEXP){
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< SEXP & >::type obs(obsSEXP);
    Rcpp::traits::input_parameter< SEXP & >::type inimean(inimeanSEXP);
    Rcpp::traits::input_parameter< SEXP & >::type nrun(nrunSEXP);
    Rcpp::traits::input_parameter< SEXP & >::type nburn(nburnSEXP);
    Rcpp::traits::input_parameter< SEXP & >::type J(JSEXP);
    Rcpp::traits::input_parameter< SEXP & >::type ordering_mu(ordering_muSEXP);
    Rcpp::traits::input_parameter< SEXP & >::type ordering_sigma(ordering_sigmaSEXP);
    Rcpp::traits::input_parameter< SEXP & >::type slice(sliceSEXP);
    Rcpp::traits::input_parameter< SEXP & >::type outputAll(outputAllSEXP);
    __result = Rcpp::wrap(BayesBDnormal(obs, inimean, nrun, nburn, J, ordering_mu, ordering_sigma, slice, outputAll));
    return __result;
END_RCPP
}

// eigenfun
double eigenfun(SEXP & n, SEXP & x);
RcppExport SEXP BayesBD_eigenfun(SEXP nSEXP, SEXP xSEXP){
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< SEXP & >::type n(nSEXP);
    Rcpp::traits::input_parameter< SEXP & >::type x(xSEXP);
    __result = Rcpp::wrap(eigenfun(n,x));
    return __result;
END_RCPP
}

// unisliceL
Rcpp::List unisliceL(SEXP & x0, SEXP & gx0, SEXP & i_J, SEXP & tauini, SEXP & anini, SEXP & alphalambda, SEXP & betalambda, SEXP & lambdaini);
RcppExport SEXP BayesBD_unisliceL(SEXP x0SEXP, SEXP gx0SEXP, SEXP i_JSEXP, SEXP tauiniSEXP, SEXP aniniSEXP, SEXP alphalambdaSEXP, SEXP betalambdaSEXP, SEXP lambdainiSEXP){
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< SEXP & >::type x0(x0SEXP);
    Rcpp::traits::input_parameter< SEXP & >::type gx0(gx0SEXP);
    Rcpp::traits::input_parameter< SEXP & >::type i_J(i_JSEXP);
    Rcpp::traits::input_parameter< SEXP & >::type tauini(tauiniSEXP);
    Rcpp::traits::input_parameter< SEXP & >::type anini(aniniSEXP);
    Rcpp::traits::input_parameter< SEXP & >::type alphalambda(alphalambdaSEXP);
    Rcpp::traits::input_parameter< SEXP & >::type betalambda(betalambdaSEXP);
    Rcpp::traits::input_parameter< SEXP & >::type lambdaini(lambdainiSEXP);
    __result = Rcpp::wrap(unisliceL(x0, gx0, i_J, tauini, anini, alphalambda, betalambda, lambdaini));
    return __result;
END_RCPP
}

