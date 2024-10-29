// import 'dart:isolate';

// void isolateFunction(String message) {
//   print('Isolate received: $message');
//   // Simulating heavy computation
//   for (int i = 0; i < 100000000000; i++) {
//     // Busy work
//   }
//   print('Isolate done.');
// }

// void main() async {
//   // Spawning a new isolate
//   Isolate.spawn(isolateFunction, 'Hello from main isolate!');

//   print('Main isolate is free to do other work.');
// }

// import 'dart:isolate';

// // Function to run in a separate isolate
// void isolateFunction(SendPort sendPort) {
//   // Send a message back to the main isolate
//   sendPort.send('Hello from the isolate!');
// }

// void main() async {
//   // Create a ReceivePort to get messages from the isolate
//   ReceivePort receivePort = ReceivePort();

//   // Spawn a new isolate and pass the send port of the ReceivePort
//   await Isolate.spawn(isolateFunction, receivePort.sendPort);

//   // Listen for messages from the isolate
//   receivePort.listen((message) {
//     print('Main isolate received: $message');
//     receivePort.close(); // Close the receive port when done
//   });
// }

// import 'dart:isolate';

// // Function to perform heavy computation
// void computeFactorial(SendPort sendPort) {
//   int result = 1;
//   for (int i = 1; i <= 5; i++) {
//     result *= i;
//   }
//   sendPort.send(result); // Send the result back
// }

// void main() async {
//   // Create a ReceivePort to receive data from the isolate
//   ReceivePort receivePort = ReceivePort();

//   // Spawn an isolate and pass the send port of the receive port
//   await Isolate.spawn(computeFactorial, receivePort.sendPort);

//   // Listen for the result from the isolate
//   receivePort.listen((result) {
//     print('Factorial result: $result'); // Output: Factorial result: 120
//     receivePort.close(); // Close the receive port when done
//   });
//   print('Hi am Rahul kushwaha. I am doing factorial using Isolates');
// }

// import 'dart:isolate';

// // Function to run in an isolate
// int computeSum(List<int> numbers) {
//   return numbers.reduce((a, b) => a + b);
// }

// void main() async {
//   // Run the function in a new isolate and wait for the result
//   int result = await Isolate.run(() => computeSum([1, 2, 3, 4, 5]));

//   print('Sum is: $result'); // Output: Sum is: 15
// }

// import 'dart:isolate';

// // Function to calculate the nth Fibonacci number
// int fibonacci(int n) {
//   if (n <= 1) return n;
//   return fibonacci(n - 1) + fibonacci(n - 2);
// }

// void computeFibonacci(SendPort sendPort) {
//   int result = fibonacci(40); // Heavy computation
//   sendPort.send(result);
// }

// void main() async {
//   ReceivePort receivePort = ReceivePort();

//   // Spawn a new isolate to compute the Fibonacci number
//   await Isolate.spawn(computeFibonacci, receivePort.sendPort);

//   // Listen for the result
//   receivePort.listen((message) {
//     print('Fibonacci result: $message'); // Output: Fibonacci result: 102334155
//     receivePort.close();
//   });

//   print('Main isolate is still responsive.');
// }

import 'dart:isolate';

// Isolate function to process a large list of numbers
void processData(SendPort sendPort) {
  List<int> data = List.generate(1000000, (i) => i);
  // print(data);

  // 1st way add and sum all elements in a list
  // int sum = data.reduce((a, b) => a + b);

  // int sum = 0;
  // 2nd way add and sum all elements in a list

  // data.forEach((element) {
  //   sum += element;
  // });
  // 3rd way add and sum all elements in a list

  int sum = 0;

  for (int element in data) {
    sum += element;
  }

  sendPort.send(sum);
}

void main() async {
  ReceivePort receivePort = ReceivePort();

  // Start an isolate to process data
  await Isolate.spawn(processData, receivePort.sendPort);

  // Get the result from the isolate
  receivePort.listen((sum) {
    print('Sum of large data: $sum'); // Output: Sum of large data: 499999500000
    receivePort.close();
  });
  print('main isolates is still working fine');
}
