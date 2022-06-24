List<num> getNums(String string) {
  var list = <num>[];
  for (var s in string.split(" ")) {
    var x = num.tryParse(s);
    if (x != null) list.add(x);
  }
  return list;
}
