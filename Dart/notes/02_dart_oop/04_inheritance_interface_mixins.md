# Dart Inheritance, Interfaces, and Mixins Guide

## 1. Introduction

In Dart, object-oriented programming (OOP) supports **single inheritance**, but also provides powerful tools like **interfaces** and **mixins** to create flexible, reusable, and maintainable code.

This guide explains:

* `extends` (inheritance)
* `implements` (interfaces)
* `with` (mixins)

---

## 2. `extends` — Inheritance

**Purpose:** Create a subclass that inherits fields and methods from a single superclass.

```dart
class Animal {
  void eat() => print("Animal is eating");
}

class Dog extends Animal {
  void bark() => print("Woof!");
}

void main() {
  Dog dog = Dog();
  dog.eat(); // inherited method
  dog.bark();
}
```

**Key Points:**

* A subclass inherits both implemented and unimplemented methods from its superclass.
* Dart only supports single inheritance.

---

## 3. `implements` — Interfaces

**Purpose:** Define a contract that a class must follow.

* There is no special `interface` keyword in Dart.
* Any class (regular or abstract) can act as an interface.
* Classes using `implements` **must override all members** of the interface.

```dart
class Printable {
  void printData();
}

class Report implements Printable {
  @override
  void printData() {
    print("Printing report...");
  }
}

void main() {
  Printable report = Report();
  report.printData();
}
```

**Key Points:**

* Useful for separating **what** should be done from **how** it is done.
* Supports multiple interfaces.

```dart
class Saveable {
  void save();
}

class Loadable {
  void load();
}

class FileManager implements Saveable, Loadable {
  @override
  void save() => print("Data saved");

  @override
  void load() => print("Data loaded");
}
```

---

## 4. `with` — Mixins

**Purpose:** Reuse code across multiple classes without using inheritance.

* Mixins are declared using the `mixin` keyword.
* Use `with` to apply mixins to a class.

```dart
mixin Logger {
  void log(String message) {
    print("[LOG] $message");
  }
}

mixin Authenticator {
  bool login(String user, String pass) {
    print("Login user: $user");
    return true;
  }
}

class Service with Logger, Authenticator {
  void fetchData() {
    log("Fetching data...");
    if (login("admin", "1234")) {
      print("Data fetched successfully");
    }
  }
}

void main() {
  Service s = Service();
  s.fetchData();
}
```

**Key Points:**

* Mixins provide methods and properties.
* No need to override unless you want to customize behavior.
* Multiple mixins can be combined.

---

## 5. Comparison Table

| Keyword      | Purpose                           | Must Override?     | Multiple Sources? |
| ------------ | --------------------------------- | ------------------ | ----------------- |
| `extends`    | Inherit from a single superclass  | No (only abstract) | ❌ No              |
| `implements` | Adopt contract from interface(s)  | ✅ Yes              | ✅ Yes             |
| `with`       | Include reusable behavior (mixin) | ❌ No               | ✅ Yes             |

---

## 6. Combined Example

```dart
abstract class Animal {
  void makeSound();
}

mixin Walker {
  void walk() => print("Walking...");
}

class Dog extends Object implements Animal with Walker {
  @override
  void makeSound() => print("Woof!");
}

void main() {
  Dog dog = Dog();
  dog.walk();
  dog.makeSound();
}
```

---

## 7. When to Use

* **`extends`**: When you need a subclass that inherits behavior and possibly overrides some methods.
* **`implements`**: When you want to enforce a strict API contract.
* **`with`**: When you need to share functionality across classes without creating a deep inheritance hierarchy.
