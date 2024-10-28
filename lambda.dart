//Lambda functions in Dart are a shorthand way to define functions without naming them.

void main() {
  print(addNumber(2, 3));
  print(addednumber(2, 4));
}

addednumber(a, b) => a + b;

int addNumber(int a, int b) {
  return a + b;
}
