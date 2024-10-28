void main() {
  // everything in dart is null
  var one = int.parse('1');
  assert(one == 1);

  var two = double.parse('1.22');
  assert(two == 1.22);

  String oneString = 1.toString();
  String piAsString = 3.1416.toStringAsFixed(2);
  String pi2 = 3.toStringAsPrecision(5);
  String pi3 = 3.toStringAsExponential(2);

  print(oneString);
  print(piAsString);
  print(pi2);
  print(pi3);

  const a = 'adasdasd';
  print(a);

  var num;
  print(num);
}
