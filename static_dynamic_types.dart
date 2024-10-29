// In Dart, static typing and dynamic typing refer to how variable types are handled and checked in the language.

// Static Type
// A static type is a variable type that is known and checked at compile-time. This means that the type is enforced and cannot change after it is declared, leading to better performance and safer code.

// Syntax: You declare the type explicitly (e.g., int, String).
// Type Safety: The compiler checks that you’re using the type correctly, catching many errors before the code runs.
// Performance: Static types can be more optimized by the compiler.
// Example:

// dart
// Copy code
// int number = 5;        // Static type `int`
// String name = "Alice"; // Static type `String`
// If you try to assign a value of the wrong type, the compiler will throw an error:

// dart
// Copy code
// int age = "twenty"; // Error: A value of type 'String' can't be assigned to a variable of type 'int'.
// Dynamic Type
// A dynamic type is determined at runtime, meaning that you can assign any type of value to a variable declared as dynamic or var (if not given an initial value). Dart does not enforce type checks at compile-time for dynamic types, so any value can be assigned and used with that variable.

// Syntax: Use dynamic or var without initializing.
// Flexibility: You can reassign values of different types to the same variable.
// Type Safety: Errors due to type mismatches may only show up at runtime, increasing the risk of runtime errors.
// Example:

// dart
// Copy code
// dynamic variable = 10;
// print(variable);      // Output: 10

// variable = "Hello";   // Reassigning to a different type
// print(variable);      // Output: Hello
// Differences
// Aspect	Static Type	Dynamic Type
// When type is set	Compile-time	Runtime
// Type Enforcement	Yes	No
// Flexibility	Fixed after declaration	Can change
// Performance	Faster and more optimized	Slower, less optimized
// Syntax	Explicit type (int, String)	Use dynamic or var
// Error Checking	Compile-time errors	Runtime errors possible
