# Object Class and Superclass in Dart

## 1. Overview

In Dart, **`Object`** is the root of the class hierarchy. Every class in Dart **implicitly or explicitly** inherits from `Object`, making it the **universal superclass**. This is a core concept in Object-Oriented Programming (OOP) and is essential to understand inheritance, method overriding, and type safety.

---

## 2. The `Object` Class

### 2.1 Definition

The `Object` class is the superclass of all Dart classes. If you create a class and do not explicitly extend another class, Dart automatically makes it extend `Object`.

```dart
class Example {}  // Implicitly extends Object
```

This is equivalent to:

```dart
class Example extends Object {}
```

### 2.2 Key Methods from `Object`

| Method           | Description                                                 |
| ---------------- | ----------------------------------------------------------- |
| `toString()`     | Returns a string representation of the object.              |
| `==`             | Checks whether two objects are equal (can be overridden).   |
| `hashCode`       | Returns an integer hash code of the object.                 |
| `noSuchMethod()` | Invoked when a non-existent method or property is accessed. |
| `runtimeType`    | Returns the `Type` of the object at runtime.                |

---

## 3. What is a Superclass?

### 3.1 Definition

A **superclass** is the class from which another class (called a subclass) inherits properties and methods. Dart supports single inheritance, meaning a class can extend only one superclass.

```dart
class Animal {
  void eat() {
    print("Animal is eating");
  }
}

class Dog extends Animal {
  void bark() {
    print("Dog is barking");
  }
}
```

Here, `Animal` is the **superclass**, and `Dog` is the **subclass**.

### 3.2 Inheritance Behavior

* Subclass inherits **all accessible** members (fields and methods) of the superclass.
* Subclass can **override** methods from the superclass.
* Use `super` keyword to refer to members of the superclass.

---

## 4. The `super` Keyword

### 4.1 Purpose

The `super` keyword is used inside a subclass to **refer to**:

* Methods
* Properties
* Constructors

of its immediate superclass.

### 4.2 Example: Method Access with `super`

```dart
class Parent {
  void showMessage() {
    print("Hello from Parent class");
  }
}

class Child extends Parent {
  void showMessage() {
    super.showMessage();  // Access superclass method
    print("Hello from Child class");
  }
}
```

### 4.3 Example: Constructor Access with `super`

```dart
class Person {
  String name;
  Person(this.name);
}

class Student extends Person {
  Student(String name) : super(name);  // Calls the superclass constructor
}
```

---

## 5. Real Example: Understanding `Object` and Superclass

```dart
class A {
  void greet() {
    print("Hello from A");
  }
}

class B extends A {
  @override
  void greet() {
    print("Hello from B");
    super.greet();  // Calls method from class A
  }
}

void main() {
  B obj = B();
  print(obj.runtimeType);   // Output: B
  obj.greet();              // Output: Hello from B \n Hello from A
  print(obj.toString());    // Inherited from Object class
}
```

---

## 6. Summary

* `Object` is the **root class** of all Dart classes.
* A **superclass** is a class from which a subclass inherits.
* `super` keyword is used to **access superclass methods, properties, or constructors**.
* Understanding the `Object` class helps in utilizing built-in methods like `toString()`, `==`, and `hashCode()` effectively.

---

## 7. Bonus Tip

You can override `toString()` or `==` in your classes to customize how they behave when printed or compared:

```dart
class User {
  final String name;
  User(this.name);

  @override
  String toString() => 'User: \$name';

  @override
  bool operator ==(Object other) =>
    other is User && other.name == name;

  @override
  int get hashCode => name.hashCode;
}
```

Understanding these concepts is foundational for mastering Dart OOP and writing clean, reusable code.
---
> 📚 This is part of the Dart OOP chapter.

