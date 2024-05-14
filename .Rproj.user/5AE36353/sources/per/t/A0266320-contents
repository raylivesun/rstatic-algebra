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
# include < STKpp .h >
using namespace STK ;
/* * @ingroup tutorial */
int main ( int argc , char ** argv )
{
  Array2DLowerTriangular < Real > a (5 ,5) ;
  a << 1 ,
       1 , 2 ,
       3 , 4 , 3 ,
       4 , 5 , 6 , 6 ,
       7 , 8 , 2 , 3 , 2;
  stk_cout << " Inverse lower - triangular matrix :\ n " ;
  stk_cout << " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -\ n " ;
  stk_cout << a * invert ( a ) ;
  stk_cout << " \ nInverse upper - triangular matrix :\ n " ;
  stk_cout << " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -\ n " ;
  stk_cout << a . transpose () * invert ( a . transpose () ) ;
  return 0;
}
#endif