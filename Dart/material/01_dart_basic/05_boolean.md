# Dart Boolean Data Type

## Overview

In Dart, the `bool` type is used to represent Boolean values — either `true` or `false`. Boolean expressions are essential in conditional logic, such as `if` statements, loops, and comparisons.

---

## Goals

* Understand the `bool` type in Dart.
* Learn how to use Boolean literals and expressions.
* Apply Booleans in control flow and logical operations.

---

## Boolean Type

| Type   | Description                     | Values          |
| ------ | ------------------------------- | --------------- |
| `bool` | Represents logical truth values | `true`, `false` |

---

## Boolean Literals

```dart
void main() {
  bool isReady = true;
  bool isLate = false;

  print(isReady); // true
  print(isLate);  // false
}
```

---

## Comparison Expressions

Comparison operators return Boolean values:

```dart
void main() {
  int a = 5;
  int b = 10;

  print(a == b);  // false
  print(a != b);  // true
  print(a < b);   // true
  print(a <= 5);  // true
  print(b > a);   // true
  print(b >= 10); // true
}
```

---

## Logical Operators

| Operator | Name | Example         | Result  |        |   |         |        |
| -------- | ---- | --------------- | ------- | ------ | - | ------- | ------ |
| `!`      | NOT  | `!true`         | `false` |        |   |         |        |
| `&&`     | AND  | `true && false` | `false` |        |   |         |        |
| \`       |      | \`              | OR      | \`true |   | false\` | `true` |

```dart
void main() {
  bool x = true;
  bool y = false;

  print(!x);      // false
  print(x && y);  // false
  print(x || y);  // true
}
```

---

## Using Booleans in Control Flow

### If-Else

```dart
void main() {
  bool isLoggedIn = false;

  if (isLoggedIn) {
    print("Welcome back!");
  } else {
    print("Please log in.");
  }
}
```

### While Loop

```dart
void main() {
  int count = 0;

  while (count < 3) {
    print("Count: \$count");
    count++;
  }
}
```

---

## Notes

* Only `true` is considered truthy in Dart. Everything else (like `0`, `""`, `null`) is **not** truthy like in some other languages.
* `bool` is a primitive type but still behaves like an object.
* Avoid using non-boolean values in conditions (Dart will give errors).

---

## Resources

* [Dart Language Tour – Booleans](https://dart.dev/language#booleans)
* [Dart API Docs – bool](https://api.dart.dev/stable/dart-core/bool-class.html)

> 📚 This is part of the Dart basic chapter.
