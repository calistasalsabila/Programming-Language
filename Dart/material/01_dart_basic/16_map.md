# 🐋 Dart Map

In Dart, a `Map` is an **unordered collection of key-value pairs**. Each key is unique, and each key maps to a specific value.

---

## 📌 Why Use a Map?

* Store data with a **unique identifier (key)**.
* Ideal for **fast lookup, insertion, and deletion**.
* Useful for representing objects like **JSON**, **configuration**, or **database rows**.

---

## 🧠 Declaration & Initialization

### 🔹 Using curly braces

```dart
Map<String, int> ages = {
  'Dokja': 27,
  'Jeha': 25,
};
```

### 🔹 Using Map constructor

```dart
Map<String, String> capitals = Map();
capitals['Japan'] = 'Tokyo';
capitals['France'] = 'Paris';
```

### 🔹 Using Map.from()

```dart
Map<String, int> scores = Map.from({'Math': 90, 'English': 85});
```

### 🔹 Using Map.of()

```dart
Map<String, int> prices = Map.of({'apple': 10, 'banana': 15});
```

---

## 📥 Adding & Updating Entries

### 🔹 Using bracket notation

```dart
ages['Hamin'] = 22; // add
ages['Jeha'] = 26;   // update
```

### 🔹 Using `addAll()`

```dart
ages.addAll({'Dazai': 28, 'Kunikida': 30});
```

---

## 🗑️ Removing Entries

### 🔹 `remove()`

```dart
ages.remove('Jeha');
```

### 🔹 `clear()`

```dart
ages.clear(); // removes all entries
```

---

## 🔍 Accessing Elements

### 🔹 Using key

```dart
print(ages['Dokja']); // 27
```

### 🔹 Checking existence

```dart
ages.containsKey('Dokja'); // true
ages.containsValue(27);    // true
```

---

## 📊 Properties

| Property     | Description                          |
| ------------ | ------------------------------------ |
| `length`     | Total number of key-value pairs      |
| `isEmpty`    | Returns `true` if map has no entries |
| `isNotEmpty` | Opposite of `isEmpty`                |
| `keys`       | Returns all keys as an iterable      |
| `values`     | Returns all values as an iterable    |
| `entries`    | Returns `MapEntry` objects           |

---

## 🔁 Iterating Over a Map

### 🔹 Using `forEach()`

```dart
ages.forEach((key, value) {
  print('$key is $value years old');
});
```

### 🔹 Using `for-in` with entries

```dart
for (var entry in ages.entries) {
  print('${entry.key}: ${entry.value}');
}
```

---

## 🧪 Example Use Case: User Email Lookup

```dart
Map<String, String> emails = {
  'dokja': 'dokja@example.com',
  'jeha': 'jeha@example.com',
};

void findEmail(String username) {
  if (emails.containsKey(username)) {
    print("📧 ${emails[username]}");
  } else {
    print("❌ Username not found.");
  }
}

findEmail('dokja');
findEmail('dazai');
```

---

## 🛠️ Modifying Maps

### 🔹 Updating all values

```dart
ages.updateAll((key, value) => value + 1);
```

### 🔹 Updating specific value

```dart
ages.update('Dokja', (value) => value + 1);
```

### 🔹 Adding if key absent

```dart
ages.putIfAbsent('Dazai', () => 29);
```

---

## 🔄 Converting Maps

### 🔹 Map to List

```dart
List<String> keysList = ages.keys.toList();
List<int> valuesList = ages.values.toList();
```

### 🔹 List of pairs to Map

```dart
var pairList = [
  MapEntry('a', 1),
  MapEntry('b', 2),
];
var mapFromPairs = Map.fromEntries(pairList);
```

---

## 🧹 Tips & Pitfalls

* 🔸 Keys must be **unique**.
* 🔸 Keys and values can be **any object**.
* 🔸 Use type annotations like `Map<String, int>` for safety.
* 🔸 Trying to access a non-existing key returns `null`.
* 🔸 Avoid mutating a map while iterating.

---

## 🧾 Summary

| Feature          | Description                       |
| ---------------- | --------------------------------- |
| Uniqueness       | Keys are unique                   |
| Order            | Insertion order (as of Dart 2.0+) |
| Key access       | Via brackets or `MapEntry`        |
| Null-safe access | Check `containsKey` before access |
| Use case         | Fast lookup of key-related values |

---

✅ With this guide, you’re ready to master `Map` in Dart confidently.

> Happy coding with 🐋 Dart!
