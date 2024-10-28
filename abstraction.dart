abstract class Shape {
  // Abstract method
  double getArea();
}

class Circle extends Shape {
  final double radius;

  Circle(this.radius);

  // Implementing the abstract method
  @override
  double getArea() {
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  final double width;
  final double height;

  Rectangle(this.width, this.height);

  // Implementing the abstract method
  @override
  double getArea() {
    return width * height;
  }
}

void main() {
  Shape circle = Circle(5);
  Shape rectangle = Rectangle(4, 6);

  print("Circle area: ${circle.getArea()}"); // Outputs: Circle area: 78.5
  print(
      "Rectangle area: ${rectangle.getArea()}"); // Outputs: Rectangle area: 24
}
