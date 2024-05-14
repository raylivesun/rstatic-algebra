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
  ArrayXX a (5 ,4) , usvt ;
  a << 0 , 1 , 2 , 3 ,
       2 , 3 , 4 , 5 ,
       2 , 1 , 6 , 7 ,
       0 , 3 , -1 , 2 ,
       3 , -1 , 1 , 1;
  stk_cout << _T ( " STK ++ Svd decomposition :\ n " ) ;
  stk_cout << _T ( " - - - - - - - - - - - - - - - - - - - - - - - -\ n " ) ;
  Svd < ArrayXX > s ( a ) ; s . run () ;
  stk_cout << _T ( " Singular values :\ n " ) ;
  stk_cout << s . D () ;
  stk_cout << _T ( " \ nUDV ^ T matrix :\ n " ) ;
  stk_cout << s . U () * s . D () * s . V () . transpose () ;
  stk_cout << _T ( " \ nlapack Svd decomposition :\ n " ) ;
  stk_cout << _T ( " - - - - - - - - - - - - - - - - - - - - - - - - - - -\ n " ) ;
  lapack :: Svd ls ( a ) ; ls . run () ;
  stk_cout << _T ( " Singular values :\ n " ) ;
  stk_cout << ls . D () . transpose () ;
  stk_cout << _T ( " \ nUDV ^ T matrix :\ n " ) ;
  stk_cout << ls . U () * ls . D () . diagonalize () * ls . V () . transpose () ;
  return 0;
}
#endif
