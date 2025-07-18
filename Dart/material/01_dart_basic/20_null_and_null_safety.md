# 🐋 Dart: `null` & Null Safety

## 🎯 Purpose

`null` represents the absence of a value. Dart supports **null safety** to help developers avoid null-related runtime errors.

## 🧠 Syntax & Basics

```dart
String? name; // nullable variable
String name = 'Dokja'; // non-nullable variable
```

* Use `?` to declare a **nullable** variable.
* If you do **not** use `?`, the variable is **non-nullable** and must always have a value.

## 📦 Notes

* Dart throws a compile-time error if a non-nullable variable might be `null`.
* You can use operators like:

  * `!` (null assertion)
  * `??` (null coalescing)
  * `?.` (null-aware access)
  * `??=` (assign if null)

---

## 🔍 Example 1: Nullable variable

```dart
void main() {
  String? message;
  print(message); // prints: null

  message = 'Hello';
  print(message); // prints: Hello
}
```

## 🦪 Output

```
null
Hello
```

## 📚 Explanation

* `String? message;` means `message` can be null.
* Initially it's `null`, then assigned a value.

---

## 🔍 Example 2: Null assertion `!`

```dart
void main() {
  String? name = 'Jeha';
  print(name!); // use ! to tell Dart it's not null
}
```

## 🦪 Output

```
Jeha
```

## ⚠️ Warning

Using `!` on a `null` value will throw a runtime error:

```dart
String? name;
print(name!); // 🚫 Runtime error: Null check operator used on a null value
```

---

## 🔍 Example 3: Null-aware access `?.`

```dart
class User {
  String? nickname;
}

void main() {
  User? user;
  print(user?.nickname); // safe access, prints: null
}
```

## 📚 Explanation

* `user?.nickname` safely tries to access `nickname` only if `user` is not null.
* If `user` is `null`, it returns `null` without error.

---

## 🔍 Example 4: Access nullable member of non-null object

```dart
class Book {
  String? title;
}

void main() {
  Book book = Book();
  print(book.title?.length); // prints: null
}
```

## 📚 Explanation

* `book.title` is nullable, so accessing `length` must also be done safely.
* `book.title?.length` prevents runtime error if `title` is null.

---

## 🔍 Example 5: Null coalescing `??`

```dart
void main() {
  String? name;
  print(name ?? 'Guest'); // prints: Guest
}
```

---

## 🔍 Example 6: Null-aware assignment `??=`

```dart
void main() {
  String? name;
  name ??= 'Hamin';
  print(name); // prints: Hamin
}
```

---

## 🚫 Common Mistakes

* Forgetting to initialize non-nullable variables → compile error
* Misusing `!` when value might be `null` → runtime crash
* Assuming `?.` will prevent all errors (it only works on nullable targets)
* Accessing nullable members without null-aware operator → runtime crash

---

## ✅ Best Practices

* Prefer non-nullable types when possible
* Use `late` if you must initialize a non-nullable variable later
* Use null-aware operators for safer code

```dart
late String username;

void setup() {
  username = 'Dazai';
}
```

Dart's null safety helps you catch bugs **at compile-time** rather than during runtime. It's a powerful tool to write robust and safe applications. 🛡️
