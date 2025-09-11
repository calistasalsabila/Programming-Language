# Dart Set

In Dart, a `Set` is an **unordered collection of unique items**. This means that every element can appear only once in a set, and their position is not fixed.

---

## 1. Why Use a Set?

* To store **non-duplicate** values.
* Ideal when you care only about **membership**, not order or frequency.
* Efficient for **searching**, **inserting**, and **deleting** elements.

---

## 2. Declaration & Initialization

### 2.1 Using curly braces

```dart
Set<String> fruits = {'apple', 'banana', 'orange'};
```

### 2.2 Using Set constructor

```dart
Set<int> numbers = Set();
numbers.add(1);
numbers.add(2);
```

### 2.3 Using Set.from() constructor

```dart
List<String> items = ['pen', 'pencil', 'pen'];
Set<String> uniqueItems = Set.from(items); // {'pen', 'pencil'}
```

### 2.4 Using Set.of()

```dart
Set<double> prices = Set.of([1.2, 3.4, 5.6]);
```

> If you use `{}` without specifying a type, Dart treats it as a `Map`, not a `Set`.

---

## 3. Adding Elements

### 3.1 `add()`

```dart
Set<int> nums = {};
nums.add(10);
nums.add(10); // no effect (duplicate)
```

### 3.2 `addAll()`

```dart
nums.addAll([20, 30, 10]); // adds 20, 30 only
```

---

## 4. Removing Elements

### 4.1 `remove()`

```dart
nums.remove(20); // removes 20 if present
```

### 4.2 `removeAll()`

```dart
nums.removeAll([10, 30]);
```

### 4.3 `clear()`

```dart
nums.clear(); // removes all elements
```

---

## 5. Checking Contents

### 5.1 `contains()`

```dart
fruits.contains('banana'); // true
```

### 5.2 `containsAll()`

```dart
fruits.containsAll(['apple', 'orange']); // true
```

---

## 6. Properties

| Property     | Description                    |
| ------------ | ------------------------------ |
| `length`     | Number of elements             |
| `isEmpty`    | Returns `true` if set is empty |
| `isNotEmpty` | Opposite of `isEmpty`          |

---

## 7. Iterating Over a Set

### 7.1 Using `for` loop

```dart
for (var fruit in fruits) {
  print(fruit);
}
```

### 7.2 Using `forEach()`

```dart
fruits.forEach((fruit) => print(fruit));
```

---

## 8. Set Operations

### 8.1 Union (A ∪ B)

```dart
var a = {1, 2, 3};
var b = {3, 4, 5};
var union = a.union(b); // {1, 2, 3, 4, 5}
```

### 8.2 Intersection (A ∩ B)

```dart
var inter = a.intersection(b); // {3}
```

### 8.3 Difference (A \ B)

```dart
a.difference(b); // {1, 2}
b.difference(a); // {4, 5}
```

---

## 9. Converting Sets

### 9.1 Set to List

```dart
List<String> fruitList = fruits.toList();
```

### 9.2 List to Set (removing duplicates)

```dart
Set<String> uniqueList = Set.from(fruitList);
```

---

## 10. Type Safety

### 10.1 Generic Type Declaration

```dart
Set<int> numbers = {1, 2, 3};
```

* Prevents accidental insertion of other types.

---

## 11. Example Use Case: Unique Usernames

```dart
Set<String> usernames = {};

void registerUser(String name) {
  if (usernames.contains(name)) {
    print("Username already taken.");
  } else {
    usernames.add(name);
    print("Registered: $name");
  }
}

registerUser("dokja");
registerUser("jeha");
registerUser("dokja"); // duplicate
```

---

## 12. Tips & Pitfalls

* No indexing: Sets are unordered. You can't do `set[0]`.
* Use `List` if order or duplicates matter.
* Use `Set` for fast membership checks and uniqueness.

---

## 13. Summary

| Feature         | List         | Set           |
| --------------- | ------------ | ------------- |
| Duplicates      | Allowed      | Not Allowed   |
| Order matters   | Yes          | No            |
| Access by index | Yes          | No            |
| Use case        | Ordered data | Unique values |

---

> 📚 This is part of the Dart basic chapter.

