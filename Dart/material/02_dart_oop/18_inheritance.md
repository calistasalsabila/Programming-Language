# 🐋 Inheritance in Dart

## 📌 Overview
Inheritance is a core concept in Object-Oriented Programming (OOP) that allows a class (child or subclass) to inherit properties and methods from another class (parent or superclass). In Dart, inheritance is implemented using the `extends` keyword.

---

## 🌱 Why Use Inheritance?
- **Code Reusability**: Share common logic across classes.
- **Hierarchy Representation**: Model real-world relationships.
- **Polymorphism Support**: Override methods for flexible behavior.

---

## 🛠️ Basic Syntax
```dart
class Parent {
  void sayHello() {
    print('Hello from Parent');
  }
}

class Child extends Parent {
  void sayHi() {
    print('Hi from Child');
  }
}
```

---

## 🔁 Example
```dart
void main() {
  Child c = Child();
  c.sayHello();  // Inherited from Parent
  c.sayHi();     // Defined in Child
}
```

**Output:**
```
Hello from Parent
Hi from Child
```

---

## 🧩 Key Points

### 1. `extends` Keyword
Used to define a subclass that inherits from a superclass.

### 2. `super` Keyword
Used to access members (methods or variables) of the superclass.

```dart
class Parent {
  String name = 'Parent';

  void display() {
    print('Name: $name');
  }
}

class Child extends Parent {
  void showParentName() {
    print('Calling super: ${super.name}');
  }
}
```

### 3. Constructor Inheritance
By default, constructors are **not** inherited. You need to call the parent’s constructor explicitly:

```dart
class Parent {
  Parent(String message) {
    print('Parent constructor: $message');
  }
}

class Child extends Parent {
  Child(String msg) : super(msg);
}
```

---

## 🧱 Types of Inheritance in Dart
Dart supports **single inheritance** only. A class can only extend **one** class.

```dart
class A {}
class B extends A {}  // Valid
class C extends A, B {}  // ❌ Invalid in Dart
```

For multiple inheritance-like behavior, Dart uses **mixins** (covered separately).

---

## ❗ Limitations
- No multiple inheritance.
- Constructors must be explicitly chained.
- Private members (`_name`) are not inherited from different libraries.

---

## ✅ When to Use
- When multiple classes share common behavior.
- When designing a class hierarchy (e.g., `Animal → Dog`, `Animal → Cat`).

---

## 📌 Summary
| Concept             | Description                                      |
|--------------------|--------------------------------------------------|
| `extends`          | Declares inheritance relationship                |
| `super`            | Accesses superclass members                      |
| Constructor Chaining | Use `super()` to call parent constructor       |
| Single Inheritance | Only one parent class can be extended           |
| Use Cases          | Code reuse, hierarchy, polymorphism              |

Inheritance simplifies your code, promotes reuse, and enables polymorphism — making your Dart programs more maintainable and logical.
