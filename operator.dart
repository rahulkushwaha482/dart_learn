void main() {
  Object name = 'Bob';
  print(name);

  int num = 10 + 20;
  print(num);
  num = num % 5;
  print(num);
  // relational operator ==, !=, >=, <=
  if (num >= 0) {
    print('value of num = $num');
  }

  num = 100;
  num *= 2; // num = num * 2;

  print(num);

  ++num;
  num++;
  num += 1;
  num -= 1;
  print(num);

  // logical and && and logical or || operator

  if (num > 200 && num < 204) {
    print('working');
  }

  if (num != 300) {
    print('This is also working');
  }

  /// Null aware operator
  /// (?.), (??) , (??=)
  ///
  var n = Num();
  int number;

  //if (n != null) {
  number = n.num;
  //}
  print(number);

  var pp;
  number = pp?.num ?? 10;
  print(number);

  var ss;
  print(ss ??= 100);

  // Ternary operator  condition ?data:data

  int x = 11;
  var y = x % 2 == 0 ? 'Even' : 'Odd';
  print(y);

  // type test operator

  var sd = 2323;
  if (sd is int) {
    print('This is integer value');
  }

  //Conditional Statemenet
  int numberNew = 100;
  if (numberNew % 2 == 0) {
  } else if (numberNew >= 90) {}

  // Swith Statemenet

  int p = 0;
  switch (p) {
    case 0:
      print('Eve n');
      break;
    case 1:
      print('Odd');
    default:
      print('I dont know');
  }
}

class Num {
  int num = 10;
}
