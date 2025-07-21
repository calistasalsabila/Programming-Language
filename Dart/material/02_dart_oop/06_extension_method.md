# 🐋 Dart: Extension Methods

**Extension methods** in Dart allow you to add new functionality to existing classes **without modifying the original class** or creating a subclass. This feature is especially helpful when you want to enhance built-in types like `String`, `int`, `List`, etc.

---

## ✅ Purpose

* Extend the capabilities of existing types.
* Keep the original class untouched.
* Add reusable helper functions cleanly.

---

## 📚 Syntax

```dart
extension ExtensionName on Type {
  returnType methodName(parameters) {
    // method body
  }
}
```

---

## 🔸 Example 1: Extending `String`

```dart
extension StringExtension on String {
  bool isPalindrome() {
    String reversed = split('').reversed.join();
    return this == reversed;
  }
}

void main() {
  print("level".isPalindrome()); // Output: true
  print("Dokja".isPalindrome()); // Output: false
}
```

---

## 🔸 Example 2: Extending `int`

```dart
extension IntExtension on int {
  bool isEvenNumber() => this % 2 == 0;
}

void main() {
  print(4.isEvenNumber()); // Output: true
  print(7.isEvenNumber()); // Output: false
}
```

---

## 🔸 Example 3: Extension with Parameters

```dart
extension RepeatString on String {
  String repeat(int times) => List.filled(times, this).join();
}

void main() {
  print("ha".repeat(3)); // Output: hahaha
}
```

---

## 🔍 Notes

* You can name the extension (recommended) to avoid naming conflicts.
* If two extensions have the same method name on the same type, Dart uses the one that’s **imported last**.
* Extension methods can access public members of the extended class.

---

## 📦 Summary

| Feature          | Description                             |
| ---------------- | --------------------------------------- |
| Extension Method | Add methods to existing classes         |
| No inheritance   | Doesn't modify or extend original class |
| Usage            | Helpful for utilities and helpers       |
| Syntax           | `extension Name on Type {}`             |
| Limitation       | No access to private members            |

---

✨ Use extension methods to make your Dart code **cleaner**, **modular**, and **more expressive**, especially when working with built-in types or utility methods!
