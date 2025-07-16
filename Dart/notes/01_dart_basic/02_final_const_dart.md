# Understanding `final` and `const` in Dart 🐋

## 🎯 Goal

To clearly understand the difference between `final` and `const` in Dart, so you can:

* Write safer and more efficient code 🧠
* Avoid unexpected runtime errors 🐞
* Optimize the performance of your Dart and Flutter applications 🚀

---

## 📚 Theory Explanation

### 🔹 `final`

* A `final` variable **can only be set once**.
* Its value is determined **at runtime**, not compile-time.
* Commonly used when you get the value from a function, API, or the current time.

```dart
final currentTime = DateTime.now(); // ✅ This is allowed
```

Use `final` when the value is:

* Immutable (unchangeable),
* But **not known until the app runs**.

---

### 🔸 `const`

* A `const` variable is also **immutable**, but the key difference is:

  * Its value **must be known at compile-time**.
* You can only assign constant expressions to it.

```dart
const pi = 3.14;
const appName = "Calista Scanner";
```

Use `const` when:

* The value is a **compile-time constant**,
* Already known **before** the program starts.

---

### ⚠️ Key Differences Between `final` and `const`

| Feature                             | `final`       | `const`                     |
| ----------------------------------- | ------------- | --------------------------- |
| Immutable                           | ✅             | ✅                           |
| Value set at                        | Runtime       | Compile-time                |
| Can be assigned with method results | ✅             | ❌                           |
| Flexibility                         | More flexible | More strict                 |
| Used with Flutter widgets           | Can be used   | Preferred for fixed widgets |

---

## 🧪 Code Example and Output

```dart
void main() {
  final now = DateTime.now(); // ✅ Allowed
  // const now2 = DateTime.now(); ❌ Error: not a constant expression

  const pi = 3.14;
  final name = "Dokja";

  final list1 = [1, 2, 3];
  list1.add(4); // ✅ Allowed: reference is final, content can change

  const list2 = [1, 2, 3];
  // list2.add(4); ❌ Error: const list can't be modified

  print("Final name: $name");
  print("Const pi: $pi");
  print("Final list1: $list1");
  print("Const list2: $list2");
}
```

🖨️ **Output:**

```
Final name: Dokja
Const pi: 3.14
Final list1: [1, 2, 3, 4]
Const list2: [1, 2, 3]
```

---

## 🧠 Shortcut Memory Tips

| If you want to...                           | Use              |
| ------------------------------------------- | ---------------- |
| Set a value once during runtime             | `final`          |
| Use a fixed value known before the app runs | `const`          |
| Create a non-changing widget in Flutter     | `const Widget()` |
| Ensure performance for small fixed values   | `const`          |

---

## 📌 Conclusion

* Use `final` when the value is determined **during execution**.
* Use `const` when the value is already **known and fixed**.
* Both help in writing **clean, immutable**, and **performant** code.

---

## 📎 References

* Official Dart Docs: [https://dart.dev/language/const](https://dart.dev/language/const)
* Dart Cheatsheet: [https://dart.dev/codelabs/dart-cheatsheet#final-and-const](https://dart.dev/codelabs/dart-cheatsheet#final-and-const)
* Try it on DartPad: [https://dartpad.dev/](https://dartpad.dev/)

---

Made with ❤️ by Calista & Jip the AI 🐋
