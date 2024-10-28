// Stream<int> numberStream() async* {
//   for (int i = 1; i <= 5; i++) {
//     await Future.delayed(Duration(seconds: 1));
//     yield i;
//   }
// }

// void main() async {
//   await for (var number in numberStream()) {
//     print(number);
//   }
// }

Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2)); // Simulates a delay
  return 'Data loaded';
}

void main() async {
  print('Fetching data...');
  String data = await fetchData();
  print(data);
}
