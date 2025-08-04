# 🐋 Polymorphism in Dart

## 📌 Definition
Polymorphism is a core concept in Object-Oriented Programming (OOP) that allows objects of different classes to be treated as objects of a common superclass. In Dart, polymorphism enables you to write more flexible and reusable code by allowing a single method or class to operate on many types of objects.

---

## 🎯 Purpose
The primary goals of polymorphism are:

- **Code reusability**
- **Interface generalization**
- **Flexibility and scalability**

Polymorphism allows a method to behave differently based on the object that invokes it.

---

## 🧠 Types of Polymorphism in Dart

### 1. **Compile-time Polymorphism (Method Overloading)** ❌
Dart **does not support traditional method overloading** (same method name with different parameters).

However, it provides alternative techniques using:
- **Optional positional parameters**
- **Named parameters**

```dart
class Calculator {
  int add(int a, [int b = 0]) => a + b;
  int subtract({required int a, int b = 0}) => a - b;
}

void main() {
  final calc = Calculator();
  print(calc.add(10));         // Output: 10
  print(calc.add(10, 5));      // Output: 15
  print(calc.subtract(a: 10)); // Output: 10
  print(calc.subtract(a: 10, b: 3)); // Output: 7
}
```

### 2. **Runtime Polymorphism (Method Overriding)** ✅
Achieved via **inheritance** and **method overriding** using `@override` keyword.

```dart
class Animal {
  void speak() {
    print("The animal makes a sound");
  }
}

class Dog extends Animal {
  @override
  void speak() {
    print("The dog barks");
  }
}

class Cat extends Animal {
  @override
  void speak() {
    print("The cat meows");
  }
}

void makeItSpeak(Animal animal) {
  animal.speak();
}

void main() {
  Animal myDog = Dog();
  Animal myCat = Cat();

  makeItSpeak(myDog); // Output: The dog barks
  makeItSpeak(myCat); // Output: The cat meows
}
```

Here, both `Dog` and `Cat` override the `speak()` method of their superclass `Animal`. The method that gets called depends on the actual object type at runtime.

---

## 📂 Real-world Example: Payment System

```dart
abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCard implements PaymentMethod {
  @override
  void pay(double amount) {
    print("Paid \$${amount.toStringAsFixed(2)} using Credit Card");
  }
}

class PayPal implements PaymentMethod {
  @override
  void pay(double amount) {
    print("Paid \$${amount.toStringAsFixed(2)} using PayPal");
  }
}

void processPayment(PaymentMethod method, double amount) {
  method.pay(amount);
}

void main() {
  PaymentMethod method1 = CreditCard();
  PaymentMethod method2 = PayPal();

  processPayment(method1, 99.99); // Output: Paid $99.99 using Credit Card
  processPayment(method2, 49.99); // Output: Paid $49.99 using PayPal
}
```

In this example, `PaymentMethod` is an interface. Both `CreditCard` and `PayPal` implement it and override the `pay()` method.

---

## 🧪 Why Use Polymorphism?
- Makes code extensible and maintainable
- Simplifies complex conditional logic using dynamic dispatch
- Enables programming to an interface rather than an implementation

---

## 🔄 Summary Table

| Type                | Description                           | Supported in Dart? |
|---------------------|---------------------------------------|---------------------|
| Method Overloading  | Same method name, different params    | ❌ (via optional/named params) |
| Method Overriding   | Subclass modifies superclass method   | ✅                  |
| Interface Polymorphism | Object interacts via interface     | ✅                  |

---

## ✅ Best Practices
- Use polymorphism to eliminate redundant code and promote reuse
- Favor interfaces or abstract classes for flexibility
- Always use `@override` for clarity and compiler checks

---

## 📎 Conclusion
Polymorphism in Dart allows objects of different types to be treated uniformly through shared interfaces or superclasses. Even without native method overloading, Dart enables expressive and flexible OOP design through runtime polymorphism and alternative parameter techniques.

Continue practicing polymorphism to deepen your understanding of OOP in Dart!
