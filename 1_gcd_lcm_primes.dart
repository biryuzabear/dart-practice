 import 'dart:math';

int gcd(int a, int b) {
  int t;
  while (b != 0) {
    t = b;
    b = a % b;
    a = t;
  }
  return a;
}

int lcm (int a, int b){
  return (a*b)~/gcd(a, b);
}

 Set<int> primes(int a) {
   var primes = <int>{};
   for (int i = 2; i <= a; i++) {
     if (a % i == 0)
       for (int j = 2; j <= sqrt(i); j++) {
         if (i % j == 0) break;
         primes.add(i);
       }
   }
   return primes;
 }
