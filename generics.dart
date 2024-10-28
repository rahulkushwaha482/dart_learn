// Generics in Dart allow you to write reusable,
// type-safe code by enabling types to be specified as parameters.
// They make it possible to define classes, methods, and functions
// that work with a wide range of data types, while maintaining type safety.

class Box<T> {
  T? content;

  void put(T item) {
    content = item;
  }

  T? get() {
    return content;
  }
}

void main() {
  Box<int> intBox = Box<int>();
  intBox.put(42);
  print(intBox.get()); // Output: 42

  Box<String> stringBox = Box<String>();
  stringBox.put("Hello");
  print(stringBox.get()); // Output: Hello
}
