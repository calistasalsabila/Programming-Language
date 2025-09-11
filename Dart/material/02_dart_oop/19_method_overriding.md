# Method Overriding in Dart

## 1. Overview
Method overriding is a feature in object-oriented programming that allows a subclass to provide a specific implementation of a method that is already defined in its superclass. In Dart, method overriding enables polymorphism — a subclass can redefine a method from the parent class to suit its behavior.

---

## 2. Key Concepts

### 2.1 `@override` Annotation
The `@override` annotation in Dart is used to indicate that a method is intended to override a method in the superclass. Although it is not strictly required, it helps catch errors at compile time if the method signature doesn’t match any superclass method.

### 2.2 Rules for Overriding
- The method in the subclass must have the same name and parameter list.
- Return type must be the same (or subtype).
- The overridden method should be declared in a superclass.
- The overridden method can be called using `super.methodName()`.

---

## 3. Syntax
```dart
class Parent {
  void greet() {
    print("Hello from Parent");
  }
}

class Child extends Parent {
  @override
  void greet() {
    print("Hello from Child");
  }
}
```

---

## 4. Example

```dart
void main() {
  Parent p = Parent();
  Child c = Child();
  Parent pc = Child();

  p.greet();   // Output: Hello from Parent
  c.greet();   // Output: Hello from Child
  pc.greet();  // Output: Hello from Child (polymorphism)
}
```

---

## 5. Using `super`
You can call the original method from the parent class using `super`:

```dart
class Child extends Parent {
  @override
  void greet() {
    super.greet();
    print("And Hello from Child too!");
  }
}
```

**Output:**
```
Hello from Parent
And Hello from Child too!
```

---

## 6. When to Use
- To modify or extend functionality inherited from a superclass.
- To implement polymorphism — especially when dealing with abstract or interface-based design.

---

## 7. What You Can’t Override
- Static methods
- Constructors
- Private methods from another library (those starting with `_`)

---

## 8. Summary
| Concept            | Description                                     |
|-------------------|-------------------------------------------------|
| `@override`       | Annotation to denote overriding                |
| Polymorphism      | Allows treating subclass as superclass         |
| `super.method()`  | Calls the method from the superclass           |
| Not Overridable   | Static methods, constructors, private methods  |

Method overriding is essential for customizing inherited behavior and writing flexible, reusable, and maintainable Dart code.
---
> 📚 This is part of the Dart OOP chapter.

