# 🐋 Dart Set

In Dart, a `Set` is an **unordered collection of unique items**. This means that every element can appear only once in a set, and their position is not fixed.

---

## 📌 Why Use a Set?

* To store **non-duplicate** values.
* Ideal when you care only about **membership**, not order or frequency.
* Efficient for **searching**, **inserting**, and **deleting** elements.

---

## 🧠 Declaration & Initialization

### 🔹 Using curly braces

```dart
Set<String> fruits = {'apple', 'banana', 'orange'};
```

### 🔹 Using Set constructor

```dart
Set<int> numbers = Set();
numbers.add(1);
numbers.add(2);
```

### 🔹 Using Set.from() constructor

```dart
List<String> items = ['pen', 'pencil', 'pen'];
Set<String> uniqueItems = Set.from(items); // {'pen', 'pencil'}
```

### 🔹 Using Set.of()

```dart
Set<double> prices = Set.of([1.2, 3.4, 5.6]);
```

> ⚠️ If you use `{}` without specifying a type, Dart treats it as a `Map`, not a `Set`.

---

## 📥 Adding Elements

### 🔹 `add()`

```dart
Set<int> nums = {};
nums.add(10);
nums.add(10); // no effect (duplicate)
```

### 🔹 `addAll()`

```dart
nums.addAll([20, 30, 10]); // adds 20, 30 only
```

---

## 🗑️ Removing Elements

### 🔹 `remove()`

```dart
nums.remove(20); // removes 20 if present
```

### 🔹 `removeAll()`

```dart
nums.removeAll([10, 30]);
```

### 🔹 `clear()`

```dart
nums.clear(); // removes all elements
```

---

## 🔍 Checking Contents

### 🔹 `contains()`

```dart
fruits.contains('banana'); // true
```

### 🔹 `containsAll()`

```dart
fruits.containsAll(['apple', 'orange']); // true
```

---

## 📊 Properties

| Property     | Description                    |
| ------------ | ------------------------------ |
| `length`     | Number of elements             |
| `isEmpty`    | Returns `true` if set is empty |
| `isNotEmpty` | Opposite of `isEmpty`          |

---

## 🔁 Iterating Over a Set

### 🔹 Using `for` loop

```dart
for (var fruit in fruits) {
  print(fruit);
}
```

### 🔹 Using `forEach()`

```dart
fruits.forEach((fruit) => print(fruit));
```

---

## 🔄 Set Operations

### 🔹 Union (A ∪ B)

```dart
var a = {1, 2, 3};
var b = {3, 4, 5};
var union = a.union(b); // {1, 2, 3, 4, 5}
```

### 🔹 Intersection (A ∩ B)

```dart
var inter = a.intersection(b); // {3}
```

### 🔹 Difference (A \ B)

```dart
a.difference(b); // {1, 2}
b.difference(a); // {4, 5}
```

---

## 📎 Converting Sets

### 🔹 Set to List

```dart
List<String> fruitList = fruits.toList();
```

### 🔹 List to Set (removing duplicates)

```dart
Set<String> uniqueList = Set.from(fruitList);
```

---

## 🛡️ Type Safety

### 🔹 Generic Type Declaration

```dart
Set<int> numbers = {1, 2, 3};
```

* Prevents accidental insertion of other types.

---

## 🧪 Example Use Case: Unique Usernames

```dart
Set<String> usernames = {};

void registerUser(String name) {
  if (usernames.contains(name)) {
    print("❌ Username already taken.");
  } else {
    usernames.add(name);
    print("✅ Registered: $name");
  }
}

registerUser("dokja");
registerUser("jeha");
registerUser("dokja"); // duplicate
```

---

## 🧹 Tips & Pitfalls

* 🔸 **No indexing**: Sets are unordered. You can't do `set[0]`.
* 🔸 Use `List` if order or duplicates matter.
* 🔸 Use `Set` for fast membership checks and uniqueness.

---

## 🧾 Summary

| Feature         | List         | Set           |
| --------------- | ------------ | ------------- |
| Duplicates      | ✅ Allowed    | ❌ Not Allowed |
| Order matters   | ✅ Yes        | ❌ No          |
| Access by index | ✅ Yes        | ❌ No          |
| Use case        | Ordered data | Unique values |

---

> Happy coding with 🐋 Dart!
