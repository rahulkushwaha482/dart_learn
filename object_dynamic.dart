void main() {
  Object value = "Hello";
  print(value.toString()); // Valid: `toString` is defined on Object

// Attempting to call String-specific methods without casting will cause an error
// print(value.length); // Error: The getter 'length' isn't defined for the class 'Object'.
// Casting to a specific type (e.g., String) allows access to that type’s members
  print((value as String).length); // Valid: 5

  // value = 43;
  // print(value.length()); //This will give you at compile time error

  dynamic valueNew = "Hello";
  print(valueNew.toString());
  print(valueNew.length); // Valid: Runtime will access `length`
  // without type checking

  valueNew = 42;
  print(valueNew.length); // Runtime error: `int` has no `length` property
  // This will give you run time  error

  //Type Safety: Object provides compile-time type safety.
  //
  //The Dart compiler will check for types at compile time,
  //so you can only call methods and access properties defined on Object
  //(e.g., toString(), hashCode) unless you cast the variable to a more specific type.
}
