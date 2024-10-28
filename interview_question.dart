// void main(){
//   int number = 5;
//   int factorial = 1;

//   for (var i =2;i<=number;i++){
//     factorial = factorial *i;
//   }

//   print(factorial);
// }
//using recursion
// int calculateFactorial(int n) {
//   if (n == 0) {
//     return 1;
//   }

//   return n * calculateFactorial(n - 1);
// }

// void main() {
//   int number = 5;
//   int factorial = calculateFactorial(number);
//   print(factorial);
// }

// void main() {
//   int value = 7090909234;

//   if (value % 2 == 0) {
//     print('$value is even');
//   } else {
//     print('$value is odd');
//   }
// }

// Sum of 2 number using class

// int resultSum(int a, int b){
//   return a+b;
// }

// void main(){
//   int result  = resultSum(8,6);
//   print(result);
// }

//Constructre

// class Person {
//   String name;
//   int age=0;

//   Person(this.name, this.age); // Default constructor

//   Person.fromBirthYear(this.name, int birthYear) {
//     age = DateTime.now().year - birthYear;
//   } // Named constructor

//   void sayHello() {
//     print('Hello, my name is $name. and my age is $age');
//   }
// }

// void main() {
//   var person1 = Person('Alice', 25);
//   person1.sayHello();

//   var person2 = Person.fromBirthYear('Rahul', 1995); // Using the named constructor
//   person2.sayHello();
// }

// reverse number

// List<T> reverseList<T>(List<T> list) {
//   List<T> reversed = list.reversed.toList();
//   return reversed;
// }

// void main() {
//   List<int> numbers = [1, 2, 3, 4, 5];
//   List<int> reversedNumbers = reverseList(numbers);
//   print(reversedNumbers);
// }

// void greet({String? name, String message = 'Hello'}) {
//   print('$message, $name!');
// }

// void main() {
//   greet(name: 'Alice'); // Output: Hello, Alice!
//   greet(name: 'Bob', message: 'Hi'); // Output: Hi, Bob!
// }

// bool checkAllPositiveNumber(List<int> numers) {
//   bool checkedValue = false;

//   for (int num in numers) {
//     if (num < 0) {
//       checkedValue = false;
//       break;
//     } else {
//       checkedValue = true;
//     }
//   }
//   return checkedValue;
// }

// void main() {
//   List<int> listValue = [1, 2, 5, 5, 6, 6];
//   bool checkNumber = checkAllPositiveNumber(listValue);
//   print(checkNumber);
// }


// class Animal {
//   String name;

//   Animal(this.name);

//   void speak() {
//     print('Animal speaks');
//   }
// }

// class Dog extends Animal {
//  Dog(name):super(name);
  
  

//   @override
//   void speak() {
//     super.speak(); // Invoke the speak() method of the superclass
//     print('$name barks');
//   }
// }

// void main() {
//   var dog = Dog('Dog');
//   dog.speak();
// }


// merge 2 list
// List<T> mergeLists<T>(List<T> list1, List<T> list2) {
//   return [...list1, ...list2];
// }

// void main() {
//   List<int> list1 = [1, 2, 3];
//   List<int> list2 = [4, 5, 6,3];
//   List<int> mergedList = mergeLists(list1, list2);
//   print(mergedList);
// }

// use of assync and await
// Future<int> fetchData() async {
//   await Future.delayed(Duration(seconds: 2));
//   return 42;
// }

// void main() async {
//   print('Fetching data...');
//   int data = await fetchData();
//   print('Data fetched: $data');
// }

// int findMaxNumber(List<int> listValue){
  
//   if(listValue.isEmpty){
//     throw ArgumentError('Empty List');
//   }
  
//   int maxValue = listValue[0];
  
//   for(int number in listValue){
//     if(number>maxValue){
//       maxValue   = number;
//     }
    
//   }
  
//   return maxValue;
// }


// void main(){
//   List<int> number  = [1,2,4,45,67,4,234,234,234234,324234234,23,2342345];
//   int maxNumberFromList = findMaxNumber(number);
//   print(maxNumberFromList);
// }

// void main() {
// //   List<int> numbers = [3, 2, 1, 4, 5];
  
// //   numbers.sort((a, b) => a.compareTo(b));
// //   print(numbers);
  
//   List<int> numbers = [2,4,3,6,5];
//   numbers.sort((a,b)=>a.compareTo(b));
//   print(numbers);
// }



//  List<int> bubbleSort(List<int> numbers) {
//   int n = numbers.length;
//   for (int i = 0; i < n - 1; i++) {
//     for (int j = 0; j < n - i - 1; j++) {
//       if (numbers[j] > numbers[j + 1]) {
//         // Swap numbers[j] and numbers[j + 1]
//         int temp = numbers[j];
//         numbers[j] = numbers[j + 1];
//         numbers[j + 1] = temp;
//       }
//     }
//   }
//   return numbers;
// }

// void main() {
//   List<int> numbers = [64, 34, 25, 12, 22, 11, 90];
//   print("Unsorted: $numbers");
  
//   List<int> sortedNumbers = bubbleSort(numbers);
//   print("Sorted: $sortedNumbers");
// }



