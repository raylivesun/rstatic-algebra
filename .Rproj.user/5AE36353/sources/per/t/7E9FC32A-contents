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
  Array2D < Real > a (5 ,4) ;
  a << 0 , 1 , 2 , 3 ,
       2 , 3 , 4 , 5 ,
       2 , 1 , 6 , 7 ,
       0 , 3 , -1 , 2 ,
       3 , -1 , 1 , 1;
  stk_cout << _T ( " STK ++ QR decomposition :\ n " ) ;
  stk_cout << _T ( " - - - - - - - - - - - - - - - - - - - - - - -\ n " ) ;
  Qr q ( a ) ; q . run () ;
  stk_cout << _T ( " R matrix :\ n " ) ;
  stk_cout << q . R () ;
  ArrayXX QR = q . R () ;
  a p p l y L e f t H o u s e h o l d e r A r r a y ( QR , q . Q () ) ;
  stk_cout << _T ( " QR matrix :\ n " ) ;
  stk_cout << QR ;
  stk_cout << _T ( " \ nlapack QR decomposition :\ n " ) ;
  stk_cout << _T ( " - - - - - - - - - - - - - - - - - - - - - - - - - -\ n " ) ;
  lapack :: Qr lq ( a ) ; lq . run () ;
  stk_cout << _T ( " R matrix :\ n " ) ;
  stk_cout << lq . R () ;
  QR = lq . R () ;
  a p p l y L e f t H o u s e h o l d e r A r r a y ( QR , lq . Q () ) ;
  stk_cout << _T ( " QR matrix :\ n " ) ;
  stk_cout << QR ;
  return 0;
}
#endif
