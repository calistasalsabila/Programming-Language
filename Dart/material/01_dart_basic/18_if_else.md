# 🐋 Dart: `if` / `else` Statement

Control flow in Dart often uses conditional statements to execute different code based on specific conditions. One of the most fundamental constructs is the `if` / `else` statement.

---

## 🧠 Purpose

The `if` / `else` statement allows a program to make decisions and execute certain blocks of code only if specific conditions are met.

---

## 🧩 Syntax

```dart
if (condition) {
  // code to execute if condition is true
} else {
  // code to execute if condition is false
}
```

### 🧾 Explanation

* `condition`: A boolean expression (returns `true` or `false`).
* `{}`: Denotes the block of code.
* `if`: Executes the code block if the condition is true.
* `else`: Executes the code block if the condition is false.

---

## 🧮 Example 1: Basic `if` / `else`

```dart
void main() {
  int a = 10;
  int b = 20;

  if (a > b) {
    print('a is greater than b');
  } else {
    print('a is not greater than b');
  }
}
```

### 💡 Output

```
a is not greater than b
```

---

## 🔀 `if` / `else if` / `else`

This allows multiple conditions to be checked in sequence.

### 🧩 Syntax

```dart
if (condition1) {
  // code if condition1 is true
} else if (condition2) {
  // code if condition2 is true
} else {
  // code if none of the conditions are true
}
```

### 🧮 Example 2: Grading System

```dart
void main() {
  int score = 85;

  if (score >= 90) {
    print('Grade: A');
  } else if (score >= 80) {
    print('Grade: B');
  } else if (score >= 70) {
    print('Grade: C');
  } else {
    print('Grade: F');
  }
}
```

### 💡 Output

```
Grade: B
```

---

## 🎯 Nested `if` / `else`

An `if` / `else` statement can be placed inside another `if` / `else` block.

### 🧮 Example 3: Nested Condition

```dart
void main() {
  int number = 0;

  if (number >= 0) {
    if (number == 0) {
      print('Number is zero');
    } else {
      print('Number is positive');
    }
  } else {
    print('Number is negative');
  }
}
```

### 💡 Output

```
Number is zero
```

---

## ⚠️ Notes

* Always use boolean expressions in `if` conditions.
* You can omit `{}` for one-line code blocks, but it's best practice to keep them for readability.

```dart
if (a < b) print('a is smaller'); // valid, but not recommended for multiple lines
```

---

## ✅ Use Cases

* Decision-making logic
* Form validation
* Conditional rendering in UI
* Control flow in loops and functions

---

## 🧼 Best Practices

* Use `else if` instead of multiple `if` when only one condition can be true.
* Keep conditionals readable and avoid complex nested logic if possible.
* Use proper indentation.

---

> 📚 The `if` / `else` structure is the building block of decision-making in Dart, useful across logic, UI conditions, and algorithms.
