# 🐋 Dart String Data Type

## 📌 Overview

In Dart, the `String` type represents a sequence of UTF-16 code units. Strings are commonly used for textual data, and Dart provides a variety of features and methods to manipulate them effectively.

---

## 🎯 Goals

* Understand how to declare and manipulate strings in Dart.
* Explore string interpolation, concatenation, and multiline syntax.
* Learn how to handle escape sequences and raw strings.

---

## 🔤 Basic String Declaration

```dart
void main() {
  String name = 'Dokja';
  String greeting = "Hello, world!";

  print(name);
  print(greeting);
}
```

### Output

```
Dokja
Hello, world!
```

---

## 🧩 String Interpolation

You can embed variables and expressions inside strings using `$variable` or `${expression}`.

```dart
void main() {
  String name = 'Jeha';
  int age = 20;

  print("My name is $name.");
  print("Next year, I will be ${age + 1} years old.");
}
```

### Output

```
My name is Jeha.
Next year, I will be 21 years old.
```

---

## ➕ String Concatenation

Strings can be joined using the `+` operator or by placing string literals next to each other.

```dart
void main() {
  String hello = 'Hello';
  String world = 'World';

  print(hello + ' ' + world);
  print('Hello' ' ' 'World');
}
```

### Output

```
Hello World
Hello World
```

---

## 📜 Multiline Strings

Use triple quotes (`'''` or `"""`) for multiline strings.

```dart
void main() {
  String poem = '''
  Roses are red,
  Violets are blue,
  Dart is fun,
  And powerful too.
  ''';

  print(poem);
}
```

### Output

```
  Roses are red,
  Violets are blue,
  Dart is fun,
  And powerful too.
```

---

## 🛠 Useful String Methods

| Method                    | Description                                    | Example                         | Output      |
| ------------------------- | ---------------------------------------------- | ------------------------------- | ----------- |
| `length`                  | Returns the number of characters in the string | `'Hello'.length`                | `5`         |
| `trim()`                  | Removes whitespace from both ends              | `'  Dart  '.trim()`             | `'Dart'`    |
| `toUpperCase()`           | Converts all characters to uppercase           | `'dart'.toUpperCase()`          | `'DART'`    |
| `toLowerCase()`           | Converts all characters to lowercase           | `'DART'.toLowerCase()`          | `'dart'`    |
| `contains()`              | Checks if the string contains a substring      | `'Hello Dart'.contains('Dart')` | `true`      |
| `substring(start, [end])` | Returns substring from start to end            | `'DartLang'.substring(0, 4)`    | `'Dart'`    |
| `replaceAll(from, to)`    | Replaces all substrings                        | `'a-b-c'.replaceAll('-', '+')`  | `'a+b+c'`   |
| `split()`                 | Splits the string into a list                  | `'a,b,c'.split(',')`            | `[a, b, c]` |
| `startsWith()`            | Checks if the string starts with a substring   | `'Flutter'.startsWith('F')`     | `true`      |
| `endsWith()`              | Checks if the string ends with a substring     | `'Flutter'.endsWith('r')`       | `true`      |
| `isEmpty`                 | Checks if the string is empty                  | `''.isEmpty`                    | `true`      |
| `isNotEmpty`              | Checks if the string is not empty              | `'abc'.isNotEmpty`              | `true`      |
| `codeUnitAt(index)`       | Returns UTF-16 code unit at index              | `'ABC'.codeUnitAt(0)`           | `65`        |
| `indexOf()`               | Finds the first index of a substring           | `'hello'.indexOf('l')`          | `2`         |

---

## 🔁 Using Strings with Whitespace

Dart allows the use of tabs (`\t`), spaces, and line breaks within strings.

```dart
void main() {
  String formatted = 'Line1\n\tLine2\n\t\tLine3';
  print(formatted);
}
```

### Output

```
Line1
	Line2
		Line3
```

---

## 📦 Raw Strings

To treat backslashes (`\`) and variables literally, use a raw string prefix `r`.

```dart
void main() {
  String path = r'C:\Users\Dokja';
  print(path);
}
```

### Output

```
C:\Users\Dokja
```

---

## 🔙 Escape Sequences in Dart

Escape sequences allow you to insert special characters:

| Escape | Description  | Example            | Output            |
| ------ | ------------ | ------------------ | ----------------- |
| `\n`   | Newline      | `'Line1\nLine2'`   | Line1 \n Line2    |
| `\t`   | Tab          | `'Tab\tSeparated'` | Tab     Separated |
| `\'`   | Single quote | `'It\'s Dart'`     | It's Dart         |
| `\"`   | Double quote | `'He said \"Hi\"'` | He said "Hi"      |
| `\\`   | Backslash    | `'C:\\Path\\File'` | C:\Path\File      |

```dart
void main() {
  print('Line1\nLine2');
  print('Tab\tSpace');
  print('It\'s Dart!');
  print("She said: \"Hello\"");
  print('Path: C:\\Windows\\System32');
}
```

### Output

```
Line1
Line2
Tab	Space
It's Dart!
She said: "Hello"
Path: C:\Windows\System32
```

---

## 📚 Resources

* [Dart Language Tour – Strings](https://dart.dev/language#strings)
* [Dart API Docs – String](https://api.dart.dev/stable/dart-core/String-class.html)
