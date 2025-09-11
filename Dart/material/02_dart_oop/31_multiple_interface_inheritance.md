# Multiple Interface Inheritance in Dart

## 1. Introduction

In Dart, **interfaces** allow you to define a set of methods and properties that a class must implement. Unlike some languages (such as Java, where every class implicitly implements its own type as an interface), Dart uses a more explicit approach. Dart does not support multiple class inheritance, but it **does** support **multiple interface inheritance** — meaning a class can implement multiple interfaces at the same time.

This is useful when you want a single class to conform to multiple contracts, each defining specific behaviors.

---

## 2. Key Concepts

### 2.1 Interface in Dart

1. Any **class** in Dart can act as an interface.
2. You can create an interface by simply defining a class, then another class can **implement** it.
3. When you `implement` an interface, you must provide **all method and property implementations**.

### 2.2 Multiple Interface Inheritance

1. Dart allows a class to `implement` **more than one interface**.
2. You separate multiple interfaces with a comma (`class MyClass implements Interface1, Interface2`).
3. This approach lets you combine behaviors from multiple sources without class inheritance conflicts.

---

## 3. Syntax

```dart
class InterfaceA {
  void methodA();
}

class InterfaceB {
  void methodB();
}

class MyClass implements InterfaceA, InterfaceB {
  @override
  void methodA() {
    print("methodA from InterfaceA implemented in MyClass");
  }

  @override
  void methodB() {
    print("methodB from InterfaceB implemented in MyClass");
  }
}

void main() {
  MyClass obj = MyClass();
  obj.methodA();
  obj.methodB();
}
```

---

## 4. Explanation of the Example

1. **InterfaceA**

   * Declares `methodA()` without implementation.
2. **InterfaceB**

   * Declares `methodB()` without implementation.
3. **MyClass**

   * Implements **both** `InterfaceA` and `InterfaceB`.
   * Must override and provide implementation for **all methods** from both interfaces.
4. **Main Function**

   * Creates an instance of `MyClass`.
   * Calls `methodA()` and `methodB()` to verify the implementations.

---

## 5. Key Notes

1. Interfaces in Dart are **implicit** — every class can be used as an interface.
2. The `implements` keyword forces **full reimplementation** of all methods and properties.
3. Multiple interface inheritance is a way to achieve **polymorphism** without multiple class inheritance.
4. Unlike `extends` (inheritance), `implements` **does not** reuse code from the interface class — you must write your own implementations.

---

## 6. Difference Between `extends` and Multiple `implements`

| Feature                   | `extends`                    | `implements` (Multiple Interfaces) |
| ------------------------- | ---------------------------- | ---------------------------------- |
| Code reuse                | Yes                          | No                                 |
| Must override all members | No (optional)                | Yes                                |
| Multiple sources allowed  | No                           | Yes                                |
| Used for                  | Inheritance & specialization | Defining multiple contracts        |

---

## 7. Real-world Example

```dart
// Interface for authentication
class Auth {
  void login(String username, String password);
}

// Interface for data storage
class Storage {
  void saveData(String data);
}

// Class implementing multiple interfaces
class UserService implements Auth, Storage {
  @override
  void login(String username, String password) {
    print("Logging in $username with password $password");
  }

  @override
  void saveData(String data) {
    print("Saving data: $data");
  }
}

void main() {
  UserService user = UserService();
  user.login("Alice", "12345");
  user.saveData("Profile Info");
}
```

**Output:**

```
Logging in Alice with password 12345
Saving data: Profile Info
```

---

## 8. Best Practices

1. Keep each interface **small and focused** on one responsibility (Interface Segregation Principle).
2. Use descriptive names for interfaces (`Logger`, `Serializable`, `Auth`) so their purpose is clear.
3. Avoid putting implementation logic in interface-defining classes.

---

## 9. Conclusion

Multiple interface inheritance in Dart is a **powerful mechanism** for building flexible, modular, and reusable code. It enables a class to adopt **multiple behaviors** from different sources while keeping the system well-structured and avoiding the problems of multiple class inheritance.

---
> 📚 This is part of the Dart OOP chapter.
