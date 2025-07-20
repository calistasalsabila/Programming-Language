# 🐋 Dart Fields

In Dart, **fields** are variables that belong to a class. They represent the data or state of an object and are sometimes referred to as **instance variables**. Fields can be public, private, static, or final, and are usually declared inside a class but outside any method or constructor.

---

## 📌 What is a Field?

A **field** is a property of an object. Each object can have its own values for these fields, which store the state of that object.

> 💡 Fields are declared within the class body but outside of any methods.

---

## 🧪 Basic Example

```dart
class Student {
  String name = "";
  int age = 0;

  void introduce() {
    print("Hi, I’m $name and I’m $age years old.");
  }
}

void main() {
  Student s1 = Student();
  s1.name = "Hamin";
  s1.age = 20;
  s1.introduce();
}
```

### 🖥️ Output

```
Hi, I’m Hamin and I’m 20 years old.
```

---

## 🔐 Public vs Private Fields

* **Public** fields can be accessed from outside the class.
* **Private** fields are prefixed with `_` and can only be accessed within the same file.

```dart
class BankAccount {
  double _balance = 0; // private field

  void deposit(double amount) {
    _balance += amount;
  }

  double getBalance() => _balance;
}
```

---

## 🧱 Field Types

### 1. ✅ Instance Fields

Each object has its own copy.

```dart
class Person {
  String name = "Unnamed"; // instance field
}
```

### 2. 🧲 Static Fields

Shared across all instances of the class.

```dart
class Counter {
  static int count = 0; // shared by all objects
}
```

### 3. 🧊 Final Fields

Can be set only once.

```dart
class Circle {
  final double pi = 3.14;
}
```

### 4. ❌ Late Initialization

You can declare a field and initialize it later (especially useful for `final` or non-nullable fields).

```dart
class Config {
  late String apiKey;
}
```

---

## 🔄 Initialize Fields with Constructor

Fields can be initialized when an object is created.

```dart
class Book {
  String title;
  int pages;

  Book(this.title, this.pages);
}
```

---

## 🧠 Best Practices

* Use **`_`** to make fields private.
* Use **getters/setters** for controlled access.
* Use **final** for constants that won't change.
* Use **static** for shared fields or constants.

---

## 🧼 Summary

* Fields store the state of a class.
* Types: instance, static, final, and late fields.
* Access modifiers: public and private (`_name`).
* Fields can be initialized via constructors or default values.

---

Fields are the core of maintaining state in Dart classes and are used heavily in Flutter for managing widget properties and application logic. 🐋
