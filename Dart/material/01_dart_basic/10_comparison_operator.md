# 🐋 Dart Comparison Operators

Comparison operators are used to compare two values. These operations return a `bool` result: `true` or `false`.
They are often used in conditional expressions such as `if`, `while`, and logical operations.

---

## ✨ Purpose

To evaluate the relationship between two operands (e.g., equal, not equal, greater than, less than).

---

## 🧠 Syntax & Description

| Operator | Description              | Example  |
| -------- | ------------------------ | -------- |
| `==`     | Equal to                 | `a == b` |
| `!=`     | Not equal to             | `a != b` |
| `>`      | Greater than             | `a > b`  |
| `<`      | Less than                | `a < b`  |
| `>=`     | Greater than or equal to | `a >= b` |
| `<=`     | Less than or equal to    | `a <= b` |

All these expressions evaluate to a boolean value (`true` or `false`).

---

## 🧪 Examples with Explanation

```dart
void main() {
  int dokja = 10;
  int jeha = 20;

  print(dokja == jeha);   // false ➤ 10 is not equal to 20
  print(dokja != jeha);   // true  ➤ 10 is not equal to 20
  print(dokja > jeha);    // false ➤ 10 is less than 20
  print(dokja < jeha);    // true  ➤ 10 is less than 20
  print(dokja >= 10);     // true  ➤ dokja is equal to 10
  print(jeha <= 15);      // false ➤ 20 is not less than or equal to 15
}
```

---

## 🔍 Use Cases

* Decision-making (`if`, `else if`, `else`)
* Loop conditions (`while`, `for`)
* Filtering or sorting data

---

## 📌 Notes

* Comparison can also be used for `String` and `double`, not just `int`.
* Dart comparison is **type-safe**: you can only compare values of compatible types.

```dart
void main() {
  String dazai = "apple";
  String hamin = "banana";

  print(dazai == hamin); // false ➤ "apple" is not equal to "banana"
  print(dazai != hamin); // true  ➤ they are different strings
}
```

---

## ✅ Summary

* Dart comparison operators return boolean values.
* They are used for equality and relational checks.
* Useful in conditional and logical programming structures.

> 🐋 Keep practicing comparisons in real-world conditionals to master Dart control flow!
