# Introduction to OOP in Dart

Dart is an **object-oriented language** with support for classes, objects, inheritance, polymorphism, abstraction, and encapsulation. This file introduces the core concepts of Object-Oriented Programming (OOP) in Dart and how they can be applied to write modular, maintainable, and reusable code.

---

## What is OOP?

**Object-Oriented Programming (OOP)** is a programming paradigm based on the concept of "objects," which are instances of classes. OOP helps organize code by grouping related properties and behaviors into units (objects).

---

## Key Principles of OOP in Dart

1. Class & Object

* **Class** is a blueprint or template.
* **Object** is an instance of a class.

```dart
class Animal {
  void speak() {
    print("The animal makes a sound");
  }
}

void main() {
  Animal cat = Animal();
  cat.speak();
}
```

2. Encapsulation

Encapsulation is the bundling of data (variables) and methods (functions) that operate on the data within one unit.

```dart
class BankAccount {
  double _balance = 0; // private

  void deposit(double amount) {
    if (amount > 0) _balance += amount;
  }

  double get balance => _balance;
}
```

3. Inheritance

Inheritance allows a class (child) to inherit fields and methods from another class (parent).

```dart
class Animal {
  void breathe() => print("Breathing");
}

class Dog extends Animal {
  void bark() => print("Barking");
}

void main() {
  Dog dog = Dog();
  dog.breathe();
  dog.bark();
}
```

4. Polymorphism

Polymorphism allows methods to behave differently based on the object that is calling them.

```dart
class Shape {
  void draw() => print("Drawing a shape");
}

class Circle extends Shape {
  @override
  void draw() => print("Drawing a circle");
}

void drawShape(Shape shape) {
  shape.draw();
}

void main() {
  drawShape(Shape());
  drawShape(Circle());
}
```

5. Abstraction

Abstraction means hiding internal details and showing only the functionality. Dart uses **abstract classes** to define abstract behavior.

```dart
abstract class Vehicle {
  void start();
}

class Car extends Vehicle {
  @override
  void start() => print("Car started");
}
```

---

## Benefits of OOP

* Modular code structure
* Easier to test, debug, and maintain
* Code reusability through inheritance
* Better data security through encapsulation

---

## Real-World Analogy

Imagine a **blueprint (class)** for a house: it defines the layout but isn't a real house yet. When you use the blueprint to build a **real house (object)**, that’s an instance. Multiple houses can be built using the same blueprint.

---

## Summary

* Dart supports full object-oriented programming.
* You can define classes and create objects.
* OOP in Dart includes core principles: **Encapsulation**, **Inheritance**, **Polymorphism**, and **Abstraction**.
* Understanding these concepts is essential for writing Flutter apps and structuring scalable Dart programs.

---
> 📚 This is part of the Dart OOP chapter.


