# Best Practices for Fields, Getters, and Setters in Dart

This guide outlines the recommended approach for using public fields, private fields, and getters/setters in Dart, based on common scenarios and Dart's language features.

---

## 1. Use Public Fields for Simple Data

If a field is just holding simple data (e.g., `name`, `age`) and you don't need validation or transformation, keep it **public**.

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);
}
```

**Advantages:**

* Shorter, cleaner code.
* No unnecessary getter/setter boilerplate.

---

## 2. Use Private Fields When You Need Control

If you need to validate, format, or otherwise control how a field is accessed or updated, make the field **private** (prefix with `_`) and expose it via public getters/setters.

```dart
class Person {
  String _name;

  Person(this._name);

  String get name => _name.toUpperCase(); // Format output

  set name(String value) {
    if (value.isNotEmpty) {
      _name = value.trim(); // Validation and cleanup
    }
  }
}
```

**Use cases:**

* Input validation.
* Output formatting.
* Read-only or write-restricted access.

---

## 3. Avoid `part of` Just to Share Private Fields

* `part`/`part of` is intended for splitting a large library into multiple files.
* Do **not** use it just to bypass privacy restrictions.
* Instead, use public getters/setters to safely expose data across files.

**Why?**

* `part of` merges internal scopes, which increases coupling and reduces maintainability.

---

## 4. Remember: Syntax Remains the Same

In Dart, changing a public field to a getter/setter does **not** break existing code:

```dart
p.name // Initially a public field
p.name // Later a getter — still accessed the same way
```

This is different from Java, where switching from a field to a method requires changes in the calling code.

---

## Summary Table

| Scenario                          | Recommendation                          |
| --------------------------------- | --------------------------------------- |
| Simple data (no logic)            | Public field                            |
| Needs validation/formatting       | Private field + public getter/setter    |
| Sharing private data across files | Use public getter/setter, not `part of` |

---

**In short:**

> Use public fields for simplicity. Use private fields with getters/setters when control is needed. Avoid getters/setters without logic purely for formality.
