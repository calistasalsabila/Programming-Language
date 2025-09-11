# Dart Map

In Dart, a `Map` is an **unordered collection of key-value pairs**. Each key is unique, and each key maps to a specific value.

---

## 1. Why Use a Map?

* Store data with a **unique identifier (key)**.
* Ideal for **fast lookup, insertion, and deletion**.
* Useful for representing objects like **JSON**, **configuration**, or **database rows**.

---

## 2. Declaration & Initialization

### 2.1 Using curly braces

```dart
Map<String, int> ages = {
  'Dokja': 27,
  'Jeha': 25,
};
```

### 2.2 Using Map constructor

```dart
Map<String, String> capitals = Map();
capitals['Japan'] = 'Tokyo';
capitals['France'] = 'Paris';
```

### 2.3 Using Map.from()

```dart
Map<String, int> scores = Map.from({'Math': 90, 'English': 85});
```

### 2.4 Using Map.of()

```dart
Map<String, int> prices = Map.of({'apple': 10, 'banana': 15});
```

---

## 3. Adding & Updating Entries

### 3.1 Using bracket notation

```dart
ages['Hamin'] = 22; // add
ages['Jeha'] = 26;   // update
```

### 3.2 Using `addAll()`

```dart
ages.addAll({'Dazai': 28, 'Kunikida': 30});
```

---

## 4. Removing Entries

### 4.1 `remove()`

```dart
ages.remove('Jeha');
```

### 4.2 `clear()`

```dart
ages.clear(); // removes all entries
```

---

## 5. Accessing Elements

### 5.1 Using key

```dart
print(ages['Dokja']); // 27
```

### 5.2 Checking existence

```dart
ages.containsKey('Dokja'); // true
ages.containsValue(27);    // true
```

---

## 6. Properties

| Property     | Description                          |
| ------------ | ------------------------------------ |
| `length`     | Total number of key-value pairs      |
| `isEmpty`    | Returns `true` if map has no entries |
| `isNotEmpty` | Opposite of `isEmpty`                |
| `keys`       | Returns all keys as an iterable      |
| `values`     | Returns all values as an iterable    |
| `entries`    | Returns `MapEntry` objects           |

---

## 7. Iterating Over a Map

### 7.1 Using `forEach()`

```dart
ages.forEach((key, value) {
  print('$key is $value years old');
});
```

### 7.2 Using `for-in` with entries

```dart
for (var entry in ages.entries) {
  print('${entry.key}: ${entry.value}');
}
```

---

## 8. Example Use Case: User Email Lookup

```dart
Map<String, String> emails = {
  'dokja': 'dokja@example.com',
  'jeha': 'jeha@example.com',
};

void findEmail(String username) {
  if (emails.containsKey(username)) {
    print("${emails[username]}");
  } else {
    print("Username not found.");
  }
}

findEmail('dokja');
findEmail('dazai');
```

---

## 9. Modifying Maps

### 9.1 Updating all values

```dart
ages.updateAll((key, value) => value + 1);
```

### 9.2 Updating specific value

```dart
ages.update('Dokja', (value) => value + 1);
```

### 9.3 Adding if key absent

```dart
ages.putIfAbsent('Dazai', () => 29);
```

---

## 10. Converting Maps

### 10.1 Map to List

```dart
List<String> keysList = ages.keys.toList();
List<int> valuesList = ages.values.toList();
```

### 10.2 List of pairs to Map

```dart
var pairList = [
  MapEntry('a', 1),
  MapEntry('b', 2),
];
var mapFromPairs = Map.fromEntries(pairList);
```

---

## 11. Tips & Pitfalls

* Keys must be **unique**.
* Keys and values can be **any object**.
* Use type annotations like `Map<String, int>` for safety.
* Trying to access a non-existing key returns `null`.
* Avoid mutating a map while iterating.

---

## 12. Summary

| Feature          | Description                       |
| ---------------- | --------------------------------- |
| Uniqueness       | Keys are unique                   |
| Order            | Insertion order (as of Dart 2.0+) |
| Key access       | Via brackets or `MapEntry`        |
| Null-safe access | Check `containsKey` before access |
| Use case         | Fast lookup of key-related values |

---

With this guide, you’re ready to master `Map` in Dart confidently.

> 📚 This is part of the Dart basic chapter.

