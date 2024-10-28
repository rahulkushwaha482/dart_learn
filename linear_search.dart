// int linearSearch(List<int> list, int target) {
//   for (int i = 0; i < list.length; i++) {
//     if (list[i] == target) {
//       return i; // Returns the index if the target is found
//     }
//   }
//   return -1; // Returns -1 if the target is not found
// }

// void main() {
//   List<int> numbers = [5, 3, 8, 4, 2];
//   int target = 0;

//   int result = linearSearch(numbers, target);

//   if (result != -1) {
//     print("Element found at index $result");
//   } else {
//     print("Element not found in the list");
//   }
// }

// This is generics
int linearSearch<T>(List<T> list, T target) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == target) {
      return i; // Returns the index if the target is found
    }
  }
  return -1; // Returns -1 if the target is not found
}

void main() {
  // Integer List
  List<int> intList = [10, 20, 30, 40, 50];
  int intTarget = 10;
  int intResult = linearSearch(intList, intTarget);
  print(intResult != -1
      ? "Integer found at index $intResult"
      : "Integer not found");

  // String List
  List<String> stringList = ["apple", "banana", "cherry", "date"];
  String stringTarget = "cherry";
  int stringResult = linearSearch(stringList, stringTarget);
  print(stringResult != -1
      ? "String found at index $stringResult"
      : "String not found");
}
