# 🐋 Dart `toString()` Method

## 1. Introduction

In Dart, every class automatically inherits a method called **`toString()`** from the base `Object` class. This method is used to return a string representation of an object. By default, the inherited implementation may not be very descriptive (it usually returns the runtime type and a hash code). Therefore, developers often **override** the `toString()` method to provide a more meaningful and human-readable representation of their objects.

---

## 2. Why is `toString()` Important?

The `toString()` method is crucial because:

* It helps in **debugging** by providing readable object states.
* It is automatically invoked when an object is printed using `print()`.
* It improves **logging** by making outputs more informative.
* It ensures better **code readability** when working with custom classes.

---

## 3. Default Behavior

If you create a class and do not override `toString()`, the method returns a default representation.

### Example:

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

void main() {
  Person p = Person("Dokja", 21);
  print(p); // Calls toString() internally
}
```

### Output:

```
Instance of 'Person'
```

👉 As seen, the default implementation is not informative.

---

## 4. Overriding `toString()`

You can override the `toString()` method inside a class to produce more meaningful output.

### Example:

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  String toString() {
    return "Person(name: $name, age: $age)";
  }
}

void main() {
  Person p = Person("Jeha", 22);
  print(p); // Calls overridden toString()
}
```

### Output:

```
Person(name: Jeha, age: 22)
```

---

## 5. Best Practices

1. **Always override `toString()`** in custom classes that represent meaningful entities.
2. **Use string interpolation (`$variable`)** for readability.
3. **Keep it concise** but informative.
4. **Avoid sensitive data** in `toString()`, especially if logs may be exposed.
5. **Use JSON-style format** for structured and clear outputs.

---

## 6. Example with Multiple Classes

```dart
class Book {
  String title;
  String author;

  Book(this.title, this.author);

  @override
  String toString() => "Book(title: $title, author: $author)";
}

class Library {
  String name;
  List<Book> books;

  Library(this.name, this.books);

  @override
  String toString() => "Library(name: $name, books: $books)";
}

void main() {
  Book b1 = Book("Dart Essentials", "Hamin");
  Book b2 = Book("Flutter Guide", "Dazai");

  Library lib = Library("City Library", [b1, b2]);

  print(lib);
}
```

### Output:

```
Library(name: City Library, books: [Book(title: Dart Essentials, author: Hamin), Book(title: Flutter Guide, author: Dazai)])
```

👉 The `toString()` method cascades, showing readable information for both `Library` and `Book` objects.

---

## 7. Advanced Usage with `jsonEncode`

Sometimes, instead of overriding `toString()` manually, you may prefer structured serialization using `dart:convert`.

### Example:

```dart
import 'dart:convert';

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  Map<String, dynamic> toJson() => {
        'name': name,
        'age': age,
      };

  @override
  String toString() => jsonEncode(toJson());
}

void main() {
  Person p = Person("Dokja", 23);
  print(p);
}
```

### Output:

```
{"name":"Dokja","age":23}
```

👉 This is especially useful for logging or exporting structured data.

---

## 8. Key Takeaways

* `toString()` comes from the base `Object` class in Dart.
* By default, it only returns `Instance of 'ClassName'`.
* Overriding `toString()` improves debugging, readability, and logging.
* Use `jsonEncode` for structured outputs when needed.
* Keep the output concise, readable, and free of sensitive data.

---

## 9. Summary

The `toString()` method in Dart provides a string representation of objects. While the default implementation is minimal, overriding it allows developers to create meaningful and readable outputs for debugging and logging. Using best practices ensures that your code is more maintainable, easier to debug, and user-friendly.
