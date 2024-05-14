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
  CSquareX a (5) ;
  a << 0 , 1 , 2 , 3 , 4 ,
       2 , 3 , 4 , 5 , 6 ,
       2 , 1 , 6 , 7 , 8 ,
       0 , 3 , -1 , 2 , 3 ,
       3 , -1 , 1 , 1 , 0;
  stk_cout << " STK ++ Eigen decomposition :\ n " ;
  stk_cout << " - - - - - - - - - - - - - - - - - - - - - - - - - -\ n " ;
  SymEigen < CSquareX > s ( a . upperSymmetrize () ) ; s . run () ;
  stk_cout << " D matrix :\ n " ;
  stk_cout << s . eigenValues () ;
  CSquareX QDQt = s . eigenVectors () * s . eigenValues () . diagonalize ()
    * s . eigenVectors () . transpose () ;
  stk_cout << " QDQ ^ T matrix :\ n " ;
  stk_cout << QDQt ;
  stk_cout << " \ nlapack Eigen decomposition :\ n " ;
  stk_cout << " - - - - - - - - - - - - - - - - - - - - - - - - - -\ n " ;
  lapack :: SymEigen < CSquareX > ls ( a ) ; ls . run () ;
  stk_cout << " D matrix :\ n " ;
  stk_cout << ls . eigenValues () ;
  QDQt = ls . eigenVectors () * ls . eigenValues () . diagonalize () * ls .
  eigenVectors () . transpose () ;
  stk_cout << " QDQ ^ T matrix :\ n " ;
  stk_cout << QDQt ;
  return 0;
}
#endif 