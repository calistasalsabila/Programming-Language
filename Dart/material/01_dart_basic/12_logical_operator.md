# Dart Logical Operators

Logical operators are used to combine multiple boolean expressions or values and return a boolean result. In Dart, they are mainly used in conditional expressions like `if`, `while`, or ternary statements.

---

## 1. Purpose

Logical operators allow us to:

* Make decisions based on multiple conditions
* Combine or invert boolean values
* Control flow in logic-heavy parts of the program

---

## 2. List of Logical Operators

| Operator | Name         | Description                                         |
|----------|--------------|-----------------------------------------------------|
| `&&`     | Logical AND  | Returns `true` if **both** operands are true        |
| ` ` | Logical OR   | Returns `true` if **at least one** operand is true  |
| `!`      | Logical NOT  | Returns `true` if operand is false, and vice versa  |



---

## 3. Syntax & Examples

### 1. `&&` (Logical AND)

```dart
void main() {
  bool a = true;
  bool b = false;
  print(a && b); // Output: false
}
```

*Explanation:*

* `a && b` means: `true AND false` → result is `false`.
* Only returns `true` if **both** `a` and `b` are `true`.

---

### 2. `||` (Logical OR)

```dart
void main() {
  bool a = true;
  bool b = false;
  print(a || b); // Output: true
}
```

*Explanation:*

* `a || b` means: `true OR false` → result is `true`.
* Returns `true` if **either** `a` or `b` is `true`.

---

### 3. `!` (Logical NOT)

```dart
void main() {
  bool a = false;
  print(!a); // Output: true
}
```

*Explanation:*

* `!a` negates the value: `!false` → `true`.
* Only works with a **single** boolean value.

---

## 4. Real-world Example

```dart
void main() {
  int age = 22;
  bool hasID = true;

  if (age >= 18 && hasID) {
    print("Access granted.");
  } else {
    print("Access denied.");
  }
}
```

*Explanation:* The program checks if both conditions are met:

* `age >= 18` is `true`
* `hasID` is `true`
  ➡️ Result: both are true → `Access granted.`

---

## 5. Notes

* Logical operators are **short-circuit**:

  * `a && b`: if `a` is `false`, Dart doesn't evaluate `b`
  * `a || b`: if `a` is `true`, Dart doesn't evaluate `b`
* This can optimize performance or avoid runtime errors

---

## 6. Summary

| Operator | Meaning | Result is `true` when... |    |                              |
| -------- | ------- | ------------------------ | -- | ---------------------------- |
| `&&`     | AND     | both operands are true   |    |                              |
| \`       |         | \`                       | OR | at least one operand is true |
| `!`      | NOT     | operand is false         |    |                              |


> 📚 This is part of the Dart basic chapter.

