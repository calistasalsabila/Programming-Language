# 🐋 Dart Operators

In Dart, operators are special symbols or keywords used to perform operations on variables and values. Dart provides a wide range of operators categorized by their functionality.

---

## 🧮 Arithmetic Operators

Used to perform basic mathematical operations.

| Operator | Description         | Example  | Output |
| -------- | ------------------- | -------- | ------ |
| `+`      | Addition            | `5 + 3`  | `8`    |
| `-`      | Subtraction         | `5 - 3`  | `2`    |
| `*`      | Multiplication      | `5 * 3`  | `15`   |
| `/`      | Division (double)   | `5 / 2`  | `2.5`  |
| `~/`     | Integer Division    | `5 ~/ 2` | `2`    |
| `%`      | Modulus (remainder) | `5 % 2`  | `1`    |

---

## 🧾 Relational (Comparison) Operators

Used to compare two values.

| Operator | Description      | Example  | Output  |
| -------- | ---------------- | -------- | ------- |
| `==`     | Equal to         | `3 == 3` | `true`  |
| `!=`     | Not equal to     | `3 != 4` | `true`  |
| `>`      | Greater than     | `5 > 2`  | `true`  |
| `<`      | Less than        | `5 < 2`  | `false` |
| `>=`     | Greater or equal | `5 >= 5` | `true`  |
| `<=`     | Less or equal    | `5 <= 4` | `false` |

---

## 🧠 Logical Operators

Used to combine or invert boolean expressions.

| Operator | Description | Example         | Output     |        |   |         |        |
| -------- | ----------- | --------------- | ---------- | ------ | - | ------- | ------ |
| `&&`     | Logical AND | `true && false` | `false`    |        |   |         |        |
| \`       |             | \`              | Logical OR | \`true |   | false\` | `true` |
| `!`      | Logical NOT | `!true`         | `false`    |        |   |         |        |

---

## 🧰 Assignment Operators

Used to assign and update the value of variables.

| Operator | Description               | Example   | Equivalent To |
| -------- | ------------------------- | --------- | ------------- |
| `=`      | Assignment                | `a = 3`   | -             |
| `+=`     | Add and assign            | `a += 2`  | `a = a + 2`   |
| `-=`     | Subtract and assign       | `a -= 2`  | `a = a - 2`   |
| `*=`     | Multiply and assign       | `a *= 2`  | `a = a * 2`   |
| `/=`     | Divide and assign         | `a /= 2`  | `a = a / 2`   |
| `~/=`    | Integer divide and assign | `a ~/= 2` | `a = a ~/ 2`  |
| `%=`     | Modulus and assign        | `a %= 2`  | `a = a % 2`   |

---

## 🔗 Bitwise Operators

Used to perform bit-level operations (mostly for advanced use).

| Operator | Description |            |
| -------- | ----------- | ---------- |
| `&`      | Bitwise AND |            |
| \`       | \`          | Bitwise OR |
| `^`      | Bitwise XOR |            |
| `~`      | Bitwise NOT |            |
| `<<`     | Left shift  |            |
| `>>`     | Right shift |            |

Example:

```dart
print(5 & 3);  // Output: 1
```

---

## 🧮 Type Test Operators

Used to check and cast types.

| Operator | Description                             | Example        |
| -------- | --------------------------------------- | -------------- |
| `is`     | True if object is of specified type     | `a is int`     |
| `is!`    | True if object is NOT of specified type | `a is! String` |
| `as`     | Cast to a specific type                 | `a as String`  |

---

## 🌀 Conditional Operators

Useful for simplifying conditional logic.

### 1. Ternary Operator

```dart
condition ? expr1 : expr2
```

**Example:**

```dart
int age = 18;
String status = (age >= 18) ? 'Adult' : 'Minor';
```

### 2. Null-aware Operators

| Operator | Description           | Example                                   |
| -------- | --------------------- | ----------------------------------------- |
| `??`     | If null               | `a ?? b` (use `b` if `a` is null)         |
| `?.`     | Null-aware access     | `a?.length` (if `a` is null, return null) |
| `??=`    | Null-aware assignment | `a ??= 5` (assign 5 if `a` is null)       |

---

## 🧪 Cascade Notation Operator `..`

Allows multiple operations on the same object.

```dart
myObject
  ..method1()
  ..method2();
```

---

## 🧰 Operator Methods (Overloading)

In Dart, you can override operators for your custom classes using special method names. This is called **operator overloading**.

### Common Operator Methods

| Operator | Method Signature        |
| -------- | ----------------------- |
| `+`      | `operator +(OtherType)` |
| `-`      | `operator -(OtherType)` |
| `*`      | `operator *(OtherType)` |
| `/`      | `operator /(OtherType)` |
| `==`     | `operator ==(Object)`   |

### Example

```dart
class Vector {
  final int x, y;
  Vector(this.x, this.y);

  Vector operator +(Vector other) {
    return Vector(x + other.x, y + other.y);
  }

  @override
  String toString() => '($x, $y)';
}

void main() {
  var v1 = Vector(2, 3);
  var v2 = Vector(1, 1);
  var result = v1 + v2;
  print(result); // Output: (3, 4)
}
```

---

## 📌 Example Summary

```dart
int a = 5;
a += 3; // 8
bool isAdult = (a > 18) ? true : false;
int? b;
b ??= 10; // if b is null, assign 10
```

---

## 🧾 Notes

* Dart operators can be **overloaded** using special functions called *operator methods*.
* Proper use of operators increases code **clarity and efficiency**.

---

Happy coding with Dart! 🐋✨
