Map<String, int> howMany(List<String> list) {
  var map = <String, int>{};
  for (var s in list) {
    if (!map.containsKey(s)) {
      map[s] = 1;
    } else {
      map[s] = (map[s]! + 1);
    }
  }
  return map;
}