# Const Constructor in Dart

In Dart, a `const` constructor allows you to create **compile-time constant objects**, which improves performance and memory efficiency when the object is immutable (its fields do not change).

---

## Why Use `const` Constructor?
- **Performance:** Reuses instances instead of creating new ones.
- **Immutability:** Ensures the object can't be changed after creation.
- **Compile-time Safety:** Catches errors early during compilation.

---

## Syntax
```dart
class ClassName {
  final Type fieldName;

  const ClassName(this.fieldName);
}
```

> 🔹 The constructor and all instance variables **must be marked `final`**.

---

## Example
```dart
class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);
}

void main() {
  const p1 = Point(2, 3);
  const p2 = Point(2, 3);

  print(identical(p1, p2)); // true
}
```

### Explanation:
- `p1` and `p2` refer to **the same instance** in memory because they are created using a const constructor with the same values.
- `identical(p1, p2)` returns `true` 

---

## `const` vs `final`
| Feature | `const` | `final` |
|--------|--------|--------|
| Constancy Level | Compile-time | Runtime |
| Reusability | ✅ | ❌ |
| Requires Const Constructor | ✅ | ❌ |
| Used with Classes | Yes (constructor) | Yes (fields) |

---

## Important Notes
- You can only use `const` constructor when **all fields are `final`**.
- Objects created with `const` are **canonicalized** (reused if values are the same).
- Use `const` keyword at the call site too: `const MyClass(...)`

---

## Example with Multiple Fields
```dart
class Circle {
  final double radius;
  final String color;

  const Circle(this.radius, this.color);
}

void main() {
  const c1 = Circle(5.0, 'blue');
  const c2 = Circle(5.0, 'blue');
  const c3 = Circle(7.0, 'red');

  print(identical(c1, c2)); // true
  print(identical(c1, c3)); // false
}
```

---

## What Will Cause Error?
```dart
class Animal {
  int age; // not final 

  const Animal(this.age); // error 
}
```
> Error: All fields must be `final` in order to use `const` constructor.

---

## Valid Use Case
```dart
class Animal {
  final int age;

  const Animal(this.age); // now valid 
}
```

---

## With Named Parameters
```dart
class User {
  final String name;
  final int age;

  const User({required this.name, required this.age});
}

void main() {
  const user = User(name: 'Dokja', age: 27);
  print(user.name);
}
```

---

## Summary
- Use `const` for objects that never change.
- Declare constructor with `const` and make all fields `final`.
- Use `const` when creating the object.
- Dart optimizes identical `const` objects by using the same instance in memory.

---
> 📚 This is part of the Dart OOP chapter.
