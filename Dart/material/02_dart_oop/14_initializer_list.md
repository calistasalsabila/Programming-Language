# Initializer List in Dart

In Dart, the **initializer list** is a special syntax used in constructors to initialize instance variables **before the constructor body runs**. It is especially useful when initializing `final` fields or calling a superclass constructor with parameters.

---

## Syntax

```dart
ClassName(this.field1, this.field2) : field3 = value, field4 = anotherValue {
  // constructor body
}
```

* The `:` (colon) introduces the initializer list.
* Multiple initializations are separated by commas `,`.
* The initializer list runs **before** the constructor body.

---

## Why Use Initializer List?

* To **initialize `final` fields** that must be set before constructor body runs.
* To **invoke superclass constructors**.
* To **compute fields** from constructor parameters.

---

## Example 1: Initializing `final` Fields

```dart
class Student {
  final String name;
  final int age;

  Student(String name, int age) : name = name, age = age;
}

void main() {
  var s = Student("Dokja", 20);
  print("Name: \${s.name}, Age: \${s.age}");
}
```

Useful for ensuring immutability.

---

## 📘 Example 2: Compute Values Before Body

```dart
class Rectangle {
  final int width;
  final int height;
  final int area;

  Rectangle(this.width, this.height)
      : area = width * height {
    print("Rectangle created.");
  }
}
```

📎 `area` is computed *before* entering the constructor body.

---

## Example 3: Call Superclass Constructor

```dart
class Person {
  final String name;
  Person(this.name);
}

class Employee extends Person {
  final String role;

  Employee(String name, this.role) : super(name);
}
```

`super(name)` calls the superclass constructor.

---

## Notes

* You **cannot use `this`** inside the initializer list except to assign values (e.g., `this.x = y` is **not** allowed).
* You can use constructors with optional/named parameters with initializer list.

---

## Summary

| Feature                  | Supported in Initializer List |
| ------------------------ | ----------------------------- |
| `final` variable init    | ✅ Yes                         |
| Computed fields          | ✅ Yes                         |
| Call `super()`           | ✅ Yes                         |
| `this` keyword reference | ❌ No (in general)             |

Initializer lists are powerful for setting up class state early, particularly with immutable design and superclass coordination.

> 📚 This is part of the Dart OOP chapter.
