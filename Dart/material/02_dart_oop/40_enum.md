# Dart Enum: A Complete Guide

This document provides a comprehensive explanation of **enumerations (enums)** in Dart. It covers the purpose of enums, syntax, features introduced in recent Dart versions, and practical examples to help you use enums effectively in your applications.

---

## 1. Introduction to Enums

An **enum** is a special type that represents a fixed set of constant values. Enums improve code readability and type safety by restricting a variable to a predefined list of options. They are especially useful when dealing with concepts like states, categories, or modes that should only accept certain values.

### Key Benefits of Enums

* **Type Safety**: Prevents assigning invalid values to variables.
* **Readability**: Makes code easier to understand by replacing raw integers or strings with meaningful names.
* **Maintainability**: Centralizes related constants in a single, organized structure.

---

## 2. Declaring Enums

The basic syntax for declaring an enum is straightforward:

```dart
enum Color {
  red,
  green,
  blue,
}
```

Here, `Color` is an enum with three possible values: `Color.red`, `Color.green`, and `Color.blue`.

---

## 3. Using Enums

You can reference an enum value by prefixing it with the enum name:

```dart
void main() {
  Color favorite = Color.green;
  if (favorite == Color.green) {
    print('You like green!');
  }
}
```

Enums can also be used in switch statements:

```dart
switch (favorite) {
  case Color.red:
    print('Red selected');
    break;
  case Color.green:
    print('Green selected');
    break;
  case Color.blue:
    print('Blue selected');
    break;
}
```

---

## 4. Enum Properties

Dart provides built-in properties for enums:

* **`values`**: Returns a list of all enum values.
* **`index`**: Returns the zero-based position of the value in the declaration.

Example:

```dart
for (var color in Color.values) {
  print('${color.name} at index ${color.index}');
}
```

The `name` property (introduced in Dart 2.15) returns the string representation of the enum value without the enum type prefix.

---

## 5. Enhanced Enums (Dart 2.17+)

Enhanced enums allow adding:

* **Fields**
* **Constructors**
* **Methods**

This turns enums into powerful, lightweight classes.

Example:

```dart
enum VehicleType {
  car(4),
  motorcycle(2),
  truck(6);

  final int wheels;
  const VehicleType(this.wheels);

  bool canCarryHeavyLoad() => wheels >= 4;
}

void main() {
  print(VehicleType.truck.wheels); // 6
  print(VehicleType.car.canCarryHeavyLoad()); // true
}
```

---

## 6. Enums with Mixins and Interfaces

Enhanced enums can implement interfaces and use mixins, enabling more complex behavior:

```dart
abstract class Printable {
  void printInfo();
}

enum Fruit implements Printable {
  apple,
  banana;

  @override
  void printInfo() {
    print('Fruit: $name');
  }
}
```

---

## 7. Best Practices

* Use enums when you need a limited, known set of constant values.
* Prefer `switch` statements to ensure all enum cases are handled.
* Use enhanced enums for additional data or behavior tied to each value.
* Keep enum names singular unless they clearly represent a collection.

---

## 8. Summary

Enums in Dart provide a robust, type-safe way to represent a fixed set of related constants. With the introduction of enhanced enums, they can now contain fields, methods, and implement interfaces, making them suitable for more complex scenarios. By using enums effectively, you can write more expressive, maintainable, and error-resistant Dart code.

> 📚 This is part of the Dart OOP chapter.
