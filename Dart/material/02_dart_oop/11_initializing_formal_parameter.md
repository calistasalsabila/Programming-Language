# 🐋 Initializing Formal Parameters in Dart

## What is an Initializing Formal Parameter?

An **initializing formal parameter** is a Dart feature that allows constructor parameters to be **directly assigned** to instance variables **in the parameter list itself**, reducing boilerplate code.

This is especially useful when the constructor parameter has the **same name** as the class field.

---

## Basic Syntax

```dart
class ClassName {
  Type variableName;

  ClassName(this.variableName);
}
```

This is equivalent to:

```dart
class ClassName {
  Type variableName;

  ClassName(Type variableName) {
    this.variableName = variableName;
  }
```

---

## Use Case Example

```dart
class Student {
  String name;
  int age;

  Student(this.name, this.age);
}

void main() {
  Student s = Student('Dokja', 20);
  print(s.name); // Dokja
  print(s.age);  // 20
}
```

---

## Using with Named Parameters

Named parameters improve readability and flexibility when calling constructors.

```dart
class Book {
  String title;
  int pages;

  Book({required this.title, required this.pages});
}

void main() {
  Book b = Book(title: 'Flutter Guide', pages: 250);
  print(b.title);  // Flutter Guide
  print(b.pages);  // 250
}
```

* Parameters are enclosed in `{}`
* Use `required` to make parameters non-nullable
* Use `this.parameterName` to assign directly to instance variables

### Named Parameters with Default Values

```dart
class Course {
  String name;
  int duration;

  Course({this.name = 'Dart', this.duration = 4});
}
```

---

## Advantages

* Cleaner and more concise code
* Avoids repetition of parameter names
* Easy to read and maintain

---

## When Not to Use

If your constructor needs **additional logic** during assignment (e.g., validation, transformation), then use a regular constructor body instead:

```dart
class User {
  String name;

  User(String name) {
    if (name.length < 3) {
      this.name = 'Anonymous';
    } else {
      this.name = name;
    }
  }
}
```

---

## Summary Table

| Concept          | Example                  |
| ---------------- | ------------------------ |
| Basic            | `ClassName(this.var);`   |
| Named Parameters | `ClassName({this.var});` |
| Optional         | `ClassName([this.var]);` |

---

## Related Topics

* Dart Constructors
* Named and Optional Parameters
* The `this` keyword
* Inheritance in Dart
