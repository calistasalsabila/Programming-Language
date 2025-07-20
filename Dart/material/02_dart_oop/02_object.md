# 🐋 Dart Object

In Dart, **objects** are the foundation of Object-Oriented Programming (OOP). Every value in Dart is an object—even numbers, functions, and `null`—and all objects are instances of a class. This file explains what objects are, how to create and use them, and how they interact in Dart.

---

## 📌 What is an Object?

An **object** is an instance of a class. It is a combination of **state** (data/properties) and **behavior** (methods/functions). When a class is instantiated, it creates an object.

> 💡 Think of a class as a blueprint and the object as the actual house built using that blueprint.

---

## 🎯 Purpose of Using Objects

* To **encapsulate** data and behavior in a single unit
* To **reuse code** through classes
* To create **modular** and **maintainable** applications

---

## 🛠️ How to Create an Object

### ✅ Syntax

```dart
ClassName objectName = ClassName();
```

### 🧪 Example

```dart
class Student {
  String name = "";
  int age = 0;

  void introduce() {
    print("Hi, my name is $name and I am $age years old.");
  }
}

void main() {
  Student student1 = Student();
  student1.name = "Hamin";
  student1.age = 20;
  student1.introduce();
}
```

### 🖥️ Output

```
Hi, my name is Hamin and I am 20 years old.
```

---

## 🧱 Using Constructors to Create Objects

Constructors are special methods used to initialize objects.

### 🧪 Example

```dart
class Book {
  String title;
  int pages;

  // Constructor
  Book(this.title, this.pages);

  void info() {
    print("Book: $title, Pages: $pages");
  }
}

void main() {
  Book book1 = Book("Dart Guide", 150);
  book1.info();
}
```

### 🖥️ Output

```
Book: Dart Guide, Pages: 150
```

---

## 📎 Object Properties and Methods

You can access an object's properties and methods using the dot `.` operator.

```dart
objectName.propertyName;
objectName.methodName();
```

---

## 🧠 Object with Default and Named Parameters

```dart
class Car {
  String brand;
  int year;

  Car({this.brand = 'Toyota', this.year = 2020});

  void show() => print('$brand - $year');
}

void main() {
  Car c1 = Car();
  Car c2 = Car(brand: 'BMW', year: 2023);

  c1.show();
  c2.show();
}
```

### 🖥️ Output

```
Toyota - 2020
BMW - 2023
```

---

## 🧩 Object Interaction Example

```dart
class Person {
  String name;

  Person(this.name);

  void greet() {
    print("Hello, I’m $name.");
  }
}

class Job {
  String title;
  Person employee;

  Job(this.title, this.employee);

  void describe() {
    print("${employee.name} works as a $title.");
  }
}

void main() {
  Person jeha = Person("Jeha");
  Job dev = Job("Software Engineer", jeha);

  dev.describe();
}
```

### 🖥️ Output

```
Jeha works as a Software Engineer.
```

---

## 🧼 Summary

* Dart treats **everything as an object**, and every object is an instance of a **class**.
* You create an object using the `new` keyword (optional) or directly using `ClassName()`.
* Objects can have properties (state) and methods (behavior).
* Objects are created with constructors, which can be default, positional, or named.
* Objects can interact with each other by passing one object as a field or parameter to another.

---

## ✅ Common Use Cases

* Modeling real-world entities: Student, Book, Car, etc.
* Managing state in Flutter widgets
* Reusability and abstraction in larger applications

---

Happy coding with Dart! 🐋
