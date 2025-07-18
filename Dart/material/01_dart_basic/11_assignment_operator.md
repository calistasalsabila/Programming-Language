# 🐋 Dart Assignment Operators

Assignment operators are used to assign values to variables. In Dart, they can also perform an operation and assign the result at the same time.

---

## ✨ Purpose

To assign values to variables, and in some cases, combine operations with assignment (like `+=`, `*=`, etc).

---

## 🧠 Syntax & Description

### 🔗 Basic Assignment Operators

| Operator | Description               | Example             |
| -------- | ------------------------- | ------------------- |
| `=`      | Assign value              | `a = 5`             |
| `+=`     | Add and assign            | `a += 3` (a = a+3)  |
| `-=`     | Subtract and assign       | `a -= 2` (a = a-2)  |
| `*=`     | Multiply and assign       | `a *= 4` (a = a\*4) |
| `/=`     | Divide and assign         | `a /= 2` (a = a/2)  |
| `~/=`    | Integer divide and assign | `a ~/= 2`           |
| `%=`     | Modulo and assign         | `a %= 3` (a = a%3)  |

### 🔼 Increment & Decrement Operators

| Operator | Description    | Example                                     |
| -------- | -------------- | ------------------------------------------- |
| `++a`    | Pre-increment  | `a = 5; ++a;` ➤ `a` becomes 6 before use    |
| `a++`    | Post-increment | `a = 5; a++;` ➤ `a` is used, then becomes 6 |
| `--a`    | Pre-decrement  | `a = 5; --a;` ➤ `a` becomes 4 before use    |
| `a--`    | Post-decrement | `a = 5; a--;` ➤ `a` is used, then becomes 4 |

These operators increase or decrease a value by 1.

---

## 🧪 Examples with Explanation

```dart
void main() {
  int a = 10;

  a += 5;  // a = a + 5 ➤ a becomes 15
  print(a);

  a -= 3;  // a = a - 3 ➤ a becomes 12
  print(a);

  a *= 2;  // a = a * 2 ➤ a becomes 24
  print(a);

  a ~/= 4; // a = a integer-divided by 4 ➤ a becomes 6
  print(a);

  a %= 4;  // a = a % 4 ➤ a becomes 2
  print(a);

  a = 100; // direct assignment
  print(a); // ➤ a is now 100

  // Increment & Decrement
  a++; // post-increment ➤ a becomes 101
  print(a);

  ++a; // pre-increment ➤ a becomes 102
  print(a);

  a--; // post-decrement ➤ a becomes 101
  print(a);

  --a; // pre-decrement ➤ a becomes 100
  print(a);
}
```

---

## 🔍 Use Cases

* Updating counters and scores
* Modifying variables in loops
* Applying calculations and storing results efficiently
* Looping with increment/decrement values

---

## 📌 Notes

* `/=` returns `double`, while `~/=` returns `int`.
* These operators simplify code and reduce redundancy.
* Increment/decrement can be used as prefix (`++a`) or postfix (`a++`), with different behavior in expressions.
* Assignment operators can be used with any numeric types like `int`, `double`, and even custom classes that overload operators.

```dart
void main() {
  double b = 9.0;
  b /= 2;
  print(b); // ➤ 4.5 (division returns double)
}
```

---

## ✅ Summary

* Assignment operators simplify variable value updates.
* Dart supports combined arithmetic-assignment operators.
* Use `~/=` for integer division and `/=` for floating-point division.
* Use `++` and `--` to quickly increment or decrement values by 1.

> 🐋 Mastering assignment operators helps you write concise and efficient Dart code!
