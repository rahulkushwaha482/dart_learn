// Method overriding in Dart allows a subclass to provide a specific
//implementation of a method that is already defined in its superclass.
// This is a core principle of object-oriented programming, enabling polymorphism,
//where a subclass can define behavior that is specific to itself while still
// adhering to the interface of its superclass.

// Key Points about Method Overriding
// Same Signature: The overriding method in the subclass must have the
//same name, return type, and parameters as the method in the superclass.

// Use of @override Annotation: While not mandatory, it is a good practice
//to use the @override annotation to indicate that a method is intended
//to override a method in its superclass. This helps catch errors where
// the method signature might not match.

// Calling Superclass Method: Inside the overriding method, you can call
// the superclass's version of the method using super.methodName().

// Superclass
class Animal {
  void makeSound() {
    print("Animal makes a sound");
  }
}

// Subclass
class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog barks");
  }
}

// Another Subclass
class Cat extends Animal {
  @override
  void makeSound() {
    print("Cat meows");
  }
}

// Superclass
class Shape {
  // Method to calculate area
  double calculateArea() {
    return 0.0; // Default implementation
  }
}

// Subclass for Circle
class Circle extends Shape {
  final double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius; // Area of a circle
  }
}

// Subclass for Rectangle
class Rectangle extends Shape {
  final double width;
  final double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height; // Area of a rectangle
  }
}

void main() {
  Animal myAnimal = Animal();
  myAnimal.makeSound(); // Outputs: Animal makes a sound

  Animal myDog = Dog();
  myDog.makeSound(); // Outputs: Dog barks

  Animal myCat = Cat();
  myCat.makeSound(); // Outputs: Cat meows

  var sdf = Cat();
  sdf.makeSound();

  Shape shape = Circle(4);
  shape.calculateArea();
  print(shape.calculateArea());
}
