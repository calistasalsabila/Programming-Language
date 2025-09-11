# Dart: Class

In Dart, a **class** is a blueprint for creating objects. It defines the properties (data) and behaviors (functions or methods) that the objects created from the class can have.

---

## 1. Purpose

* Organize code into reusable and logical units
* Encapsulate data and behavior
* Support Object-Oriented Programming (OOP)

---

## 2. Syntax

```dart
class ClassName {
  // properties
  // constructors
  // methods
}
```

---

## 3. Example

```dart
class Person {
  String name = 'Dokja';
  int age = 25;

  void greet() {
    print('Hello, my name is $name and I am $age years old.');
  }
}

void main() {
  Person p = Person();
  p.greet();
}
```

*This example defines a `Person` class with two properties (`name` and `age`) and one method (`greet`). We create an object `p` from the class and call its method.*

---

## 4. Properties

Properties (fields or attributes) store the state of an object.

```dart
class Car {
  String brand = 'Honda';
  int year = 2020;
}
```

---

## 5. Methods

Methods define behaviors (functions) inside a class.

```dart
class Calculator {
  int add(int a, int b) {
    return a + b;
  }
}
```

---

## 6. Creating Objects

Objects are created using the `new` keyword (optional in modern Dart).

```dart
Person p = Person();
p.name = 'Jeha';
p.age = 30;
p.greet();
```

---

## 7. Tips

* Class names should start with an uppercase letter by convention.
* Use `this` keyword to refer to the current instance.
* Combine with constructor for initialization.

```dart
class Student {
  String name;
  int id;

  Student(this.name, this.id);

  void display() {
    print('Name: $name, ID: $id');
  }
}
```

---

## 8. Summary Table

| Element  | Description                       |
| -------- | --------------------------------- |
| `class`  | Defines a new class               |
| Property | Holds object state                |
| Method   | Defines behavior                  |
| Object   | Instance of a class               |
| `this`   | Refers to current object instance |

---
> 📚 This is part of the Dart OOP chapter.

