// A constructor in Dart is a special method used to create
//and initialize objects of a class. It is called when an
//instance of a class is created and can be used to set the
// initial values of instance variables or perform any setup
// required for the object. Constructors have the same name
//as the class and do not have a return type.

class Person {
  String name;
  int age;

  // Default constructor
  Person(this.name, this.age);

  // Named constructor for creating a Person with a default age
  Person.withDefaultAge(this.name) : age = 18;

  // Method to display person information
  void displayInfo() {
    print('Name: $name, Age: $age');
  }
}

void main() {
  // Using the default constructor
  Person p1 = Person('Alice', 25);
  p1.displayInfo(); // Outputs: Name: Alice, Age: 25

  // Using the named constructor
  Person p2 = Person.withDefaultAge('Bob');
  p2.displayInfo(); // Outputs: Name: Bob, Age: 18
}
