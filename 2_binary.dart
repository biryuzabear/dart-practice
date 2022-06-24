String toBinary(int a){
  return a.toRadixString(2);
}

int toDecimal(String a){
  return int.parse(a,radix: 2);
}