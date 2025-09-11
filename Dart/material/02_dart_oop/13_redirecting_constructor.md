# Redirecting Constructor in Dart

In Dart, a **redirecting constructor** is a constructor that redirects its call to another constructor in the same class. This is useful when you want to reuse logic from an existing constructor and avoid code duplication.

---

## What Is a Redirecting Constructor?

A redirecting constructor uses the `:` symbol followed by a call to another constructor in the same class. It does **not** have a body.

### 🔹 Syntax

```dart
class ClassName {
  ClassName.mainConstructor();

  ClassName.redirectingConstructor() : this.mainConstructor();
}
```

> **Note**: A redirecting constructor **must not** have a function body.

---

## Simple Example

```dart
class Person {
  String name;
  int age;

  // Main constructor
  Person(this.name, this.age);

  // Redirecting constructor
  Person.named(String name) : this(name, 0);
}

void main() {
  Person p1 = Person("Dokja", 25);
  Person p2 = Person.named("Jeha");

  print("p1: \${p1.name}, \${p1.age}"); // p1: Dokja, 25
  print("p2: \${p2.name}, \${p2.age}"); // p2: Jeha, 0
}
```

---

## Use Case Example

Suppose we want to make a `User` class that has a constructor for both full info and guest user:

```dart
class User {
  String username;
  bool isGuest;

  // Main constructor
  User(this.username, this.isGuest);

  // Redirecting constructor for guest user
  User.guest() : this("Guest", true);
}

void main() {
  User u1 = User("Hamin", false);
  User u2 = User.guest();

  print(u1.username); // Hamin
  print(u2.username); // Guest
}
```

---

## Restrictions

* Redirecting constructors cannot contain a body (no `{}` block).
* You cannot use both initializer list and redirect at the same time.
* They can only redirect to **constructors within the same class**.

---

## Benefits

* Avoids code duplication.
* Makes constructor delegation clear and concise.
* Useful for providing default values or aliases.

---

## Summary

| Concept                 | Description                                              |
| ----------------------- | -------------------------------------------------------- |
| Redirecting Constructor | Constructor that delegates to another constructor        |
| Syntax                  | `ClassName.named() : this.otherConstructor();`           |
| Limitation              | No body allowed, must redirect to same class constructor |

Redirecting constructors are a clean way to reuse initialization logic in Dart and are widely used in both simple classes and Flutter widgets.

> 📚 This is part of the Dart OOP chapter.
