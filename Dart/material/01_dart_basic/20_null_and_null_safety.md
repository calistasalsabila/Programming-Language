# Dart: `null` & Null Safety

## 1. Purpose

`null` represents the absence of a value. Dart supports **null safety** to help developers avoid null-related runtime errors.

## 2. Syntax & Basics

```dart
String? name; // nullable variable
String name = 'Dokja'; // non-nullable variable
```

* Use `?` to declare a **nullable** variable.
* If you do **not** use `?`, the variable is **non-nullable** and must always have a value.

## 3. Notes

* Dart throws a compile-time error if a non-nullable variable might be `null`.
* You can use operators like:

  * `!` (null assertion)
  * `??` (null coalescing)
  * `?.` (null-aware access)
  * `??=` (assign if null)

---

## 4. Example 1: Nullable variable

```dart
void main() {
  String? message;
  print(message); // prints: null

  message = 'Hello';
  print(message); // prints: Hello
}
```

## 5. Output

```
null
Hello
```

## 6. Explanation

* `String? message;` means `message` can be null.
* Initially it's `null`, then assigned a value.

---

## 7. Example 2: Null assertion `!`

```dart
void main() {
  String? name = 'Jeha';
  print(name!); // use ! to tell Dart it's not null
}
```

## 8. Output

```
Jeha
```

## 9. Warning

Using `!` on a `null` value will throw a runtime error:

```dart
String? name;
print(name!); // 🚫 Runtime error: Null check operator used on a null value
```

---

## 10. Example 3: Null-aware access `?.`

```dart
class User {
  String? nickname;
}

void main() {
  User? user;
  print(user?.nickname); // safe access, prints: null
}
```

## 11. Explanation

* `user?.nickname` safely tries to access `nickname` only if `user` is not null.
* If `user` is `null`, it returns `null` without error.

---

## 12. Example 4: Access nullable member of non-null object

```dart
class Book {
  String? title;
}

void main() {
  Book book = Book();
  print(book.title?.length); // prints: null
}
```

## 13. Explanation

* `book.title` is nullable, so accessing `length` must also be done safely.
* `book.title?.length` prevents runtime error if `title` is null.

---

## 14. Example 5: Null coalescing `??`

```dart
void main() {
  String? name;
  print(name ?? 'Guest'); // prints: Guest
}
```

---

## 15. Example 6: Null-aware assignment `??=`

```dart
void main() {
  String? name;
  name ??= 'Hamin';
  print(name); // prints: Hamin
}
```

---

## 16. Common Mistakes

* Forgetting to initialize non-nullable variables → compile error
* Misusing `!` when value might be `null` → runtime crash
* Assuming `?.` will prevent all errors (it only works on nullable targets)
* Accessing nullable members without null-aware operator → runtime crash

---

## 17. Best Practices

* Prefer non-nullable types when possible
* Use `late` if you must initialize a non-nullable variable later
* Use null-aware operators for safer code

```dart
late String username;

void setup() {
  username = 'Dazai';
}
```

> 📚 This is part of the Dart basic chapter.

