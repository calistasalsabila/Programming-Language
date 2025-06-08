# 🐋 Dart Loops 

## 🧠 What Are Loops?

Loops are used to execute a block of code **repeatedly** as long as a condition is true. Dart provides several looping mechanisms:

* `for` loop
* `while` loop
* `do-while` loop

They are essential when you want to perform repetitive tasks such as iterating over a list, running a block multiple times, or creating animations.

---

## 1️⃣ `for` Loop

### 📌 Definition:

Used when the **number of iterations is known**.

### 🔤 Syntax:

```dart
for (initialization; condition; increment) {
  // code to execute
}
```

### 🧪 Example:

```dart
for (int i = 0; i < 5; i++) {
  print("Count: \$i");
}
```

### ✅ Output:

```
Count: 0
Count: 1
Count: 2
Count: 3
Count: 4
```

### 💡 Notes:

* Initialization runs once.
* Condition checked before each loop.
* Increment executed after each iteration.

---

## 2️⃣ `while` Loop

### 📌 Definition:

Used when the **number of iterations is unknown**, and you want to repeat something **while a condition is true**.

### 🔤 Syntax:

```dart
while (condition) {
  // code to execute
}
```

### 🧪 Example:

```dart
int i = 0;
while (i < 3) {
  print("Dart is awesome! Count: \$i");
  i++;
}
```

### ✅ Output:

```
Dart is awesome! Count: 0
Dart is awesome! Count: 1
Dart is awesome! Count: 2
```

### ⚠️ Be careful:

Always make sure the condition will eventually become false. Otherwise, it will become an infinite loop.

---

## 3️⃣ `do-while` Loop

### 📌 Definition:

A variation of `while`, but the **code is executed at least once**, even if the condition is false.

### 🔤 Syntax:

```dart
do {
  // code to execute
} while (condition);
```

### 🧪 Example:

```dart
int i = 0;
do {
  print("This will run at least once. i = \$i");
  i++;
} while (i < 2);
```

### ✅ Output:

```
This will run at least once. i = 0
This will run at least once. i = 1
```

### 🧩 Key Difference from `while`:

* `do-while` guarantees **one execution** of the loop body.
* `while` might not execute at all if the condition is false from the beginning.

---

## 🔁 Loop Control Statements

### 🔹 `break`:

Stops the loop immediately.

```dart
for (int i = 0; i < 5; i++) {
  if (i == 3) break;
  print(i);
}
// Output: 0 1 2
```

### 🔹 `continue`:

Skips the current iteration.

```dart
for (int i = 0; i < 5; i++) {
  if (i == 2) continue;
  print(i);
}
// Output: 0 1 3 4
```

---

## 🧪 Nested Loops

You can use loops inside loops.

```dart
for (int i = 1; i <= 3; i++) {
  for (int j = 1; j <= 2; j++) {
    print("i=\$i, j=\$j");
  }
}
```

### ✅ Output:

```
i=1, j=1
i=1, j=2
i=2, j=1
i=2, j=2
i=3, j=1
i=3, j=2
```

---

## 🧠 Summary

| Loop Type  | Entry Condition? | Use Case                          |
| ---------- | ---------------- | --------------------------------- |
| `for`      | ✅ Yes            | Known number of iterations        |
| `while`    | ✅ Yes            | Unknown iterations (check first)  |
| `do-while` | ❌ No (runs once) | Run at least once before checking |

* Always avoid infinite loops.
* Use `break` to exit, `continue` to skip.

---

> 📚 Dart Docs: [https://dart.dev/guides/language/language-tour#loops](https://dart.dev/guides/language/language-tour#loops)
