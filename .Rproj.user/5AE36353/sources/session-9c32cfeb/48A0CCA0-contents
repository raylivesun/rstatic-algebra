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
int main ( int argc , char ** argv )
{
  CArray < Real , 5 , 8 > A ;
  CArrayPoint < Real , 8 > mu , std , mean ;
  Law :: Normal law (1 ,2) ;
  A . rand ( law ) ;
  stk_cout << " mean ( A ) =\ n " << ( mu = Stat :: mean ( A ) ) ;
  stk_cout << " variance ( A ) =\ n "
           << Stat :: va ria nc eW ith Fi xe dMe an (A , mu , false ) <<" \ n " ;
  // standardize using empirical mean and standard deviation ( std
  is computed during )
  Stat :: standardize (A , mu , std ) ;
  stk_cout << " mean ( A ) =\ n " << ( mean = Stat :: mean ( A ) ) ;
  stk_cout << " variance ( A ) =\ n "
           << Stat :: va ria nc eW ith Fi xe dMe an (A , mean , false ) <<" \ n " ;
  // undo standardization
  Stat :: unstandardize (A , mu , std ) ;
  stk_cout << " mean ( A ) =\ n " << ( mean = Stat :: mean ( A ) ) ;
  stk_cout << " variance ( A ) =\ n "
           << Stat :: va ria nc eW ith Fi xe dMe an (A , mean , false ) ;
  return 0;
}
#endif 