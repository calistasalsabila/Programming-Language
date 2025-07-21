# 🐋 Dart: Expression Body Methods

In Dart, **expression body methods** provide a concise syntax for writing methods (or functions) that contain only a single expression. This is useful when the method simply returns the result of an expression or performs a one-liner action.

---

## ✅ Purpose

* To simplify methods that only return a value or execute a single statement.
* To make the code more readable and expressive.

---

## 📚 Syntax

```dart
returnType methodName(parameters) => expression;
```

It is equivalent to:

```dart
returnType methodName(parameters) {
  return expression;
}
```

---

## 🔸 Example

```dart
class Math {
  int square(int n) => n * n;
  double half(double x) => x / 2;
  void greet(String name) => print("Hello, $name");
}

void main() {
  Math m = Math();
  print(m.square(4));       // Output: 16
  print(m.half(10));        // Output: 5.0
  m.greet("Hamin");         // Output: Hello, Hamin
}
```

---

## 🔍 Notes

* The `=>` is known as **fat arrow** and can only be used for single-expression methods.
* It is often used in short methods, especially in Flutter widgets and functional-style code.
* You can use expression body syntax in:

  * **Instance methods**
  * **Static methods**
  * **Getters** and **setters**
  * **Constructors** (initializers)

---

## 🛠️ Getter Example with Expression Body

```dart
class Circle {
  double radius;
  Circle(this.radius);

  double get area => 3.14 * radius * radius;
}

void main() {
  Circle c = Circle(5);
  print(c.area); // Output: 78.5
}
```

---

## 🛠️ Setter Example with Expression Body

```dart
class Counter {
  int _value = 0;

  set value(int newValue) => _value = newValue;
  int get value => _value;
}
```

---

## 🧠 Summary

| Concept     | Description                             |
| ----------- | --------------------------------------- |
| `=>`        | Expression body syntax (fat arrow)      |
| Used for    | Methods, getters, setters, constructors |
| Restriction | Only for single-expression bodies       |
| Benefit     | Cleaner and more concise code           |

---

✨ Expression body methods help make Dart code **short**, **clear**, and **maintainable**, especially when dealing with simple logic.
