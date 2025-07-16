# 🐋 Understanding `List`, `var`, and `dynamic` in Dart

## 🎯 Goal

To understand how Dart handles lists, type inference using `var`, and the use of `dynamic`. This includes how Dart lists differ from Java arrays and when to use `var`, `List<T>`, or `dynamic`.

---

## 📚 Theory Explanation

### 1. Lists in Dart are Dynamic by Default

In Dart, `List` is a growable collection by default. This means its size can change during runtime, unlike Java arrays which have a fixed size.

```dart
void main() {
  List<int> numbers = [1, 2, 3];
  numbers.add(4);        // Add element
  numbers.remove(2);     // Remove element by value
  numbers.insert(1, 99); // Insert 99 at index 1
  
  print(numbers); // Output: [1, 99, 3, 4]
}
```

### 2. Fixed-size Lists in Dart

You can create a fixed-size list using `List.filled()`:

```dart
void main() {
  var fixedList = List<int>.filled(3, 0);
  print(fixedList); // [0, 0, 0]
  
  fixedList[1] = 42; // OK
  // fixedList.add(5); // ❌ Error: cannot add to a fixed-length list
}
```

---

## 🌟 Type Inference with `var`

### `var` is **not** the same as `dynamic`

When you use `var`, Dart infers the type from the initial value.

```dart
void main() {
  var list = [1, 2, 3]; // Inferred as List<int>
  list.add(4);          // OK
  // list.add("hello"); // ❌ Error: String is not assignable to int
}
```

### Explicitly Declaring Dynamic Lists

If you want a truly dynamic list (can hold multiple types):

```dart
void main() {
  var list = <dynamic>[1, "hello", true];
  list.add(3.14);
  print(list); // [1, hello, true, 3.14]
}
```

Or explicitly:

```dart
List<dynamic> list = [1, "hello", true];
```

---

## ⚡ The `dynamic` Type

Using `dynamic` allows you to change the variable's type at runtime:

```dart
void main() {
  dynamic x = 5;
  print(x); // 5

  x = "hello";
  print(x); // hello
}
```

Be careful: `dynamic` disables static type checks.

---

## 🔹 Summary Table

| Keyword   | Meaning                        | Allows Type Change After Declaration |
| --------- | ------------------------------ | ------------------------------------ |
| `var`     | Type inferred from first value | ❌ No                                 |
| `dynamic` | Type is flexible and unchecked | ✅ Yes                                |
| `Object`  | Base type, safer than dynamic  | ✅ Yes (but limited method access)    |

---

## 🔮 Conclusion

* Dart `List` is dynamic by default, unlike fixed-size Java arrays.
* Use `var` for clean code with known types.
* Use `dynamic` when you **really** need flexibility.
* Be cautious: overusing `dynamic` can lead to runtime errors that are hard to debug.

---

## 🔍 References

* Dart Language Tour: [https://dart.dev/guides/language/language-tour](https://dart.dev/guides/language/language-tour)
* Dart Collections: [https://dart.dev/guides/libraries/library-tour#collections](https://dart.dev/guides/libraries/library-tour#collections)
* Java Arrays: [https://docs.oracle.com/javase/tutorial/java/nutsandbolts/arrays.html](https://docs.oracle.com/javase/tutorial/java/nutsandbolts/arrays.html)

---

> Made with ❤ by Jip & Calista, the dynamic duo of Dart.
