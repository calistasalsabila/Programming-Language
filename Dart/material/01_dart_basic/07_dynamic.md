# 🐋 Dart `dynamic` Type

## 📌 Overview

In Dart, `dynamic` is a special type that allows a variable to hold values of any type. It disables static type checking, making the variable's type flexible but less safe. This is useful in situations where the type of value isn’t known at compile time.

---

## 🎯 Goals

* Understand the role of the `dynamic` type in Dart.
* Learn the differences between `dynamic`, `var`, and `Object`.
* See real-world use cases and caveats of using `dynamic`.

---

## 🧠 What is `dynamic`?

When you declare a variable as `dynamic`, Dart treats it like it can be anything:

```dart
void main() {
  dynamic value = 42;
  print(value);

  value = 'Now I am a string';
  print(value);

  value = true;
  print(value);
}
```

### Output

```
42
Now I am a string
true
```

---

## 🆚 `dynamic` vs `var` vs `Object`

| Keyword   | Type Inference  | Reassignable to Other Types       | Compile-Time Type Checking | Description                               |
| --------- | --------------- | --------------------------------- | -------------------------- | ----------------------------------------- |
| `var`     | ✅ Yes           | ❌ No (type fixed after inference) | ✅ Yes                      | Type-safe variable with inferred type     |
| `Object`  | ❌ No (explicit) | ✅ Yes                             | ✅ Yes                      | Base type of all types with static typing |
| `dynamic` | ❌ No (explicit) | ✅ Yes                             | ❌ No                       | Any type, no type checking                |

### Example Differences

```dart
void main() {
  var name = 'Dokja';
  // name = 100; // ❌ Error: A value of type 'int' can't be assigned to a variable of type 'String'.

  Object obj = 'Hamin';
  obj = 123; // ✅ OK

  dynamic anything = 'Jeha';
  anything = false; // ✅ OK
}
```

---

## 🛠 When to Use `dynamic`

✅ Useful in:

* JSON parsing from APIs (where structure isn't known)
* Legacy code migration
* Handling unpredictable input (e.g. user form fields)

🚫 Avoid if:

* You can determine the type at compile time
* Type safety is important

---

## 📦 Method Call Behavior

With `dynamic`, Dart does not check method existence at compile time.

```dart
void main() {
  dynamic message = 'Hello';
  print(message.toUpperCase()); // ✅ Works

  // print(message.notExist()); // ❌ Runtime error: No such method
}
```

---

## 🚨 Drawbacks of `dynamic`

* **No autocomplete support** in IDEs
* **No compile-time error detection** (higher risk of runtime errors)
* **Harder to maintain** and refactor code

---

## 📚 Best Practices

* Use `dynamic` **only when necessary**.
* Prefer `var` or `Object` if type uncertainty is not required.
* Wrap dynamic code with **type checks** or **try-catch blocks**.

```dart
void main() {
  dynamic data = 'Dart';

  if (data is String) {
    print(data.length);
  } else {
    print('Not a string');
  }
}
```

---

## 📚 Resources

* [Dart Language Tour – dynamic](https://dart.dev/language#dynamic)
* [Dart static vs dynamic types](https://dart.dev/guides/language/type-system)
