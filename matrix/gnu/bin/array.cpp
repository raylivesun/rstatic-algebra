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
# include " STKpp . h "
using namespace STK ;
/* * @ingroup tutorial */
int main ( int argc , char ** argv )
{
  // create coovariance matrix and its Cholesky decompositio n
  CArraySquare < Real , 3 > s ; s << 2.0 , 0.8 , 0.36 ,
                                   0.8 , 2.0 , 0.8 ,
                                   0.36 ,0.8 , 1.0;
  Array2DLowerTriangular < Real > L ; Array2DDiagonal < Real > D ;
  cholesky (s , D , L ) ;
  // create correlated data set
  CArray < Real , 100 , 3 > a ;
  a = a . randGauss () * D . sqrt () * L . transpose () + 1;
  stk_cout << " True sigma =\ n " << s ;
  stk_cout << " Estimated sigma =\ n " << Stat :: covariance ( a ) ;
  return 0;
}
#endif