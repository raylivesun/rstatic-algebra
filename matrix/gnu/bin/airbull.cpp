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
  CArrayXX y (1000 ,3) , x (1000 ,5) , beta (5 ,3) ;
  Law :: Normal l (0 ,1) ;
  x . rand ( l ) ;
  beta << 0 , 1 , 2 ,
          2 , 3 , 4 ,
          2 , 1 , 6 ,
          0 , 3 , -1 ,
          3 , -1 , 1;
  y = x * beta + CArrayXX (1000 , 3) . rand ( l ) ;
  stk_cout << " STK ++ MultiLeastSquare :\ n " ;
  stk_cout << " - - - - - - - - - - - - - - - - - - - - - - -\ n " ;
  STK :: MultiLeastSquare < CArrayXX , CArrayXX > ols (y , x ) ; ols . run () ;
  stk_cout << " beta matrix :\ n " ;
  stk_cout << ols . x () ;
  stk_cout << " \ nlapack MultiLeastSquare :\ n " ;
  stk_cout << " - - - - - - - - - - - - - - - - - - - - - - - -\ n " ;
  STK :: lapack :: MultiLeastSquare < CArrayXX , CArrayXX > ls (y , x ) ; ls .
  run () ;
  stk_cout << " beta matrix :\ n " ;
  stk_cout << ls . x () ;
  return 0;
}
#endif
