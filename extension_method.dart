//Extension methods add functionality to existing libraries. You might use extension methods
//without even knowing it. For example,
//when you use code completion in an IDE, it suggests extension methods alongside regular methods.

extension SquareNumber on int {
  int squareNumber() => this * this;
}

extension IntegerParse on String {
  // int parseInt() => int.parse(this);// this is extension method to parse integer values

  int parseInteger() {
    return int.parse(this);
  }

  double parseDouble() {
    return double.parse(this);
  }
}

extension on String {
  bool get isBlank => trim().isEmpty;
}

extension FancyNum on num {
  num plus(num other) => this + other;

  num times(num other) => this * other;
}

//You can't invoke extension methods on variables of type dynamic.We can invoke extension method on
//Static typeonly.
// For example,
//the following code results in a runtime exception:
//dynamic d = '2';
//print(d.parseInt());

extension MyFancyList<T> on List<T> {
  int get doubleLength => length * 2;
  List<T> operator -() => reversed.toList();
  List<List<T>> split(int at) => [sublist(0, at), sublist(at)];
}

void main() {
  int num = 5;
  String stringNumber = ' 5';
  List<int> list = [1, 3, 4, 2, 5, 6, 0, 9, 7];
  print(num.squareNumber());
  print(stringNumber.parseInteger());
  print(stringNumber.isBlank);
  print(list.doubleLength);
  print(list.reversed);
  print(list.split(5));
}
