Set<int> getInts(String list) {
  var ints = <int>{};
  list.split(', ').forEach((element) {
    switch (element) {
      case 'zero' :
        ints.add(0);
        break;
      case 'one' :
        ints.add(1);
        break;
      case 'two' :
        ints.add(2);
        break;
      case 'three' :
        ints.add(3);
        break;
      case 'four' :
        ints.add(4);
        break;
      case 'five' :
        ints.add(5);
        break;
      case 'six' :
        ints.add(6);
        break;
      case 'seven' :
        ints.add(7);
        break;
      case 'eight' :
        ints.add(8);
        break;
      case 'nine' :
        ints.add(9);
        break;
      default:
    }
  });
  return ints;
}