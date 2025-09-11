# Cascade Notation in Dart

Cascade notation (`..`) in Dart allows you to make a sequence of operations on the same object, saving you from having to refer to that object repeatedly. This improves readability and reduces boilerplate when working with objects.

---

## Why Use Cascade Notation?
Instead of:

```dart
var student = Student();
student.name = 'Dokja';
student.age = 22;
student.register();
```

You can use:

```dart
var student = Student()
  ..name = 'Dokja'
  ..age = 22
  ..register();
```

This improves readability, especially when setting multiple properties or calling multiple methods on the same object.

---

## Syntax Overview

```dart
object
  ..property1 = value1
  ..method1()
  ..property2 = value2;
```

- The `..` operator returns the original object after evaluating the expression.
- You can chain multiple cascades.
- Works with both methods and properties.

---

## 🧪 Example: Basic Usage

```dart
class Book {
  String? title;
  String? author;

  void displayInfo() {
    print('Title: \$title');
    print('Author: \$author');
  }
}

void main() {
  var book = Book()
    ..title = 'Omniscient Reader'
    ..author = 'SingShong'
    ..displayInfo();
}
```

**Output:**
```
Title: Omniscient Reader
Author: SingShong
```

---

## Using Cascade with Returned Objects
You can use cascades on expressions that return objects too:

```dart
getStudent() => Student();

void main() {
  getStudent()
    ..name = 'Jeha'
    ..age = 20
    ..register();
}
```

---

## Things to Remember

- Cascade only works with **non-null** objects.
  - Use null-aware cascade `?..` if the object might be null (Dart 3+ supports this in experimental form).
- You cannot use `await` directly in a cascade chain. Consider breaking it if needed.
- Avoid chaining if it reduces clarity.

---

## Real-World Use Case: Flutter Example

```dart
final controller = TextEditingController()
  ..text = 'Hello World'
  ..selection = TextSelection.collapsed(offset: 5);
```

---

## When to Use
Use cascade notation when:
- Initializing an object with multiple properties.
- Calling multiple methods on the same object.
- You want cleaner and more readable code.

---

## When Not to Use
Avoid using cascades when:
- You're mixing in async/await in the chain.
- The cascade is too long and hurts readability.
- You need to return the result of the last expression in the chain (cascade always returns the original object).

---

## Summary
| Feature | Description |
|--------|-------------|
| Operator | `..` |
| Purpose | Access members on the same object without repeating the object name |
| Returns | The original object |
| Use with | Properties, Methods |
| Improves | Readability, Conciseness |

Cascade notation is a powerful syntactic sugar in Dart, especially when you're working with fluent-style object configuration or builders.

---
> 📚 This is part of the Dart OOP chapter.



