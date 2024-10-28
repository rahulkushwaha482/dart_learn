//in Flutter (and Dart), mixins are a way to reuse code across multiple classes
//without using inheritance directly. A mixin is a class containing a set of
//methods and properties that other classes can use, allowing you to "mix in"
//this functionality to any class without inheriting from it.

void main() {
  Airplane airplane = Airplane();
  airplane.sayHello();
  airplane.sayHellow();
  airplane.x;
  print(airplane.x);
}

mixin canFly {
  int x = 3;
  void sayHello() {
    print('I can fly');
  }
}

class Airplane with canFly {
  void sayHellow() {
    print('this is from this class own');
  }
}






// class Animal {}

// mixin WalkMixin on Animal {
//   void walk() {
//     print("I can walk!");
//   }
// }

// class Dog extends Animal with WalkMixin {
//   // Dog can use walk() because it extends Animal.
// }

// class Robot with WalkMixin {
//   // Error: Robot must extend Animal to use WalkMixin.
// }

