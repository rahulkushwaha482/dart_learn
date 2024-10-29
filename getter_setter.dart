// In Dart, getters and setters are special methods that allow you to control
//access to an object's properties. They enable you to define custom behavior
//for reading and writing properties while maintaining encapsulation. Here's how they work:

// Getters
// A getter is a method that allows you to retrieve the value of a property.
//Getters are defined using the get keyword.

// Setters
// A setter is a method that allows you to set the value of a property.
//Setters are defined using the set keyword.

//Encapsulation is a technique for hiding property or method while still allowing access
// to it within the scope of the function. Unlike other object-oriented programming
//languages, Dart encapsulates data at the library level rather than the class level.

class Person {
  String _name;
  int _age;

  Person(this._name, this._age);

  String get name => _name;

  set name(String value) {
    if (value.isNotEmpty) {
      _name = value;
    } else {
      throw Exception('Name cannot be empty');
    }
  }

  int get age => _age;

  set age(int number) {
    if (number >= 0) {
      _age = number;
    } else {
      throw Exception('Age cannot be neative');
    }
  }

  @override
  String toString() {
    return 'Person(name: $_name, age: $_age)';
  }
}

class Bank {
  double _balance = 0.0;
  Bank(this._balance);
  double get bankBalance => _balance;

  void depositAmount(double amount) {
    if (amount >= 0) {
      _balance = _balance + amount;
    } else {
      throw Exception('Amount must be positive');
    }
  }

  void withdrawAmount(double amount) {
    if (amount >= 0 && amount <= bankBalance) {
      _balance = _balance - amount;
    } else {
      throw Exception('Amount must be positive and less than Bank Balance');
    }
  }

  @override
  String toString() => 'BankAccount(balance: $_balance)';
}

class Temprature {
  double _celcius;
  Temprature(this._celcius);

  double get celcius => _celcius;

  set celcius(double _temp) {
    _celcius = _temp;
  }

  double get fahrenheit => _celcius * 9 / 5 + 32;

  set fahrenheit(double value) {
    _celcius = (value - 32) * 5 / 9;
  }

  @override
  String toString() => '$_celcius °C = $fahrenheit °F';
}

void main() {
  var person = Person('Rahul', 29);
  print(person.name);
  print(person.age);
  person.name = 'Kushwaha';
  person.age = 20;
  print(person);
  try {
    person.age = -29;
    person.name = '';
  } catch (e) {
    print(e.toString());
  }

  var bank = Bank(2000);
  bank.bankBalance;
  bank.depositAmount(500);
  print(bank.bankBalance);
  print(bank);
  var temp = Temprature(90);
  print(temp.celcius);
  print(temp.celcius = 30);
  print(temp);
}
