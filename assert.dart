//In Dart, assert is a debugging tool used to check for conditions
//that should always be true in your code. When an assert statement fails
//(i.e., when the condition inside it evaluates to false),
//Dart throws an AssertionError and provides an optional message to help identify what went wrong.

void setAge(int age) {
  // Ensure age is non-negative
  assert(age >= 0, "Age cannot be negative");

  print("Age set to $age");
}

void main() {
  setAge(25); // Works fine
  setAge(-20); // Throws AssertionError: Age cannot be negative
}
