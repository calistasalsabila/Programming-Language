# Dart Initializer List and Final Fields

## Overview

In Dart, an *initializer list* is used to initialize fields before the constructor body runs. This is particularly important for `final` fields, which must be assigned exactly once and before the constructor body executes.

## Syntax

```dart
ClassName(parameters) : field1 = value1, field2 = value2 {
  // constructor body
}
```

## Automatic Field Initialization with `this`

Dart supports a shorthand syntax in constructors using `this.fieldName` in the parameter list. For example:

```dart
class Student {
  final int age;

  Student(this.age);
}
```

This is equivalent to:

```dart
class Student {
  final int age;

  Student(int inputAge) : age = inputAge;
```

The shorthand `this.age` is treated as part of the initializer list and ensures the `final` field is initialized correctly.

## Inheritance with Initializer List

When extending a class, Dart allows calling the superclass constructor in the initializer list:

```dart
class Person {
  final String name;
  Person(this.name);
}

class Student extends Person {
  final int age;
  Student(String name, this.age) : super(name);
}
```

Here, `this.age` is equivalent to `: age = ageInput`, and `super(name)` ensures the superclass field `name` is also initialized. Dart processes `super()` and `this.field` assignments before entering the constructor body.

## Important Rules

* Fields marked `final` must be initialized exactly once.
* Initialization via `this.field` in the constructor parameter list is valid and counted as an initializer list.
* The order of initialization follows the order of field declarations, not the order in the initializer list.

## Summary

Using initializer lists is essential for properly initializing `final` and `const` fields, particularly when using inheritance. Dart’s constructor shorthand `this.field` is a powerful tool that simplifies field initialization while still following the initializer list rules.
