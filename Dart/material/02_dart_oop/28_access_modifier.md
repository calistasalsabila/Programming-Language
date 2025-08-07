# 🐋 Dart Access Modifiers

In Dart, access control is relatively simpler than in languages like Java or C++. Dart does **not** have traditional access modifiers like `public`, `private`, or `protected`. Instead, Dart uses a **library-based visibility** system.

This document explains how access control works in Dart, including visibility rules and best practices.

---

## 📘 Table of Contents

1. [Overview of Access Modifiers](#1-overview-of-access-modifiers)
2. [Library-Based Privacy in Dart](#2-library-based-privacy-in-dart)
3. [Using the Underscore (`_`) Prefix](#3-using-the-underscore-_-prefix)
4. [Access Modifiers Comparison (Dart vs Java)](#4-access-modifiers-comparison-dart-vs-java)
5. [Examples](#5-examples)
6. [Best Practices](#6-best-practices)

---

## 1. Overview of Access Modifiers

In many programming languages, access modifiers like `public`, `private`, and `protected` are used to control the visibility of classes, methods, and variables. For example:

* `public` → accessible from anywhere
* `private` → accessible only within the class
* `protected` → accessible in the class and its subclasses

However, Dart takes a simpler and more consistent approach.

---

## 2. Library-Based Privacy in Dart

In Dart, **everything is public by default** unless explicitly marked as private.

### ✅ Public

All top-level functions, variables, classes, and class members are **public** by default and can be accessed from anywhere, as long as they are in the same package or imported properly.

```dart
class Animal {
  String name = 'Lion';

  void roar() {
    print('Roar!');
  }
}
```

### 🚫 Private (Using `_` Prefix)

To make a member private in Dart, you prefix its name with an underscore (`_`). This makes it **private to the library** (not the class).

```dart
class Animal {
  String _secret = 'hidden roar';

  void _whisper() {
    print(_secret);
  }
}
```

Note: Even if another class inherits from `Animal`, it **cannot access** `_secret` or `_whisper()` if they are in different files.

---

## 3. Using the Underscore (`_`) Prefix

Dart does **not** use `private` keyword. Instead, it uses `_` as a convention **and enforcement** to restrict access **within the same library/file**.

This applies to:

* Class fields
* Methods
* Top-level functions
* Top-level variables
* Classes themselves

```dart
// animal.dart
class _Lion {
  void _growl() {
    print('Grrr');
  }
}

void _hiddenFunction() => print('I am hidden');
```

In another file that imports `animal.dart`, `_Lion`, `_growl()`, and `_hiddenFunction()` will be **inaccessible**.

---

## 4. Access Modifiers Comparison (Dart vs Java)

| Feature         | Dart Syntax   | Java Equivalent  |
| --------------- | ------------- | ---------------- |
| Public Member   | default       | `public`         |
| Private Member  | `_prefix`     | `private`        |
| Package-private | Not supported | default (no mod) |
| Protected       | Not supported | `protected`      |

Dart's philosophy: **libraries are the unit of privacy**, not classes.

---

## 5. Examples

### 🧪 Example 1: Private Variable in Class

```dart
// file: lib/creature.dart
class Creature {
  String _dna = "AGCT";

  void reveal() {
    print("DNA: $_dna");
  }
}
```

```dart
// file: main.dart
import 'lib/creature.dart';

void main() {
  final c = Creature();
  c.reveal();          // ✅ Allowed
  // print(c._dna);     // ❌ Error: '_dna' isn't defined in main.dart
}
```

### 🧪 Example 2: Private Class

```dart
// file: lib/secret.dart
class _Agent {
  void speak() => print("Classified info");
}
```

```dart
// file: main.dart
import 'lib/secret.dart';

void main() {
  // final agent = _Agent(); // ❌ Error: '_Agent' isn't defined in main.dart
}
```

---

## 6. Best Practices

* ✅ Use `_` for internal variables/methods not intended for public use
* ✅ Group related classes and functions in a **single Dart file** (library)
* ✅ Avoid unnecessary privacy; expose what’s needed for use
* ✅ Use `part` and `part of` to split libraries cleanly if needed
* ⚠️ Don’t assume `_` makes members private to class—it’s scoped to file

---

## 🔚 Conclusion

Dart's access modifier system is simple but effective. Instead of granular control with multiple keywords, Dart relies on the `_` prefix and **library-level privacy** to manage access. Understanding this concept is crucial when designing reusable components or packages.

By organizing code into meaningful libraries and respecting privacy boundaries using `_`, you can write clean and maintainable Dart code.

---

Happy coding with Dart! 🐋
