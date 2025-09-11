# Dart: Methods

In Dart, **methods** are functions associated with an object or a class. They allow objects to perform actions, access or modify their state, and provide a structured way to organize functionality within classes.

---

## 1. Purpose

* To define behaviors that an object can perform.
* To encapsulate reusable logic inside a class.
* To interact with an object’s properties.

---

## 2. Syntax

```dart
class ClassName {
  // Method declaration
  returnType methodName(parameter1, parameter2, ...) {
    // method body
  }
}
```

### Example

```dart
class Calculator {
  int add(int a, int b) {
    return a + b;
  }

  void greet(String name) {
    print("Hello, $name");
  }
}

void main() {
  Calculator calc = Calculator();
  print(calc.add(10, 5)); // Output: 15
  calc.greet("Dokja");     // Output: Hello, Dokja
}
```

---

## 3. Notes

* **Return type**: Can be any type like `int`, `String`, `void`, etc.
* **Method overloading** is not supported in Dart. Instead, use optional or named parameters.
* **Private methods** start with an underscore `_methodName`, and can only be accessed within the same library.

---

## 4. Types of Methods

### 1. Instance Method

* Operates on an instance of the class and can access instance variables.

```dart
class Person {
  String name;
  Person(this.name);

  void introduce() {
    print("Hi, I'm $name");
  }
}
```

### 2. Static Method

* Belongs to the class rather than instances. Can't access instance variables directly.

```dart
class MathHelper {
  static int square(int n) {
    return n * n;
  }
}

void main() {
  print(MathHelper.square(4)); // Output: 16
}
```

### 3. Getter and Setter Methods

* Special methods to access and modify private fields.

```dart
class BankAccount {
  double _balance = 0;

  double get balance => _balance;
  set balance(double amount) => _balance = amount;
}
```

---

## 5. Example: Named & Optional Parameters

```dart
class Greeting {
  void sayHello({String name = "Stranger"}) {
    print("Hello, $name");
  }
}

void main() {
  Greeting g = Greeting();
  g.sayHello();            // Output: Hello, Stranger
  g.sayHello(name: "Jeha"); // Output: Hello, Jeha
}
```

---

## 6. Summary

| Feature               | Description                       |
| --------------------- | --------------------------------- |
| Method                | Function defined inside a class   |
| Instance Method       | Requires object to access         |
| Static Method         | Accessed using class name         |
| Getter/Setter         | Special methods for encapsulation |
| Named/Optional Params | Flexible method calling           |

---
> 📚 This is part of the Dart OOP chapter.
