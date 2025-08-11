# Understanding Private Fields and Getters/Setters in Dart

In Dart, the concept of **private** members works differently compared to languages like Java or C#. This document will explain how private fields work, how getters and setters interact with them, and the differences between accessing them via `import` and `part of`.

---

## 1. How Privacy Works in Dart

* Dart does **not** use access modifiers like `private` or `public`.
* Instead, Dart uses an **underscore (`_`)** prefix to mark a member as private.
* Privacy in Dart is **library-based**, not class-based. This means:

  * A private member (`_field`) is accessible **only within the same library**.
  * A *library* in Dart is typically one `.dart` file, unless multiple files are combined using `part` and `part of`.

---

## 2. Accessing Private Fields Across Files

### 2.1 Same Library (Same File or `part of`)

* If two files are part of the same library, a private field can be accessed directly.
* This requires `part` and `part of` declarations.

Example:

```dart
// person.dart
library person_lib;
part 'utils.dart';

class Person {
  String _name;
  Person(this._name);
}
```

```dart
// utils.dart
part of 'person.dart';

void debugPerson(Person p) {
  print(p._name); // ✅ allowed (same library)
}
```

---

### 2.2 Different Libraries (Using `import`)

* If two files are separate libraries, a private field cannot be accessed directly, even if they are in the same folder.

Example:

```dart
// person.dart
class Person {
  String _name;
  Person(this._name);
}
```

```dart
// main.dart
import 'person.dart';

void main() {
  var p = Person("Calista");
  print(p._name); // ❌ ERROR: '_name' is private
}
```

---

## 3. How Getters and Setters Affect Access

### 3.1 Public Getters/Setters for a Private Field

If you make a **public** getter or setter (without `_`), you can expose a private field to other files **via `import`**.

Example:

```dart
// person.dart
class Person {
  String _name; // private

  Person(this._name);

  String get name => _name; // public getter
  set name(String value) => _name = value; // public setter
}
```

```dart
// main.dart
import 'person.dart';

void main() {
  var p = Person("Calista");
  print(p.name);  // ✅ works via getter
  p.name = "Akira"; // ✅ works via setter
}
```

---

### 3.2 Private Field Without Getter/Setter

If you do not create a public getter/setter, the private field remains inaccessible outside the library.

Example:

```dart
// person.dart
class Person {
  String _name; // private
  Person(this._name);
}
```

```dart
// main.dart
import 'person.dart';

void main() {
  var p = Person("Calista");
  print(p._name); // ❌ ERROR
}
```

---

## 4. Summary Table

| Scenario                             | Access From Same File | Access From `part of` | Access From `import` |
| ------------------------------------ | --------------------- | --------------------- | -------------------- |
| Public field                         | ✅                     | ✅                     | ✅                    |
| Private field (no getter/setter)     | ✅                     | ✅                     | ❌                    |
| Private field + public getter/setter | ✅                     | ✅                     | ✅                    |

---

## 5. Key Takeaways

* **Private in Dart = underscore `_` + restricted to same library.**
* Libraries are file-based unless combined with `part` and `part of`.
* Public getters/setters allow you to safely expose private fields across files via `import`.
* Use getters/setters when you want to hide the actual field but still allow controlled access.

---

This approach gives Dart developers flexibility: you can start with public fields for simplicity, then later make them private and add getters/setters without breaking existing code syntax.
