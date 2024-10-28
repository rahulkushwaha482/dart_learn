/*
Strongly Typed Language : The type of a variable is known at compile time .
for example : c++, java, swift

Dynamic Typed Language : The Type of a variable is known at run time.
For example : Python, Ruby, JavaScript, dart
*/

void main() {
  /* 
 int,
 String,
 double,
 bool,
 dynamic
 */

  int amount1 = 100;
  var amount2 = 200;
  print('amount 1= $amount1 and Amount 2 = $amount2');

  String name1 = 'Rahul';
  var name2 = 'Kushwaha';
  print('Name 1 is $name1 and name2 is $name2');

  double amount3 = 2220.004;
  var amount4 = 234234.34343;
  print(amount3 + amount4);

  dynamic name = 'Rahul';
  print('Name is $name');

  name = 20000.899;
  print(
      'Now the Type of name has been changed and value is alos changes \n the current value is $name');

  // dynamic x = 'hal';
  // x = 123;
  // print(x);
  // // Here var works as dynamic if it is initialize without initilization .
  // var a;
  // a = 'hal';
  // a = 123;
  // print(a);

  // dynamic v = 123; // v is of type int.
  // v = 456; // changing value of v from 123 to 456.
  // v = 'abc'; // changing type of v from int to String.

  // var va = 123; // v is of type int.
  // va = 456; // changing value of v from 123 to 456.
  // va = 'abc'; // ERROR: can't change type of v from int to String.

  // final vas = 123; // v is of type int.
  // vas = 456; // ERROR: can't change value of v from 123 to 456.
  // vas = 'abc';
}
