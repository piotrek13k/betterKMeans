// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <RcppArmadillo.h>
#include <RcppEigen.h>
#include <Rcpp.h>

using namespace Rcpp;

// kMeans
Rcpp::List kMeans(arma::mat inputMatrix, int k, double epsilon, int maxIter);
RcppExport SEXP KM_kMeans(SEXP inputMatrixSEXP, SEXP kSEXP, SEXP epsilonSEXP, SEXP maxIterSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat >::type inputMatrix(inputMatrixSEXP);
    Rcpp::traits::input_parameter< int >::type k(kSEXP);
    Rcpp::traits::input_parameter< double >::type epsilon(epsilonSEXP);
    Rcpp::traits::input_parameter< int >::type maxIter(maxIterSEXP);
    rcpp_result_gen = Rcpp::wrap(kMeans(inputMatrix, k, epsilon, maxIter));
    return rcpp_result_gen;
END_RCPP
}
// kOMeans
Rcpp::List kOMeans(arma::mat inputMatrix, int k, double epsilon, int maxIter, arma::vec omega);
RcppExport SEXP KM_kOMeans(SEXP inputMatrixSEXP, SEXP kSEXP, SEXP epsilonSEXP, SEXP maxIterSEXP, SEXP omegaSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat >::type inputMatrix(inputMatrixSEXP);
    Rcpp::traits::input_parameter< int >::type k(kSEXP);
    Rcpp::traits::input_parameter< double >::type epsilon(epsilonSEXP);
    Rcpp::traits::input_parameter< int >::type maxIter(maxIterSEXP);
    Rcpp::traits::input_parameter< arma::vec >::type omega(omegaSEXP);
    rcpp_result_gen = Rcpp::wrap(kOMeans(inputMatrix, k, epsilon, maxIter, omega));
    return rcpp_result_gen;
END_RCPP
}
// betterKMeans
Rcpp::List betterKMeans(arma::mat inputMatrix, int k, double epsilon, int maxIter, arma::vec omega, std::string expression, arma::mat drawPoints);
RcppExport SEXP KM_betterKMeans(SEXP inputMatrixSEXP, SEXP kSEXP, SEXP epsilonSEXP, SEXP maxIterSEXP, SEXP omegaSEXP, SEXP expressionSEXP, SEXP drawPointsSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat >::type inputMatrix(inputMatrixSEXP);
    Rcpp::traits::input_parameter< int >::type k(kSEXP);
    Rcpp::traits::input_parameter< double >::type epsilon(epsilonSEXP);
    Rcpp::traits::input_parameter< int >::type maxIter(maxIterSEXP);
    Rcpp::traits::input_parameter< arma::vec >::type omega(omegaSEXP);
    Rcpp::traits::input_parameter< std::string >::type expression(expressionSEXP);
    Rcpp::traits::input_parameter< arma::mat >::type drawPoints(drawPointsSEXP);
    rcpp_result_gen = Rcpp::wrap(betterKMeans(inputMatrix, k, epsilon, maxIter, omega, expression, drawPoints));
    return rcpp_result_gen;
END_RCPP
}
