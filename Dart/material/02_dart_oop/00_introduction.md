# 🐋 Object-Oriented Programming (OOP) in Dart

Object-Oriented Programming (OOP) is a programming paradigm based on the concept of "objects", which can contain data in the form of fields (also known as attributes or properties) and code in the form of methods. Dart is an object-oriented language with classes and single inheritance.

---

## 📌 Key Concepts in Dart OOP

### 1. Classes and Objects

* **Class**: A blueprint for creating objects.
* **Object**: An instance of a class.

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

🎯 *This code creates a `Person` class with a method `greet()` and creates an object `p` from that class.*

---

### 2. Constructors

Constructors are special methods used to initialize objects.

#### Default Constructor

```dart
class Car {
  String brand = '';

  Car() {
    brand = 'Toyota';
  }
}
```

#### Parameterized Constructor

```dart
class Car {
  String brand;

  Car(this.brand);
}

void main() {
  Car myCar = Car('Honda');
  print(myCar.brand); // Honda
}
```

#### Named Constructor

```dart
class Book {
  String title;

  Book.named(this.title);
}
```

---

### 3. Inheritance

Inheritance allows one class to acquire the properties and methods of another class.

```dart
class Animal {
  void sound() {
    print('Animal makes a sound');
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print('Dog barks');
  }
}

void main() {
  Dog dog = Dog();
  dog.sound(); // Dog barks
}
```

---

### 4. `super` Keyword

Used to call the parent class constructor or methods.

```dart
class Parent {
  Parent(String msg) {
    print('Parent: $msg');
  }
}

class Child extends Parent {
  Child(String msg) : super(msg);
}
```

---

### 5. Method Overriding

A subclass can override a method from its superclass.

```dart
class Bird {
  void fly() {
    print('Bird flies');
  }
}

class Eagle extends Bird {
  @override
  void fly() {
    print('Eagle soars high');
  }
}
```

---

### 6. Getters and Setters

Custom access to class properties.

```dart
class Circle {
  double _radius = 0;

  double get radius => _radius;
  set radius(double value) => _radius = value;
}
```

---

### 7. Encapsulation

Hiding internal data using private variables (prefix `_`) and exposing only required methods.

```dart
class BankAccount {
  double _balance = 0;

  void deposit(double amount) {
    if (amount > 0) _balance += amount;
  }

  double get balance => _balance;
}
```

---

### 8. Abstraction

Hiding implementation details and showing only essential features using `abstract` classes.

```dart
abstract class Shape {
  void draw();
}

class Rectangle extends Shape {
  @override
  void draw() {
    print('Drawing rectangle');
  }
}
```

---

### 9. Polymorphism

An object can take many forms (especially useful when dealing with inheritance and abstraction).

```dart
class Animal {
  void speak() => print('Some sound');
}

class Cat extends Animal {
  @override
  void speak() => print('Meow');
}

void main() {
  Animal animal = Cat();
  animal.speak(); // Meow
}
```

---

### 10. Static Members

Used when the property or method belongs to the class rather than instances.

```dart
class MathUtils {
  static double pi = 3.14;
  static double areaOfCircle(double radius) => pi * radius * radius;
}

void main() {
  print(MathUtils.areaOfCircle(5)); // 78.5
}
```

---

### 11. `this` Keyword

Refers to the current instance of the class.

```dart
class Student {
  String name;

  Student(this.name);

  void showName() {
    print('Name: ${this.name}');
  }
}
```

---

## 🧠 Summary

| Concept          | Description                                         |
| ---------------- | --------------------------------------------------- |
| Class & Object   | Blueprint and instance                              |
| Constructor      | Special method to initialize                        |
| Inheritance      | Acquire behavior from another class                 |
| Encapsulation    | Protect data using private access                   |
| Abstraction      | Focus on what an object does, not how               |
| Polymorphism     | Many forms through overriding or implementing       |
| `super` & `this` | Keywords for parent class or current object context |
| Getters/Setters  | Manage property access and encapsulation            |

---

🎯 Dart is a powerful OOP language, making it a great foundation for building structured and reusable code, especially in Flutter development!
