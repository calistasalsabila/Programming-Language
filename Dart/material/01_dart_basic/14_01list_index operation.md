# 🐋 Dart List Index Operations

## 📌 Objective

To understand and master how to work with **list elements using their index** in Dart. This includes:

* Accessing elements by index
* Modifying values at a specific index
* Removing items by index
* Best practices and common mistakes

---

## 📚 Accessing Elements by Index

In Dart, you can access an element in a `List` using bracket notation (`[]`) just like in many other languages.

```dart
void main() {
  List<String> names = ['Dokja', 'Jeha', 'Hamin'];
  print(names[0]); // Output: Dokja
  print(names[2]); // Output: Hamin
}
```

> ⚠️ Indexing starts from 0.

---

## ✏️ Modifying Values by Index

You can **update** a value at a certain position using the same bracket syntax.

```dart
void main() {
  List<String> characters = ['Dazai', 'Chuuya', 'Atsushi'];
  characters[1] = 'Akutagawa';
  print(characters); // [Dazai, Akutagawa, Atsushi]
}
```

> ✅ This is valid as long as the index exists in the list.

---

## ❌ Common Mistake: Index Out of Range

Trying to access or modify an index that doesn't exist causes a runtime error.

```dart
void main() {
  List<int> scores = [80, 90];
  print(scores[5]); // ❌ Error: RangeError
}
```

---

## 🗑️ Removing Elements by Index

Use `removeAt(index)` to remove an element at a specific position.

```dart
void main() {
  List<String> colors = ['red', 'blue', 'green'];
  colors.removeAt(1);
  print(colors); // [red, green]
}
```

> 🧠 After removal, all items **shift** one index to the left.

---

## 🔍 Checking List Length Before Access

To avoid errors, always check the list's length:

```dart
void main() {
  List<int> data = [10, 20, 30];
  if (data.length > 2) {
    print(data[2]); // Safe access
  }
}
```

---

## 🔄 Looping by Index

Accessing list items in a `for` loop using indices is common and useful.

```dart
void main() {
  List<String> animals = ['cat', 'dog', 'bird'];
  for (int i = 0; i < animals.length; i++) {
    print('$i: ${animals[i]}');
  }
}
```

---

## ✅ Best Practices

* Prefer checking `index < list.length` before accessing.
* Avoid hardcoding indexes unless necessary.
* Use `.asMap()` or `forEachIndexed()` (from collection package) for safe indexed iteration in some cases.

---

## 📌 Summary

* `list[index]` to access or modify values
* `list.removeAt(index)` to delete an element
* Indexing starts at 0, so be careful not to go out of bounds

---

## 📎 References

* Dart List Docs: [https://api.dart.dev/stable/dart-core/List-class.html](https://api.dart.dev/stable/dart-core/List-class.html)
* RangeError Handling: [https://dart.dev/guides/language/language-tour#exceptions](https://dart.dev/guides/language/language-tour#exceptions)

---

> keep coding smart and safely! 🚀
