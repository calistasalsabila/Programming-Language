# 🐋 Dart Abstract Class

In Dart, an **abstract class** is a class that **cannot be instantiated** directly and is typically used as a **base class** for other classes. It defines a blueprint for other classes by providing **abstract methods** (methods without implementation) and/or **concrete methods** (methods with implementation).

This allows you to define common interfaces and ensure that subclasses provide specific implementations.

---

## 📘 Table of Contents

1. [What is an Abstract Class?](#1-what-is-an-abstract-class)
2. [Declaring an Abstract Class](#2-declaring-an-abstract-class)
3. [Abstract Methods](#3-abstract-methods)
4. [Using Abstract Class as Blueprint](#4-using-abstract-class-as-blueprint)
5. [Mixing Abstract and Concrete Methods](#5-mixing-abstract-and-concrete-methods)
6. [Real-World Analogy](#6-real-world-analogy)
7. [Example](#7-example)
8. [Best Practices](#8-best-practices)

---

## 1. What is an Abstract Class?

An abstract class is declared using the `abstract` keyword. It is meant to be **inherited** and implemented by other classes.

* ❌ Cannot be instantiated directly
* ✅ Can contain abstract methods (no body)
* ✅ Can also contain regular methods (with body)

---

## 2. Declaring an Abstract Class

```dart
abstract class Animal {
  void makeSound(); // abstract method
}
```

You **cannot do this**:

```dart
final a = Animal(); // ❌ Error: Cannot instantiate abstract class
```

---

## 3. Abstract Methods

Abstract methods **do not have a body** (i.e., no curly braces `{}`) and must be **overridden** by any concrete subclass.

```dart
abstract class Shape {
  double getArea();
}

class Circle extends Shape {
  final double radius;

  Circle(this.radius);

  @override
  double getArea() => 3.14 * radius * radius;
}
```

---

## 4. Using Abstract Class as Blueprint

Abstract classes are used when you want all subclasses to **follow a contract**, but allow them to **implement the details differently**.

```dart
abstract class Vehicle {
  void start();
  void stop();
}

class Car extends Vehicle {
  @override
  void start() => print("Car starting...");

  @override
  void stop() => print("Car stopping...");
}
```

---

## 5. Mixing Abstract and Concrete Methods

You can define regular methods inside abstract classes, which allows shared logic across subclasses.

```dart
abstract class Printer {
  void printDocument(); // abstract

  void connect() {     // concrete
    print("Connecting to printer...");
  }
}

class LaserPrinter extends Printer {
  @override
  void printDocument() => print("Laser printing document...");
}
```

---

## 6. Real-World Analogy

Think of an abstract class like a **blueprint**:

* A blueprint of a house defines how a house *should* be built (abstract methods).
* Different construction companies can build it in different ways (subclasses).
* You can't live inside a blueprint itself (can’t instantiate abstract class).

---

## 7. Example

```dart
abstract class Person {
  void introduce();
}

class Student extends Person {
  final String name;

  Student(this.name);

  @override
  void introduce() {
    print("Hi, I'm $name, a student.");
  }
}

void main() {
  // final p = Person();       // ❌ Error
  final s = Student("Dokja");  // ✅ OK
  s.introduce();
}
```

### Output:

```
Hi, I'm Dokja, a student.
```

---

## 8. Best Practices

* ✅ Use abstract classes to define interfaces with optional shared logic
* ✅ Mark the class `abstract` when it includes abstract methods
* ❌ Do not try to instantiate abstract classes
* ✅ Use `@override` annotation to make code clearer
* ⚠️ Don’t confuse `abstract class` with `interface` (Dart has no keyword `interface` — use abstract class or class)

---

## 🔚 Conclusion

Abstract classes are powerful for creating consistent APIs across multiple implementations. In Dart, they enforce a contract that all subclasses must follow, promoting organized and scalable code design.

Mastering abstract classes is essential in writing flexible, reusable, and clean object-oriented Dart code. 🐋
