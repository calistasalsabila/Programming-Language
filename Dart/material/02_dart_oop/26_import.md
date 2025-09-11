# Importing in Dart

In Dart, importing is the process of making code from one file available in another. This enables modular programming, code reuse, and better project organization.

---

## 1. Why Use Imports

* Reuse functions, classes, constants, or variables defined in other files.
* Split a large codebase into smaller, manageable parts.
* Utilize external libraries or packages from Dart or Flutter SDK.

---

## 2. Basic Import Syntax

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

## 3. Types of Imports

### 3.1 Relative Import

Used for files within the same project.

```dart
import 'utils/helper.dart';
```

### 3.2 Absolute Import

Common in packages. Starts with `package:` prefix.

```dart
import 'package:my_app/utils/helper.dart';
```

### 3.3 Dart SDK Import

For core Dart libraries.

```dart
import 'dart:math';
import 'dart:io';
```

### 3.4 External Package Import

From `pub.dev` packages.

```dart
import 'package:http/http.dart';
import 'package:flutter/material.dart';
```

---

## 4. Show and Hide Members

To control what members are visible from the imported file:

### 4.1 Show Specific Members

```dart
import 'math_utils.dart' show add;
```

### 4.2 Hide Specific Members

```dart
import 'math_utils.dart' hide subtract;
```

---

## 5. Using Aliases

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

## 6. Deferred Imports

Used for lazy loading. Improves startup performance by loading the library only when needed.

```dart
import 'expensive_library.dart' deferred as expensiveLib;

Future<void> main() async {
  await expensiveLib.loadLibrary();
  expensiveLib.runHeavyTask();
}
```

---

## 7. Common Mistakes

1. Incorrect file path  
   *Check whether the relative or absolute path is valid.*
2. Forgetting `pubspec.yaml` dependencies  
   *External packages must be declared in `pubspec.yaml`.*
3. Import cycles  
   *Avoid circular imports which can lead to runtime issues.*

---

## 8. Best Practices

* Prefer `package:` imports over relative paths for larger projects.
* Use `as` to avoid naming collisions.
* Keep your imports organized: standard libraries, package imports, project files.
* Avoid unnecessary imports to reduce clutter.

---

## 9. Example: Organized Imports

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
> 📚 This is part of the Dart OOP chapter.

