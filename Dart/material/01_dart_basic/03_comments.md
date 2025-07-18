# 🐋 Dart Comments Guide

📘 This guide explains how to use comments in Dart programming language.

---

## ✨ Purpose of Comments

Comments are used to:

* Explain the purpose of code
* Make code more readable
* Temporarily disable parts of code for debugging
* Provide documentation for functions and classes

---

## 📝 Types of Comments in Dart

Dart supports three types of comments:

### 1. Single-line Comment

Use `//` to write a comment that occupies one line.

```dart
// This is a single-line comment
print('Hello, Dokja!'); // This prints a greeting
```

### 2. Multi-line Comment

Use `/* ... */` to write comments that span multiple lines.

```dart
/*
 This is a multi-line comment.
 It can explain a block of code in more detail.
*/
print('Hello, Jeha!');
```

### 3. Documentation Comment

Use `///` to write comments that document libraries, classes, or members. These can be parsed by documentation generators like Dartdoc.

````dart
/// Returns the sum of two integers.
///
/// Example:
/// ```dart
/// var result = add(3, 5); // 8
/// ```
int add(int a, int b) => a + b;
````

---

## 🛠️ Tips for Writing Good Comments

* Keep comments concise and relevant
* Avoid stating the obvious (e.g., `// Adds a + b` for `a + b` is redundant)
* Use doc comments (`///`) for all public APIs
* Update comments when you update code

---

## 📌 Example Summary

```dart
// Single-line
print('Hello, Hamin!');

/* Multi-line
   explaining logic */
print('Welcome back, Dazai!');

/// Returns product of two numbers
double multiply(double x, double y) => x * y;
```

---

## 📚 Reference

* [Dart Language Tour - Comments](https://dart.dev/guides/language/language-tour#comments)

---

Happy coding with Dart 🐋!
