# 🐋 Understanding Dart  `print()` Syntax and Trailing Coma

In Dart 🐋, the `print()` function is used to display output in the console. You might encounter two slightly different ways to write it:

```dart
print(names);
```

and

```dart
print(
  names,
);
```

Both are **functionally identical**, but there are subtle differences in formatting style and potential use cases. Let's break this down step by step.

---

## 📌 Syntax and Explanation

### 1. Basic Syntax

```dart
print(expression);
```

* `print()` is a built-in Dart 🐋 function.
* `expression` is any valid Dart value, variable, or expression.
* Semicolon `;` is required at the end of the statement.

### 2. Multi-line with Trailing Comma

```dart
print(
  expression,
);
```

* This format is also valid.
* The trailing comma `,` is allowed and commonly used in **multi-line** formatting.
* Dart 🐋 formatter will automatically use this style when formatting long or nested expressions.

---

## 🎯 Purpose of Trailing Comma `,`

The **trailing comma** serves several purposes:

* ✅ Enables better automatic formatting by tools like `dartfmt` or VS Code
* 🧠 Improves readability in nested or complex calls
* 🧩 Makes adding/removing arguments easier and cleaner in diffs (especially in Git)

---

## ✅ Examples with Input and Output

### Example 1: Basic One-Liner

```dart
void main() {
  var name = 'Calista';
  print(name);
}
```

**Output:**

```
Calista
```

### Example 2: Multi-line with Trailing Comma

```dart
void main() {
  var name = 'Calista';
  print(
    name,
  );
}
```

**Output:**

```
Calista
```

### Example 3: Nested Function with Trailing Commas

```dart
void main() {
  print(
    someFunction(
      anotherFunction(
        'Hello',
      ),
    ),
  );
}
```

> In deeply nested calls, trailing commas improve readability and consistency.

---

## 📚 Summary

| Style                 | Valid | Use Case                                                 |
| --------------------- | ----- | -------------------------------------------------------- |
| `print(name);`        | ✅     | Simple, short expressions                                |
| `print(name,);`       | ✅     | Trailing comma is allowed, but unnecessary for one-liner |
| `print(\n  name,\n);` | ✅     | Preferred for multi-line formatting                      |

---

## ✅ Pros & ❌ Cons

### ✅ Pros of Using Trailing Comma:

* Cleaner diff when editing
* Encourages consistent formatting
* Easier to maintain with multiple arguments

### ❌ Cons:

* Unnecessary in one-line expressions
* Might look strange to beginners

---

## 🧠 Tip

Use trailing commas whenever you break an expression into multiple lines. Dart 🐋 tools will format your code better, and it will be easier to read and maintain.

---

## 🔚 Final Note

Both of the following are correct:

```dart
print(name);
```

```dart
print(
  name,
);
```

Choose based on context. Use the first for simple cases, and the second when readability matters in larger or nested structures.

Happy coding with Dart! 🐋✨
