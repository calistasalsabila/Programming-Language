# 🐋 Dart: Ternary Operator (`?:`)

## 🎯 Purpose

The ternary operator provides a short, concise way to evaluate a condition and choose between two expressions. It's a shorthand for simple `if-else` statements.

## 🧠 Syntax

```dart
condition ? expr1 : expr2;
```

* If `condition` is true → returns `expr1`
* If `condition` is false → returns `expr2`

## 📦 Notes

* Always returns a value
* Best used for **simple conditions**, not for complex logic
* Can be **nested**, but readability suffers — avoid deeply nested ternaries

## 🔍 Example 1: Basic usage

```dart
void main() {
  int a = 10;
  int b = 20;

  String result = (a > b) ? 'A is greater' : 'B is greater';
  print(result);
}
```

## 🧪 Output

```
B is greater
```

## 📚 Explanation

* Checks if `a > b` → false
* So it evaluates and returns `'B is greater'`

---

## 🔍 Example 2: Assigning with ternary

```dart
void main() {
  int score = 75;
  String status = (score >= 60) ? 'Pass' : 'Fail';
  print('Status: $status');
}
```

## 🧪 Output

```
Status: Pass
```

---

## 🔍 Example 3: Nested ternary (⚠️ use with care)

```dart
void main() {
  int number = 0;

  String result = (number > 0)
      ? 'Positive'
      : (number < 0)
          ? 'Negative'
          : 'Zero';

  print(result);
}
```

## 🧪 Output

```
Zero
```

## 📚 Explanation

* Checks `number > 0` → false
* Checks `number < 0` → false
* So it returns `'Zero'`

---

## ✅ Best Practices

* Use ternary for **simple**, **readable** conditions
* Prefer `if-else` when logic gets complex
* Avoid ternary if readability suffers due to too much nesting

Ternary operators help make your code shorter and cleaner — but like any sharp tool, use them wisely! ✂️
