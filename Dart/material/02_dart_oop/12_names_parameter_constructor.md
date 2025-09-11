# Named Parameters and Named Constructors in Dart

In Dart, **named parameters** and **named constructors** offer flexibility and readability when working with classes and functions. This file provides a complete explanation with syntax, usage, and examples to understand both features clearly.

---

## Named Parameters

### 🔹 What Are Named Parameters?

Named parameters allow you to specify parameters by name when calling a function or creating an object. This improves code clarity and makes arguments order-independent.

### 🔹 Syntax

```dart
void greet({String? name, int? age}) {
  print("Hello, \$name! You are \$age years old.");
}
```

### 🔹 Calling a Function with Named Parameters

```dart
greet(name: "Dokja", age: 25);
greet(age: 20, name: "Jeha"); // Order doesn't matter
```

### 🔹 Making Parameters Required

Use the `required` keyword for named parameters that must be provided:

```dart
void displayProfile({required String username, required int level}) {
  print("Username: \$username, Level: \$level");
}

// Correct usage
displayProfile(username: "Hamin", level: 10);

// Error if omitted
displayProfile(username: "Dazai"); // Missing level
```

### 🔹 With Default Values

You can assign default values to optional named parameters:

```dart
void showInfo({String role = "Guest", bool active = true}) {
  print("Role: \$role, Active: \$active");
}

showInfo();
showInfo(role: "Admin");
```

### 🔹 Example in Class Constructor

```dart
class User {
  String name;
  int age;

  User({required this.name, required this.age});
}

void main() {
  User u = User(name: "Dokja", age: 22);
  print(u.name); // Dokja
}
```

---

## Named Constructors

### 🔹 What Are Named Constructors?

Dart allows a class to have multiple constructors using **named constructors**. This enables flexible object creation with different initialization logic depending on the context or input.

Named constructors are defined using the class name followed by a dot (`.`) and the constructor name.

### 🔹 Basic Syntax

```dart
class ClassName {
  ClassName.namedConstructor() {
    // initialization code
  }
}
```

### 🔹 Example: Multiple Ways to Instantiate a Class

```dart
class Book {
  String title;
  int year;

  // Default constructor
  Book(this.title, this.year);

  // Named constructor for old books
  Book.old(this.title) : year = 1900;

  // Named constructor with current year
  Book.latest(this.title) : year = DateTime.now().year;
}

void main() {
  Book b1 = Book("Modern Book", 2023);
  Book b2 = Book.old("Classic Novel");
  Book b3 = Book.latest("New Release");

  print("b1: \${b1.title}, \${b1.year}"); // b1: Modern Book, 2023
  print("b2: \${b2.title}, \${b2.year}"); // b2: Classic Novel, 1900
  print("b3: \${b3.title}, \${b3.year}"); // b3: New Release, <current year>
}
```

### 🔹 Example with Factory Named Constructor

Factory constructors are a special kind of constructor that can return instances of subclasses or cached instances.

```dart
class Shape {
  final String type;

  Shape._internal(this.type);

  factory Shape.circle() {
    return Shape._internal("Circle");
  }

  factory Shape.square() {
    return Shape._internal("Square");
  }
}

void main() {
  Shape s1 = Shape.circle();
  Shape s2 = Shape.square();

  print(s1.type); // Circle
  print(s2.type); // Square
}
```

### 🔹 Why Use Named Constructors?

* To provide multiple initialization options
* To improve readability and intent of object creation
* To handle complex initialization logic (especially with `factory`)
* To reduce reliance on external methods or initializers

### 🔹 Tips

* Use `:` (initializer list) after the constructor to assign values before the constructor body runs.
* You can combine named constructors with initializer lists and optional parameters for concise logic.

---

## Summary

| Feature            | Description                                                  |
| ------------------ | ------------------------------------------------------------ |
| Named Parameters   | Allow specifying arguments by name, support default/required |
| Named Constructors | Provide multiple constructor variations for flexibility      |

Both features are widely used in Flutter development to create widgets and manage state more clearly and effectively.

---

**Tip:** Prefer named parameters in constructors if the class has many fields to improve code readability.

> 📚 This is part of the Dart OOP chapter.
