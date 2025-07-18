# 🐋 Dart Arithmetic Operations

In Dart, arithmetic operations are used to perform mathematical calculations. These operations can be used with integers (`int`) and floating-point numbers (`double`).

## ✨ Basic Arithmetic Operators

| Operator | Description        | Example   | Result |
| -------- | ------------------ | --------- | ------ |
| `+`      | Addition           | `5 + 3`   | `8`    |
| `-`      | Subtraction        | `9 - 4`   | `5`    |
| `*`      | Multiplication     | `7 * 6`   | `42`   |
| `/`      | Division           | `10 / 2`  | `5.0`  |
| `~/`     | Integer Division   | `10 ~/ 3` | `3`    |
| `%`      | Modulo (remainder) | `10 % 3`  | `1`    |

### 📌 Notes:

* `/` returns a `double`.
* `~/` returns an `int` by discarding the remainder.
* `%` returns the remainder of the division.

## 💡 Example Code

```dart
void main() {
  int a = 10;
  int b = 3;

  print('Addition: a + b = \${a + b}');
  print('Subtraction: a - b = \${a - b}');
  print('Multiplication: a * b = \${a * b}');
  print('Division: a / b = \${a / b}');
  print('Integer Division: a ~/ b = \${a ~/ b}');
  print('Modulo: a % b = \${a % b}');
}
```

### 🔍 Output:

```
Addition: a + b = 13
Subtraction: a - b = 7
Multiplication: a * b = 30
Division: a / b = 3.3333333333333335
Integer Division: a ~/ b = 3
Modulo: a % b = 1
```

## 📎 Type Promotion in Dart

If either operand is a `double`, the result will also be a `double` for operations like `+`, `-`, `*`, and `/`.

```dart
void main() {
  int x = 7;
  double y = 2.5;
  print(x + y); // 9.5
}
```

## 🧠 Conclusion

Dart supports all standard arithmetic operators and also provides integer division (`~/`) and modulo (`%`) for precise control over integer math. Be mindful of the types (`int` vs `double`) to avoid unexpected results.

