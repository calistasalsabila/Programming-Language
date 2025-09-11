# Factory Constructor in Dart

## What is a Factory Constructor?

A **factory constructor** in Dart is a special type of constructor used when you want more control over how an object is created. Unlike a generative constructor (which always returns a new instance of the class), a factory constructor can:

* Return an existing instance (singleton pattern)
* Return a subtype
* Perform logic before deciding what object to return
* Cache objects or do some preprocessing

```dart
class Example {
  factory Example() {
    // logic before creating an object
    return Example._internal();
  }

  Example._internal(); // private named constructor
}
```

---

## Why Use a Factory Constructor?

Here are a few scenarios where factory constructors are useful:

* Singleton pattern
* Conditional instance creation
* Returning an instance from a cache
* Choosing which subclass to instantiate

---

## Syntax

```dart
class ClassName {
  factory ClassName([params]) {
    // logic
    return instance;
  }

  ClassName._privateConstructor();
}
```

> You must use a **named constructor** (like `_privateConstructor`) to avoid recursion in factory constructors.

---

## 💡 Examples

### 1. Singleton Pattern

```dart
class Logger {
  static final Logger _instance = Logger._internal();

  factory Logger() {
    return _instance;
  }

  Logger._internal();
}

void main() {
  var log1 = Logger();
  var log2 = Logger();
  print(log1 == log2); // true 
}
```

### 2. Conditional Object Creation

```dart
class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle();
    if (type == 'square') return Square();
    throw ArgumentError('Unknown shape type');
  }
}

class Circle extends Shape {
  Circle() : super._();
}

class Square extends Shape {
  Square() : super._();
}

extension on Shape {
  Shape._();
}

void main() {
  var shape = Shape('circle');
  print(shape.runtimeType); // Circle 
}
```

---

## ⚠ Notes

* You **cannot access `this`** inside a factory constructor since the instance has not been created yet.
* Factory constructors **can return null**, unlike generative constructors.
* It's commonly used in design patterns and when building frameworks or SDKs.

---

## Summary

| Feature                 | Generative Constructor | Factory Constructor |
| ----------------------- | ---------------------- | ------------------- |
| Always returns new obj? | ✅ Yes                  | ❌ Not always        |
| Can return null?        | ❌ No                   | ✅ Yes               |
| Can return a subtype?   | ❌ No                   | ✅ Yes               |
| Can do logic first?     | ❌ No                   | ✅ Yes               |

---

## When To Use

* You want to reuse or cache instances
* You need some logic before instantiation
* You want to implement factory methods or design patterns (like Singleton or Factory Method)

---

## Bonus Tip

You can use factory constructors with `Map` or `JSON` parsing too:

```dart
class User {
  final String name;

  User(this.name);

  factory User.fromJson(Map<String, dynamic> json) {
    return User(json['name']);
  }
}

void main() {
  var json = {'name': 'Dokja'};
  var user = User.fromJson(json);
  print(user.name); // Dokja
}
```

---
> 📚 This is part of the Dart OOP chapter.

