import '2_binary.dart';
import '1_gcd_lcm_primes.dart';
import '3_get_nums.dart';
import '4_how_many_map.dart';

void main() {
  print(gcd(245, 56));
  print(lcm(245, 56));
  print(primes(12407));
  print(toBinary(54));
  print(toDecimal('1010101001'));
  print(getNums('123 adfa 123 asdf 123123 asdf 4324 546 sdfg'));
  print(howMany(['1231','1231','1','1','1']));
}
