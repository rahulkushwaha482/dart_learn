// Dart does not support method overloading in the traditional sense, as seen in languages like Java or C#. In Dart, you cannot have multiple methods with the same name but different parameter types or counts within the same class. However, there are alternative approaches to achieve similar functionality.

// Alternatives to Method Overloading in Dart
// Optional Parameters: You can use optional parameters (either positional or named)
// to achieve similar behavior. This allows you to define a single method that can accept a variable number of parameters.

// Example with Optional Positional Parameters:

class Calculator {
  int add(int a, [int b = 0]) {
    return a + b;
  }
}

void main() {
  var calc = Calculator();
  print(calc.add(5)); // Outputs: 5
  print(calc.add(5, 10)); // Outputs: 15
}//
//Example with Named Parameters:


// class Calculator {
//   int add({required int a, int b = 0}) {
//     return a + b;
//   }
// }

// void main() {
//   var calc = Calculator();
//   print(calc.add(a: 5));          // Outputs: 5
//   print(calc.add(a: 5, b: 10));   // Outputs: 15
// }
//Using Different Method Names: You can create methods with different names that represent the same action but with different parameters.

// class Calculator {
//   int addTwoNumbers(int a, int b) {
//     return a + b;
//   }

//   int addThreeNumbers(int a, int b, int c) {
//     return a + b + c;
//   }
// }

// void main() {
//   var calc = Calculator();
//   print(calc.addTwoNumbers(5, 10));     // Outputs: 15
//   print(calc.addThreeNumbers(5, 10, 15)); // Outputs: 30
// }
// Using Variadic Functions: You can use a single method that takes
// a list of parameters (using the List type) to handle a variable number of arguments.

// Example:


// class Calculator {
//   int add(List<int> numbers) {
//     return numbers.reduce((value, element) => value + element);
//   }
// }

// void main() {
//   var calc = Calculator();
//   print(calc.add([5]));            // Outputs: 5
//   print(calc.add([5, 10]));        // Outputs: 15
//   print(calc.add([5, 10, 15]));    // Outputs: 30
// }
// Summary
// While Dart does not support method overloading directly, you can achieve 
// similar outcomes through optional parameters, different method names, 
// or variadic functions. These alternatives allow you to create flexible 
// methods that can handle different numbers and types of arguments effectively.