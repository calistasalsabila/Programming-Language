## Dart Symbols

### 1. Definition

In Dart, a `Symbol` is an immutable object that represents the name of a variable, method, or property. Symbols are mainly used when working with **reflection**, providing a way to reference identifiers without using string literals directly.

### 2. Purpose of Using Symbols

1. To reference names without risking typos or naming conflicts.
2. Used in reflective operations via the `dart:mirrors` library.
3. Useful in dynamic method or property access.

### 3. Creating Symbols

There are two ways to create symbols in Dart:

#### 3.1 Using the `Symbol()` constructor

```dart
var symbol1 = Symbol('name');
```

#### 3.2 Using the shorthand syntax `#`

```dart
var symbol2 = #name;
```

Both of the above lines create the same `Symbol` object.

### 4. Example Usage

For example, comparing or storing method names as symbols:

```dart
void main() {
  Symbol s1 = Symbol("toString");
  Symbol s2 = #toString;

  print(s1 == s2); // Output: true
}
```

### 5. Using Symbols with Reflection

```dart
import 'dart:mirrors';

class Example {
  void greet() => print("Hello from greet method!");
}

void main() {
  var obj = Example();
  var mirror = reflect(obj);

  mirror.invoke(#greet, []); // Dynamically invokes the "greet" method
}
```

### 6. Important Notes

1. Symbols store only names without any context.
2. You cannot directly access the name inside a `Symbol` as a string without using reflection.
3. Symbols are commonly used in frameworks like Flutter for key management, animation, or serialization.

### 7. Converting Symbol to String

To convert a `Symbol` to a `String`, use `MirrorSystem.getName()`:

```dart
import 'dart:mirrors';

void main() {
  Symbol s = #example;
  String name = MirrorSystem.getName(s);
  print(name); // Output: example
}
```

### 8. When to Use Symbols?

Use symbols when:

1. You need a safe, immutable representation of a name.
2. You're working with reflection.
3. You want to prevent typos in dynamic name references.

### 9. Summary

Symbols in Dart provide a secure and efficient way to handle name references, especially in reflective programming. While not used in most common application code, understanding symbols is essential when building libraries, frameworks, or dynamic systems.

---

> In Dart, symbols are represented with the shorthand `#name`, and are especially useful for dynamic and safe access to methods or properties.

---

### 10. Official Documentation

* [Symbol - dart\:core](https://api.dart.dev/stable/dart-core/Symbol-class.html)
* [Reflection - dart\:mirrors](https://api.dart.dev/stable/dart-mirrors/dart-mirrors-library.html)

> 📚 This is part of the Dart basic chapter.

