# Dart `dynamic` Type

## 1. Overview

In Dart, `dynamic` is a special type that allows a variable to hold values of any type. It disables static type checking, making the variable's type flexible but less safe. This is useful in situations where the type of value isn’t known at compile time.

---

## 2. Goals

1. Understand the role of the `dynamic` type in Dart.
2. Learn the differences between `dynamic`, `var`, and `Object`.
3. See real-world use cases and caveats of using `dynamic`.

---

## 3. What is `dynamic`?

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

Output:

```
42
Now I am a string
true
```

---

## 4. `dynamic` vs `var` vs `Object`

| Keyword   | Type Inference  | Reassignable to Other Types       | Compile-Time Type Checking | Description                               |
| --------- | --------------- | --------------------------------- | -------------------------- | ----------------------------------------- |
| `var`     | Yes             | No (type fixed after inference)   | Yes                        | Type-safe variable with inferred type     |
| `Object`  | No (explicit)   | Yes                              | Yes                        | Base type of all types with static typing |
| `dynamic` | No (explicit)   | Yes                              | No                         | Any type, no type checking                |

Example Differences:

```dart
void main() {
  var name = 'Dokja';
  // name = 100; // Error: A value of type 'int' can't be assigned to a variable of type 'String'.

  Object obj = 'Hamin';
  obj = 123; // OK

  dynamic anything = 'Jeha';
  anything = false; // OK
}
```

---

## 5. When to Use `dynamic`

Dynamic is useful in:

1. JSON parsing from APIs (where structure isn't known)
2. Legacy code migration
3. Handling unpredictable input (e.g. user form fields)

Avoid if:

1. You can determine the type at compile time
2. Type safety is important

---

## 6. Method Call Behavior

With `dynamic`, Dart does not check method existence at compile time.

```dart
void main() {
  dynamic message = 'Hello';
  print(message.toUpperCase()); // Works

  // print(message.notExist()); // Runtime error: No such method
}
```

---

## 7. Drawbacks of `dynamic`

1. No autocomplete support in IDEs
2. No compile-time error detection (higher risk of runtime errors)
3. Harder to maintain and refactor code

---

## 8. Best Practices

1. Use `dynamic` only when necessary.
2. Prefer `var` or `Object` if type uncertainty is not required.
3. Wrap dynamic code with type checks or try-catch blocks.

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

## 9. Resources

- [Dart Language Tour – dynamic](https://dart.dev/language#dynamic)
- [Dart static vs dynamic types](https://dart.dev/guides/language/type-system)

> 📚 This is part of the Dart basic chapter.

