# Dart Loops

## 1. What Are Loops?

Loops are used to execute a block of code **repeatedly** as long as a condition is true. Dart provides several looping mechanisms:

* `for` loop
* `while` loop
* `do-while` loop
* `for-in` loop
* `forEach()` method

They are essential when you want to perform repetitive tasks such as iterating over a list, running a block multiple times, or creating animations.

---

## 2. `for` Loop

### Definition:

Used when the **number of iterations is known**.

### Syntax:

```dart
for (initialization; condition; increment) {
  // code to execute
}
```

### Example:

```dart
for (int i = 0; i < 5; i++) {
  print("Count: \$i");
}
```

### Output:

```
Count: 0
Count: 1
Count: 2
Count: 3
Count: 4
```

### Notes:

* Initialization runs once.
* Condition is checked before each loop.
* Increment runs after each iteration.

---

## 3. `while` Loop

### Definition:

Used when the **number of iterations is unknown**, and you want to repeat something **while a condition is true**.

### Syntax:

```dart
while (condition) {
  // code to execute
}
```

### Example:

```dart
int i = 0;
while (i < 3) {
  print("Dart is awesome! Count: \$i");
  i++;
}
```

### Output:

```
Dart is awesome! Count: 0
Dart is awesome! Count: 1
Dart is awesome! Count: 2
```

### Be careful:

Always make sure the condition will eventually become false. Otherwise, it will become an infinite loop.

---

## 4. `do-while` Loop

### Definition:

A variation of `while`, but the **code is executed at least once**, even if the condition is false.

### Syntax:

```dart
do {
  // code to execute
} while (condition);
```

### Example:

```dart
int i = 0;
do {
  print("This will run at least once. i = \$i");
  i++;
} while (i < 2);
```

### Output:

```
This will run at least once. i = 0
This will run at least once. i = 1
```

### Key Difference from `while`:

* `do-while` guarantees **one execution** of the loop body.
* `while` might not execute at all if the condition is false from the beginning.

---

## 5. `for-in` Loop

### Definition:

Used to iterate over elements of a **collection** like `List`, `Set`, etc.

### Syntax:

```dart
for (var element in collection) {
  // code using element
}
```

### Example:

```dart
List<String> fruits = ['apple', 'banana', 'cherry'];

for (var fruit in fruits) {
  print("Fruit: \$fruit");
}
```

### Output:

```
Fruit: apple
Fruit: banana
Fruit: cherry
```

### Best Used When:

* You want to read elements sequentially.
* You don’t need access to the index.

---

## 6. `forEach()` Method

### Definition:

A method available to collections like `List` or `Map` that applies a function to each item.

### Syntax:

```dart
collection.forEach((element) {
  // code using element
});
```

### Example (List):

```dart
List<int> numbers = [10, 20, 30];

numbers.forEach((num) {
  print("Number: \$num");
});
```

### Output:

```
Number: 10
Number: 20
Number: 30
```

### Example (Map):

```dart
Map<String, int> scores = {'Math': 95, 'English': 88};

scores.forEach((subject, score) {
  print("\$subject: \$score");
});
```

### Output:

```
Math: 95
English: 88
```

### Notes:

* Cannot use `break` or `continue` inside `forEach`.
* Great for concise and functional-style iteration.

---

## 7. Loop Control Statements

### `break`:

Stops the loop immediately.

```dart
for (int i = 0; i < 5; i++) {
  if (i == 3) break;
  print(i);
}
// Output: 0 1 2
```

### `continue`:

Skips the current iteration.

```dart
for (int i = 0; i < 5; i++) {
  if (i == 2) continue;
  print(i);
}
// Output: 0 1 3 4
```

---

## 8. Nested Loops

You can use loops inside loops.

```dart
for (int i = 1; i <= 3; i++) {
  for (int j = 1; j <= 2; j++) {
    print("i=\$i, j=\$j");
  }
}
```

### Output:

```
i=1, j=1
i=1, j=2
i=2, j=1
i=2, j=2
i=3, j=1
i=3, j=2
```

---

## 9. Summary

| Loop Type   | Entry Condition? | Use Case                          |
| ----------- | ---------------- | --------------------------------- |
| `for`       | Yes              | Known number of iterations        |
| `while`     | Yes              | Unknown iterations (check first)  |
| `do-while`  | No (runs once)   | Run at least once before checking |
| `for-in`    | Yes              | Iterate over collections          |
| `forEach()` | Yes              | Functional-style iteration        |

* Always avoid infinite loops.
* Use `break` to exit, `continue` to skip.
* Use `for-in` or `forEach()` when working with collections.

---

> 📚 This is part of the Dart basic chapter.

