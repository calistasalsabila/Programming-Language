# Dart Interfaces — Complete Guide

## 1. Introduction

In Dart, **interfaces** are used to define a contract that a class can implement. Unlike some languages (like Java) where you have a specific `interface` keyword, Dart uses its **class** system to define interfaces implicitly. This means **every class in Dart defines an interface automatically**, and other classes can implement that interface.

Think of interfaces as **"promises"** — when a class implements an interface, it is promising to provide concrete implementations for all the methods and properties defined in that interface.

---

## 2. Key Concepts

### 2.1 Interface Definition in Dart

1. In Dart, **every class is an interface**.
2. To "create" an interface, you simply define a class without necessarily providing its implementation.
3. Another class can then **`implement`** this interface.

Example:

```dart
class Animal {
  void makeSound();
}
```

Here, `Animal` is **both** a class and an interface.

---

### 2.2 Implementing an Interface

To implement an interface in Dart:

1. Use the `implements` keyword.
2. Provide concrete implementations for **all** the methods and properties from the interface.

Example:

```dart
class Dog implements Animal {
  @override
  void makeSound() {
    print("Bark!");
  }
}
```

---

### 2.3 Multiple Interfaces

Dart supports implementing **multiple interfaces** using a comma-separated list.

Example:

```dart
class CanRun {
  void run();
}

class CanSwim {
  void swim();
}

class Dolphin implements CanRun, CanSwim {
  @override
  void run() {
    print("Dolphins don't run, but they can move fast in water!");
  }

  @override
  void swim() {
    print("Swimming gracefully...");
  }
}
```

---

## 3. Difference Between `extends` and `implements`

| Feature                     | `extends`                               | `implements`                             |
| --------------------------- | --------------------------------------- | ---------------------------------------- |
| Inheritance Type            | Inherits **implementation** & interface | Inherits **only** the interface          |
| Method Override Requirement | Only override if needed                 | Must override **all** methods/properties |
| Usage                       | Reuse existing code                     | Define a contract without code reuse     |

Example:

```dart
class Parent {
  void sayHello() {
    print("Hello from Parent");
  }
}

class Child extends Parent {
  // Can use Parent's implementation without overriding
}

class AnotherChild implements Parent {
  @override
  void sayHello() {
    print("Hello from AnotherChild");
  }
}
```

---

## 4. Interfaces with Properties

An interface can also define **fields** (variables) and **getters/setters**.

Example:

```dart
class Vehicle {
  int speed;
  void accelerate();
}

class Car implements Vehicle {
  @override
  int speed = 0;

  @override
  void accelerate() {
    speed += 10;
    print("Accelerating... Current speed: $speed km/h");
  }
}
```

---

## 5. Abstract Classes as Interfaces

Sometimes, we use **abstract classes** to define interfaces because they allow method declarations without bodies.

Example:

```dart
abstract class Shape {
  double getArea();
}

class Circle implements Shape {
  double radius;

  Circle(this.radius);

  @override
  double getArea() => 3.14 * radius * radius;
}
```

---

## 6. Real-World Example — Payment System

```dart
abstract class PaymentProcessor {
  void processPayment(double amount);
}

class PayPalPayment implements PaymentProcessor {
  @override
  void processPayment(double amount) {
    print("Processing payment of \$$amount via PayPal");
  }
}

class CreditCardPayment implements PaymentProcessor {
  @override
  void processPayment(double amount) {
    print("Processing payment of \$$amount via Credit Card");
  }
}

void main() {
  PaymentProcessor paypal = PayPalPayment();
  PaymentProcessor creditCard = CreditCardPayment();

  paypal.processPayment(50.0);
  creditCard.processPayment(100.0);
}
```

Output:

```
Processing payment of $50.0 via PayPal
Processing payment of $100.0 via Credit Card
```

---

## 7. Advantages of Using Interfaces

1. **Code Consistency** — Forces consistent method naming and structure.
2. **Loose Coupling** — Encourages dependency on contracts instead of concrete implementations.
3. **Testability** — Makes mocking and testing easier.
4. **Multiple Behavior Composition** — Combine multiple interfaces without worrying about single inheritance limitations.

---

## 8. Summary

1. **All Dart classes are interfaces**.
2. Use `implements` to define a contract a class must follow.
3. Must override **all methods and properties**.
4. Can implement **multiple interfaces**.
5. Abstract classes are commonly used for defining interfaces.

---

**Key Takeaway:** Interfaces in Dart help you write **clean, modular, and testable code** by separating **what** a class should do from **how** it does it.

---
> 📚 This is part of the Dart OOP chapter.
