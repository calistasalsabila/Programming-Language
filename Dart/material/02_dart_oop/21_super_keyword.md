# 🐋 `super` Keyword in Dart

## 📌 Overview
The `super` keyword in Dart is used to refer to the **parent class** (also called the superclass). It allows access to the methods, properties, and constructors of the superclass from a subclass.

---

## 🎯 Use Cases of `super`
1. **Accessing superclass methods** from a subclass method.
2. **Accessing superclass properties** if they're not overridden.
3. **Calling superclass constructor** from a subclass constructor.

---

## 🧠 Syntax and Explanation
```dart
class Parent {
  String message = 'Hello from Parent';

  void sayHello() {
    print('Parent says hello!');
  }
}

class Child extends Parent {
  String message = 'Hello from Child';

  void printMessages() {
    print(message);       // Accesses Child's own message
    print(super.message); // Accesses Parent's message
  }

  @override
  void sayHello() {
    super.sayHello(); // Calls Parent's sayHello()
    print('Child adds: Hello!');
  }
}

void main() {
  Child c = Child();
  c.printMessages();
  c.sayHello();
}
```

### ✅ Output:
```
Hello from Child
Hello from Parent
Parent says hello!
Child adds: Hello!
```

---

## 🏗️ Using `super` in Constructor
You can use `super` to call a parent class constructor from the subclass constructor.

```dart
class Person {
  String name;

  Person(this.name);
}

class Student extends Person {
  int grade;

  Student(String name, this.grade) : super(name);
}

void main() {
  Student s = Student('Dokja', 10);
  print('${s.name} is in grade ${s.grade}');
}
```

### ✅ Output:
```
Dokja is in grade 10
```

---

## ❗Important Notes
- You can only use `super` in a subclass.
- If a method or property is **overridden** in the subclass, you need `super` to access the original one.
- `super` can only access **public** members of the superclass.

---

## 🔚 Summary
| Use | Example |
|-----|---------|
| Access superclass method | `super.methodName()` |
| Access superclass property | `super.propertyName` |
| Call superclass constructor | `: super(arguments)` |

The `super` keyword is essential when you want to extend or modify functionality while still utilizing what the parent class offers.

---
