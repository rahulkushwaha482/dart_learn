abstract class Shape {
  double calculateArea();

  void displayInfo() {
    print('This is Shape class');
  }
}

class Circle extends Shape {
  final double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.1416 * radius * radius;
  }
}

class Rectangle extends Shape {
  final double length;
  final double width;

  Rectangle(this.length, this.width);

  @override
  double calculateArea() => length * width;
}

void main() {
  Shape circle = Circle(2);
  Shape rectangle = Rectangle(4, 6);

  print(circle.calculateArea());
  print(rectangle.calculateArea());
}
