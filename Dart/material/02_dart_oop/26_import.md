# 📦 Importing in Dart

In Dart, importing is the process of making code from one file available in another. This enables modular programming, code reuse, and better project organization.

---

## 📚 Why Use Imports?

* Reuse functions, classes, constants, or variables defined in other files.
* Split a large codebase into smaller, manageable parts.
* Utilize external libraries or packages from Dart or Flutter SDK.

---

## 🔹 Basic Import Syntax

```dart
import 'path/to/file.dart';
```

**Example:**

```dart
// math_utils.dart
int add(int a, int b) => a + b;
```

```dart
// main.dart
import 'math_utils.dart';

void main() {
  print(add(5, 3)); // Output: 8
}
```

---

## 🧭 Types of Imports

### 1. **Relative Import**

Used for files within the same project.

```dart
import 'utils/helper.dart';
```

### 2. **Absolute Import**

Common in packages. Starts with `package:` prefix.

```dart
import 'package:my_app/utils/helper.dart';
```

### 3. **Dart SDK Import**

For core Dart libraries.

```dart
import 'dart:math';
import 'dart:io';
```

### 4. **External Package Import**

From `pub.dev` packages.

```dart
import 'package:http/http.dart';
import 'package:flutter/material.dart';
```

---

## ✳️ Show and Hide Members

To control what members are visible from the imported file:

### 🔸 Show Specific Members

```dart
import 'math_utils.dart' show add;
```

### 🔸 Hide Specific Members

```dart
import 'math_utils.dart' hide subtract;
```

---

## 🆔 Using Aliases

If two files have conflicting class or function names, use an alias:

```dart
import 'utils_a.dart' as a;
import 'utils_b.dart' as b;

void main() {
  a.printData();
  b.printData();
}
```

---

## 🌀 Deferred Imports

Used for lazy loading. Improves startup performance by loading the library only when needed.

```dart
import 'expensive_library.dart' deferred as expensiveLib;

Future<void> main() async {
  await expensiveLib.loadLibrary();
  expensiveLib.runHeavyTask();
}
```

---

## ❗ Common Mistakes

1. **Incorrect file path**
   *Check whether the relative or absolute path is valid.*
2. **Forgetting `pubspec.yaml` dependencies**
   *External packages must be declared in `pubspec.yaml`.*
3. **Import cycles**
   *Avoid circular imports which can lead to runtime issues.*

---

## ✅ Best Practices

* Prefer `package:` imports over relative paths for larger projects.
* Use `as` to avoid naming collisions.
* Keep your imports organized: standard libraries, package imports, project files.
* Avoid unnecessary imports to reduce clutter.

---

## 🧪 Example: Organized Imports

```dart
// Built-in Dart libraries
import 'dart:io';
import 'dart:convert';

// External packages
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// Local files
import 'services/api_service.dart';
import 'models/user.dart';
```

---

By mastering Dart imports, you’ll write cleaner, more efficient, and more scalable applications. Organize your project wisely and use each import type as needed.
