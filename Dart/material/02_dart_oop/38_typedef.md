#  Dart `typedef`

##  Introduction

In Dart, **`typedef`** is a keyword used to create an alias for function signatures or complex function types. It allows developers to give a name to a specific function type, making the code more **readable, reusable, and easier to maintain**.

This feature is particularly useful when working with **higher-order functions**, **callbacks**, or when defining **complex function signatures** that need to be reused multiple times.

---

##  Purpose of `typedef`

The main goals of using `typedef` in Dart are:

1. **Readability**: Instead of writing long function signatures repeatedly, you can assign them a short and descriptive name.
2. **Reusability**: Once defined, the function type can be reused across different parts of the code.
3. **Maintainability**: If the function signature changes, you only need to update the `typedef` definition instead of every usage.

---

## Syntax

```dart
typedef FunctionName = ReturnType Function(ParameterType1, ParameterType2, ...);
```

* **`FunctionName`** → Alias name you give to the function type.
* **`ReturnType`** → The return type of the function.
* **`ParameterType1, ParameterType2, ...`** → The parameter types of the function.

---

## 🔎 Example 1: Simple Typedef

```dart
typedef IntOperation = int Function(int a, int b);

int add(int a, int b) => a + b;
int subtract(int a, int b) => a - b;

void main() {
  IntOperation operation;

  operation = add;
  print(operation(5, 3)); // Output: 8

  operation = subtract;
  print(operation(5, 3)); // Output: 2
}
```

### Explanation

* We defined a `typedef` named **`IntOperation`**, which represents any function taking two integers and returning an integer.
* We assigned both `add` and `subtract` functions to the same variable type `IntOperation`.
* This makes the code cleaner and avoids repeating the function signature.

---

## 🔎 Example 2: Callback Functions with `typedef`

```dart
typedef Callback = void Function(String message);

void printMessage(String message) {
  print("Message: $message");
}

void processMessage(String text, Callback callback) {
  callback(text);
}

void main() {
  processMessage("Hello Dart!", printMessage);
}
```

### Explanation

* The `typedef Callback` defines a function type that takes a `String` and returns `void`.
* The `processMessage` function accepts a callback parameter of type `Callback`.
* This makes it clear what kind of function should be passed as a callback.

---

## 🔎 Example 3: Using `typedef` for Complex Function Types

```dart
typedef MathOperation = double Function(double x, double y);

double multiply(double x, double y) => x * y;
double divide(double x, double y) => x / y;

void perform(MathOperation op, double a, double b) {
  print("Result: ${op(a, b)}");
}

void main() {
  perform(multiply, 4, 2); // Result: 8.0
  perform(divide, 4, 2);   // Result: 2.0
}
```

### Explanation

* Instead of repeating `double Function(double, double)` every time, we use `MathOperation`.
* This makes the code **simpler, consistent, and readable**.

---

## 🔎 Example 4: Typedef with Anonymous Functions

```dart
typedef Filter = bool Function(int value);

List<int> filterList(List<int> numbers, Filter filter) {
  return numbers.where(filter).toList();
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6];

  // Pass anonymous function as a filter
  List<int> evenNumbers = filterList(numbers, (n) => n % 2 == 0);
  print(evenNumbers); // [2, 4, 6]
}
```

---

## ⚖️ `typedef` vs `Function`

In Dart, you can use either `Function` or `typedef` to declare function types. However, there are differences:

* **`Function` keyword**:

  * General-purpose but less descriptive.
  * Example: `void process(Function callback)` → unclear what parameters the function expects.

* **`typedef` keyword**:

  * Explicit and descriptive.
  * Example: `typedef Callback = void Function(String message);`
  * This makes it clear that the callback must accept a `String`.

Best practice: Use `typedef` when possible for **clarity and type safety**.

---

## Summary

* `typedef` in Dart creates an alias for function types.
* It improves **readability, reusability, and maintainability**.
* Commonly used in **callbacks**, **higher-order functions**, and **complex function types**.
* Prefer `typedef` over `Function` for **better clarity**.

---

## 🔗 Sources

* [Dart Language Tour - Typedefs](https://dart.dev/language/typedefs)

---
> 📚 This is part of the Dart OOP chapter.
