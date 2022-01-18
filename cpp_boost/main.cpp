#include <boost/multiprecision/cpp_int.hpp>
#include <iostream>

int main()
{
   using namespace boost::multiprecision;
   int N=10000;
   int r=0;
   cpp_int m=0;
   for( int x=1 ; x<=N ; ++x ){
      cpp_int n = (pow(cpp_int(N-x),x)/7) % cpp_int(6074001001);
      if (m<n){
         r=x;
         m=n;
      }
   }
   std::cout << r << '\n';
   return 0;
}
