# 🐋 Dart Numbers Data Type

## 📌 Overview

In Dart, numbers are used to represent numeric values like integers and decimals. Dart provides a single base type for numbers called `num`, which has two subtypes:

* `int`: For **integer** values (whole numbers)
* `double`: For **floating-point** numbers (decimal numbers)

All number types in Dart are objects, so you can call methods on them too.

---

## 🎯 Goals

* Understand the `num`, `int`, and `double` types.
* Learn how to use number literals and methods.
* Explore type conversions and arithmetic operations.

---

## 🧱 Number Types

| Type     | Description                        | Example                 |
| -------- | ---------------------------------- | ----------------------- |
| `int`    | Integer numbers                    | `42`, `-7`              |
| `double` | Decimal (floating point) numbers   | `3.14`, `-0.001`, `2.0` |
| `num`    | Parent type for `int` and `double` | `num x = 4;`            |

---

## 🧪 Example Usage

### ✅ Integers (`int`)

```dart
void main() {
  int age = 20;
  print(age); // Output: 20
}
```

### ✅ Doubles (`double`)

```dart
void main() {
  double pi = 3.14159;
  print(pi); // Output: 3.14159
}
```

### ✅ Num (Generic Number Type)

```dart
void main() {
  num value = 5; // Initially an int
  print(value);

  value = 3.14; // Now a double
  print(value);
}
```

---

## ➕ Arithmetic Operations

```dart
void main() {
  int x = 10;
  int y = 3;

  print(x + y); // 13
  print(x - y); // 7
  print(x * y); // 30
  print(x / y); // 3.333...
  print(x ~/ y); // 3 (integer division)
  print(x % y); // 1 (modulus)
}
```

---

## 🔁 Type Conversion

### 🎯 Convert int to double

```dart
int x = 5;
double y = x.toDouble();
```

### 🎯 Convert double to int

```dart
double pi = 3.14;
int rounded = pi.toInt(); // Rounds toward zero: 3
```

### 🎯 Parse from String

```dart
String numStr = "42";
int number = int.parse(numStr);

double decimal = double.parse("3.14");
```

### ⚠ Safe Parsing

```dart
int? safeInt = int.tryParse("not a number");
print(safeInt); // null
```

---

## 🧠 Number Methods

```dart
void main() {
  double score = -7.8;

  print(score.abs());     // 7.8
  print(score.floor());   // -8
  print(score.ceil());    // -7
  print(score.round());   // -8
  print(score.toString()); // "-7.8"
}
```

---

## 🚨 Notes

* Dart supports **arbitrary-precision integers**.
* Dart doesn’t support `NaN`, `Infinity`, or `-Infinity` as constants, but they can still occur in computations.
* Always check for null when parsing with `tryParse()`.

---

## 📚 Resources

* [Dart Language Tour – Numbers](https://dart.dev/language#numbers)
* [Dart API Docs – num](https://api.dart.dev/stable/dart-core/num-class.html)

