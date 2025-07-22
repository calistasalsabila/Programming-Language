# 🐋 Dart Constructors

In Dart, **constructors** are special methods used to create and initialize objects from a class. They allow you to set up an object’s initial state when it's instantiated.

---

## 🧱 Default Constructor

If no constructor is defined, Dart automatically provides a default constructor with no arguments.

```dart
class Person {
  String name = 'Unknown';
}

void main() {
  var p = Person();
  print(p.name); // Output: Unknown
}
```

---

## 🔧 Custom Constructor

You can create your own constructors by defining them inside the class.

```dart
class Person {
  String name;
  int age;

  Person(String n, int a) {
    name = n;
    age = a;
  }
}

void main() {
  var p = Person('Dokja', 25);
  print(p.name); // Output: Dokja
}
```

---

## 🧹 Shorthand Constructor (Using `this`)

A cleaner and more concise way to define constructors.

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

void main() {
  var p = Person('Jeha', 30);
  print(p.age); // Output: 30
}
```

---

## 🧰 Named Constructors

You can define multiple constructors with different names to offer various ways of creating objects.

```dart
class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  Rectangle.square(double size) {
    width = size;
    height = size;
  }
}

void main() {
  var r1 = Rectangle(10, 5);
  var r2 = Rectangle.square(4);
  print(r2.width); // Output: 4
}
```

---

## 🔁 Redirecting Constructors

Used to call another constructor in the same class.

```dart
class Student {
  String name;
  int age;

  Student(this.name, this.age);
  Student.named(String name) : this(name, 18);
}

void main() {
  var s = Student.named('Hamin');
  print(s.age); // Output: 18
}
```

---

## 🔒 Const Constructor

If the object is immutable, you can define a `const` constructor to enable compile-time constant objects.

```dart
class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);
}

void main() {
  const p1 = Point(1, 2);
  const p2 = Point(1, 2);
  print(identical(p1, p2)); // Output: true
}
```

---

## ❓ Factory Constructor

Used when:

* Returning a value from a cache
* Instantiating a subtype
* Controlling object creation

```dart
class Logger {
  static final Map<String, Logger> _cache = {};

  final String name;
  Logger._internal(this.name);

  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }
}

void main() {
  var logger1 = Logger('Dazai');
  var logger2 = Logger('Dazai');
  print(identical(logger1, logger2)); // Output: true
}
```

---

## 📌 Summary Table

| Constructor Type | Keyword / Feature      | Purpose                                     |
| ---------------- | ---------------------- | ------------------------------------------- |
| Default          | Implicit               | Auto-generated if no constructor is written |
| Custom           | Method with class name | Basic constructor                           |
| Shorthand        | `this.variable`        | Short version of custom                     |
| Named            | `Class.name()`         | Multiple constructor options                |
| Redirecting      | `: this(...)`          | Reuse another constructor                   |
| Const            | `const`                | Compile-time constant                       |
| Factory          | `factory`              | Flexible instance control                   |

---

Happy building objects in Dart! 🐋🏗️
