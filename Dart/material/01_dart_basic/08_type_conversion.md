# Dart Type Conversion

Understanding type conversion in Dart is essential when working with different data types like `String`, `int`, `double`, and `bool`. Dart supports both implicit and explicit conversions.

---

## 1. What is Type Conversion?

Type conversion is the process of changing a value from one data type to another. In Dart, this is often explicit, meaning you have to do it manually.

There are two main types:

* Type casting (changing the *type* of a variable)
* Type parsing (converting *string values* to other types and vice versa)

---

## 2. Conversion Summary Table

| From → To               | Syntax                   | Example                           |
| ----------------------- | ------------------------ | --------------------------------- |
| `int` → `double`        | `toDouble()`             | `5.toDouble()` → `5.0`            |
| `double` → `int`        | `toInt()`                | `5.8.toInt()` → `5`               |
| `num` → `int`           | `toInt()`                | `num n = 4.5; n.toInt()` → `4`    |
| `num` → `double`        | `toDouble()`             | `num n = 4; n.toDouble()` → `4.0` |
| `int/double` → `String` | `toString()`             | `10.toString()` → `'10'`          |
| `bool` → `String`       | `toString()`             | `true.toString()` → `'true'`      |
| `String` → `int`        | `int.parse(str)`         | `int.parse('123')` → `123`        |
| `String` → `double`     | `double.parse(str)`      | `double.parse('4.5')` → `4.5`     |
| `String` → `bool`       | custom logic (see below) | `'true' == 'true'` → `true`       |

---

## 3. Detailed Examples

### 3.1 `int` ↔ `double`

```dart
int a = 5;
double b = a.toDouble();
print(b); // 5.0

b = 6.9;
a = b.toInt();
print(a); // 6
```

### 3.2 Numbers ↔ Strings

```dart
int x = 123;
String sx = x.toString();
print(sx); // '123'

double y = 4.56;
String sy = y.toString();
print(sy); // '4.56'
```

### 3.3 Strings → Numbers

```dart
String s1 = '42';
int n1 = int.parse(s1);
print(n1); // 42

String s2 = '3.14';
double n2 = double.parse(s2);
print(n2); // 3.14
```

> If the string cannot be parsed, Dart will throw a `FormatException`:

```dart
int.parse('abc'); // Error!
```

Use `tryParse()` to avoid exceptions:

```dart
int? maybeInt = int.tryParse('abc');
print(maybeInt); // null
```

### 3.4 Boolean ↔ String

Dart doesn't have a built-in `bool.parse()`, so you usually use custom logic:

```dart
String s = 'true';
bool b = (s.toLowerCase() == 'true');
print(b); // true
```

To convert `bool` to `String`:

```dart
bool b = false;
String sb = b.toString();
print(sb); // 'false'
```

---

## 4. Type Inference vs Type Conversion

```dart
var x = 5; // x is inferred as int
dynamic y = x; // y is dynamic
y = 5.5;       // OK, y can be double now
```

Type inference assigns a type, not converts it. You still need to explicitly convert when needed.

---

## 5. Best Practices

* Use `tryParse()` when dealing with user input.
* Always check the type before converting.
* Prefer `num` when you want to handle both `int` and `double` values.

---

## 6. Resources

* [Dart Language Tour: Numbers](https://dart.dev/guides/language/language-tour#numbers)
* [Dart Language Tour: Strings](https://dart.dev/guides/language/language-tour#strings)
* [Dart API Reference](https://api.dart.dev/stable/)

---

> 📚 This is part of the Dart basic chapter.

