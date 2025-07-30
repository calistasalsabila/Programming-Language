# 🐋 Field Overriding in Dart

## 📌 What is Field Overriding?
Field overriding in Dart happens when a subclass **declares a field with the same name** as one in its superclass. This allows the subclass to **hide** or **replace** the superclass field.

> Note: Unlike methods, Dart allows field overriding, but it's considered *shadowing* rather than true polymorphic override.

---

## 🧠 Key Concepts
- Fields in Dart can be overridden by defining a new field with the **same name** in a subclass.
- Dart does **not support late binding** for fields, so field references are resolved at compile time.
- Use of `@override` is **not allowed for fields** (only for methods/getters/setters).

---

## 🧱 Syntax
```dart
class Parent {
  String name = "Parent";
}

class Child extends Parent {
  String name = "Child";
}

void main() {
  Parent obj = Child();
  print(obj.name); // Output: Parent

  Child c = Child();
  print(c.name); // Output: Child
}
```

---

## 📍 Explanation
- The field `name` exists in both `Parent` and `Child`.
- When accessed using a `Parent` reference, the `Parent` field is used (static typing).
- When accessed using a `Child` reference, the `Child` field is used.

---

## 🧪 Another Example
```dart
class Animal {
  String type = "Animal";
}

class Cat extends Animal {
  String type = "Cat";
}

void main() {
  Animal a = Cat();
  print(a.type); // Output: Animal

  Cat c = Cat();
  print(c.type); // Output: Cat
}
```

---

## ✅ Key Takeaways
- Field overriding in Dart is **field shadowing**.
- It does **not support dynamic dispatch** like methods.
- Always use **getters/setters** if you want polymorphic behavior on fields.

### ✅ Using Getters for Polymorphism
```dart
class Animal {
  String get type => "Animal";
}

class Cat extends Animal {
  @override
  String get type => "Cat";
}

void main() {
  Animal a = Cat();
  print(a.type); // Output: Cat
}
```

---

## 🧾 Summary
| Concept | Description |
|--------|-------------|
| Field Overriding | Subclass defines field with same name |
| Behavior | Shadowing, not polymorphism |
| Polymorphic alternative | Use getters/setters |

---

That's all about field overriding in Dart! 🧬
