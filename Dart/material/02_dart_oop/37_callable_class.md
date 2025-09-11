# Callable Class in Dart

## 1. Introduction
In Dart, a **callable class** is a class that can be invoked as if it were a function. This is possible because Dart allows you to define a special method named `call()` inside any class. When the object of that class is followed by parentheses `()`, Dart automatically triggers the `call()` method.

Callable classes provide a unique way to blend **object-oriented programming (OOP)** with **functional programming (FP)**. You can keep the benefits of encapsulation and state management from classes while enjoying the convenience and expressiveness of function-like behavior.

---

## 2. Syntax of a Callable Class
```dart
class ClassName {
  ReturnType call(Parameters) {
    // Method body
  }
}

void main() {
  var obj = ClassName();
  var result = obj(arguments); // Executes ClassName.call(arguments)
  print(result);
}
```

### Explanation of Syntax
- `call()` is a **special method** in Dart.
- You can define parameters inside `call()` like any normal method.
- Invoking the object `obj(arguments)` is equivalent to `obj.call(arguments)`.
- Return type can be `int`, `String`, `void`, or even `Future` depending on your needs.

---

## Example 1: Simple Callable Class
```dart
class Adder {
  int call(int a, int b) {
    return a + b;
  }
}

void main() {
  var sum = Adder();
  print(sum(3, 5)); // Output: 8
}
```

### Explanation
- The `Adder` class defines a `call()` method that takes two integers and returns their sum.
- `sum(3, 5)` is syntactic sugar for `sum.call(3, 5)`.

---

## Example 2: Callable Class with State
```dart
class Multiplier {
  final int factor;

  Multiplier(this.factor);

  int call(int value) {
    return value * factor;
  }
}

void main() {
  var doubleIt = Multiplier(2);
  var tripleIt = Multiplier(3);

  print(doubleIt(4)); // Output: 8
  print(tripleIt(4)); // Output: 12
}
```

### Explanation
- The `Multiplier` class stores a `factor` when instantiated.
- Calling the object multiplies the given value by that factor.
- Different objects (`doubleIt`, `tripleIt`) can have different behaviors.

---

## Example 3: Callable Class for String Processing
```dart
class Formatter {
  String call(String text) {
    return text.toUpperCase();
  }
}

void main() {
  var format = Formatter();
  print(format("hello world")); // Output: HELLO WORLD
}
```

### Explanation
- The `Formatter` class transforms any string to uppercase.
- Instead of calling a method explicitly, you can directly use the object like a function.

---

## Example 4: Callable Class Returning Future (Async)
```dart
class DelayedPrinter {
  Future<void> call(String message) async {
    await Future.delayed(Duration(seconds: 2));
    print(message);
  }
}

void main() async {
  var printer = DelayedPrinter();
  await printer("Hello after 2 seconds!");
}
```

### Explanation
- A callable class can also return `Future` or work asynchronously.
- This is helpful for network calls, timers, or delayed actions.

---

## Advantages of Callable Classes
1. Combine **OOP encapsulation** with **FP-style syntax**.
2. Create **reusable, stateful functions** in class form.
3. Improve readability with **cleaner syntax**.
4. Useful for **custom operators, mathematical models, data transformation, and callbacks**.

---

## Conclusion
Callable classes in Dart provide a clean and flexible way to design objects that behave like functions. By defining the `call()` method, developers can create stateful or stateless function-like objects, making the language more expressive and powerful. This approach is especially beneficial in scenarios involving **functional programming patterns**, **callbacks**, and **stateful transformations**.

--- 
> 📚 This is part of the Dart OOP chapter.
