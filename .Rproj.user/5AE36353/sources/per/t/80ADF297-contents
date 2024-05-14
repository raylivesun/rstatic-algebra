#include <Rcpp.h>
using namespace Rcpp;

// This is a simple example of exporting a C++ function to R. You can
// source this function into an R session using the Rcpp::sourceCpp 
// function (or via the Source button on the editor toolbar). Learn
// more about Rcpp at:
//
//   http://www.rcpp.org/
//   http://adv-r.had.co.nz/Rcpp.html
//   http://gallery.rcpp.org/
//

// [[Rcpp::export]]
NumericVector timesTwo(NumericVector x) {
  return x * 2;
}


// You can include R code blocks in C++ files processed with sourceCpp
// (useful for testing and development). The R code will be automatically 
// run after the compilation.
//

/*** R
timesTwo(42)
*/

#if 0
class Cauchy : public IUnivLaw < Real >
{
public :
  Cauchy ( Real const & mu =0 , Real const & scale =1) ;
  virtual ~ Cauchy () {}
  Real const & mu () const ;
  Real const & scale () const ;
  void setMu ( Real const & mu ) ;
  void setScale ( Real const & scale ) ;
  virtual Real rand () const ; // generate a Cauchy random variate
  virtual Real pdf ( Real const & x ) const ; // probability distribution function ( pdf )
  virtual Real lpdf ( Real const & x ) const ; // log - pdf
  virtual Real cdf ( Real const & t ) const ; // cumulative distribution function ( cdf )
  virtual Real cdfc ( Real const & t ) const ; // complementary cdf
  virtual Real lcdf ( Real const & t ) const ; // log - cdf
  virtual Real lcdfc ( Real const & t ) const ; // log - complementary cdf
  virtual Real icdf ( Real const & p ) const ; // inverse cdf ( quantiles )
  static Real rand ( Real const & mu , Real const & scale ) ;
  static Real pdf ( Real const & x , Real const & mu , Real const & scale ) ;
  static Real lpdf ( Real const & x , Real const & mu , Real const & scale ) ;
  static Real cdf ( Real const & t , Real const & mu , Real const & scale ) ;
  static Real icdf ( Real const & p , Real const & mu , Real const & scale ) ;
protected :
  Real mu_ ;
  Real scale_ ;
}
#endif