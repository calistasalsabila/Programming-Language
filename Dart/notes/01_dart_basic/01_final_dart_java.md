# 🐋 Dart vs ☕ Java: `final` Keyword Comparison

## 🎯 Purpose of `final`

Both Dart and Java use the `final` keyword to declare **immutable variables**, meaning once a value is assigned, it cannot be changed.

But the syntax and usage style is slightly different between the two languages.

---

## 🐬 Dart: `final` Keyword

* Dart allows `final` variables to be declared without explicitly stating their type.
* The type is either **inferred** or can be **explicitly declared**.

### ✅ Syntax Examples:

```dart
final age = 21;           // type inferred as int
final String name = 'Dokja';
```

You can also use `const` in Dart when the value is **known at compile time**:

```dart
const pi = 3.14159;       // compile-time constant
```

⚠️ **Difference between `final` and `const` in Dart:**

* `final`: Runtime constant
* `const`: Compile-time constant

---

## ☕ Java: `final` Keyword

* In Java, the **type must be explicitly declared** when using `final`.
* No type inference like Dart.

### ✅ Syntax Example:

```java
final int age = 21;
final String name = "Dokja";
```

Java does **not** have an equivalent to Dart's `const` for compile-time constants — instead, Java uses `static final` for constants shared across instances:

```java
public static final double PI = 3.14159;
```

---

## 🔄 Reassignment Behavior

Both languages throw an error when attempting to reassign a `final` variable:

### Dart:

```dart
final hero = 'Jeha';
hero = 'Hamin'; // ❌ Error: can't assign to final variable
```

### Java:

```java
final String hero = "Jeha";
hero = "Hamin"; // ❌ Error: cannot assign a value to final variable
```

---

## ✅ Comparison Table

| Feature                | Dart                        | Java                         |
| ---------------------- | --------------------------- | ---------------------------- |
| Type Inference         | ✅ Yes (e.g., `final a = 5`) | ❌ No (must declare type)     |
| Requires Type Keyword? | ❌ Optional                  | ✅ Required                   |
| Runtime Constant       | `final`                     | `final`                      |
| Compile-Time Constant  | `const`                     | `static final` (for classes) |
| Reassign Allowed?      | ❌ No                        | ❌ No                         |

---

## 🧠 Summary

* Dart gives more **flexibility** with type inference and offers both `final` and `const`.
* Java is more **strict**, always requiring an explicit type declaration with `final`.

> "Choose `final` when you know the value won’t change — no matter if you code in Dart 🐋 or Java ☕!"
