# Understanding the `static` Keyword in Dart

This document provides a comprehensive explanation of the `static` keyword in Dart, including its purpose, usage, best practices, and examples. It is intended for developers who want to understand how to define class-level members and leverage static behavior effectively.

---

## 1. Introduction to `static`

In Dart, the `static` keyword is used to define **class-level members** rather than instance-level members. A static member (variable or method) belongs to the class itself, not to any particular instance of that class. This means that you can access a static member using the class name, and it remains the same across all instances of the class.

Key characteristics:

* Shared across all instances of the class.
* Accessible without creating an object of the class.
* Useful for constants, utility methods, and shared resources.

---

## 2. Static Variables

A static variable is a field that is shared by all instances of the class. All instances read and write to the same memory location for this variable.

### 2.1 Declaration

```dart
class Counter {
  static int count = 0;

  void increment() {
    count++;
  }
}
```

### 2.2 Accessing Static Variables

You do not need to create an object to access a static variable:

```dart
void main() {
  print(Counter.count); // Output: 0
  Counter.count = 5;
  print(Counter.count); // Output: 5
}
```

### 2.3 Shared State Example

Because `count` is shared, every call to `increment()` from any instance affects the same variable:

```dart
void main() {
  Counter c1 = Counter();
  Counter c2 = Counter();

  c1.increment();
  c2.increment();

  print(Counter.count); // Output: 2
}
```

This demonstrates that the `count` variable is shared across all instances.

---

## 3. Static Methods

Static methods belong to the class rather than to instances. They cannot access instance variables or methods directly because they do not operate on a specific object.

### 3.1 Declaration

```dart
class MathUtils {
  static int add(int a, int b) {
    return a + b;
  }
}
```

### 3.2 Accessing Static Methods

Static methods are called using the class name:

```dart
void main() {
  int result = MathUtils.add(3, 4);
  print(result); // Output: 7
}
```

### 3.3 Restrictions

* Static methods **cannot** use `this` because `this` refers to an instance of the class.
* Static methods cannot access non-static instance variables or methods.

Example of incorrect usage:

```dart
class Example {
  int instanceValue = 10;
  static void display() {
    // print(instanceValue); // Error: Cannot access instance member
  }
}
```

---

## 4. Static Constants

When you need immutable class-level data, you can combine `static` with `const`:

```dart
class AppConfig {
  static const String appName = "MyApplication";
}

void main() {
  print(AppConfig.appName); // Output: MyApplication
}
```

Using `static const` is ideal for defining configuration values, default settings, or compile-time constants shared across your application.

---

## 5. Use Cases

Static members are useful in various scenarios:

1. **Utility Classes**: Grouping helper methods, such as mathematical calculations or string manipulation, without needing object instantiation.
2. **Global Counters or Flags**: Maintaining shared state across multiple instances.
3. **Configuration Constants**: Defining settings that do not change during runtime.
4. **Singleton Patterns**: Supporting single-instance designs by storing a static reference.

---

## 6. Best Practices

* Use static members only when the data or behavior is truly shared and does not depend on instance-specific data.
* Avoid excessive use of static variables to prevent tight coupling and make unit testing easier.
* Combine `static` with `const` for compile-time constants to improve performance and memory usage.
* Keep static methods side-effect free whenever possible to ensure predictable behavior.

---

## 7. Example: Utility Class

Here is a complete example that demonstrates the use of static variables, methods, and constants:

```dart
class Logger {
  static int _logCount = 0; // private static variable
  static const String defaultTag = "APP";

  static void log(String message, {String tag = defaultTag}) {
    _logCount++;
    print("[$tag] $message (Log count: $_logCount)");
  }

  static int getLogCount() {
    return _logCount;
  }
}

void main() {
  Logger.log("Application started");
  Logger.log("User logged in", tag: "AUTH");

  print("Total logs: ${Logger.getLogCount()}");
}
```

**Explanation**:

* `_logCount` keeps track of how many times the `log` method is called.
* `defaultTag` is a static constant used as a default parameter.
* The `log` method and `getLogCount` method are static and accessed directly through the class.

---

## 8. Static vs. Instance Members

| Feature               | Static Member      | Instance Member          |
| --------------------- | ------------------ | ------------------------ |
| Belongs To            | Class              | Specific object instance |
| Access Method         | `ClassName.member` | `instance.member`        |
| Shared Across Objects | Yes                | No                       |
| Can Use `this`        | No                 | Yes                      |
| Memory Allocation     | Once per class     | Once per object          |

---

## 9. Conclusion

The `static` keyword in Dart provides a way to create class-level members that are shared across all instances and accessible without creating an object. It is valuable for defining constants, utility functions, and shared resources. However, static members should be used judiciously to avoid code that is difficult to maintain or test. By understanding how to properly declare and use static variables and methods, Dart developers can write cleaner, more efficient, and more maintainable code.

> 📚 This is part of the Dart OOP chapter.

