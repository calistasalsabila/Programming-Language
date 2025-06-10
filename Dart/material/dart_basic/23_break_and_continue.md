# 🐋 Dart: `break` and `continue`

This documentation explains how the `break` and `continue` statements work in Dart. These statements are control flow tools used inside loops and switch-case statements to control the execution path.

---

## 🔹 `break` Statement

The `break` statement is used to **immediately terminate a loop** or a `switch` statement. Once `break` is encountered, the program exits the loop or switch and continues with the next statement after it.

### 🔸 Syntax

```dart
break;
```

### 🔸 Use Cases

* Exit from a `for`, `while`, or `do-while` loop.
* Exit from a `switch-case` block.

### 🔸 Example 1: Using `break` in a loop

```dart
void main() {
  for (int i = 1; i <= 5; i++) {
    if (i == 3) {
      break; // loop will stop when i == 3
    }
    print(i);
  }
}
```

🟢 **Output:**

```
1
2
```

### 🔸 Example 2: Using `break` in `switch`

```dart
void main() {
  int number = 2;
  switch (number) {
    case 1:
      print("One");
      break;
    case 2:
      print("Two");
      break;
    default:
      print("Other");
  }
}
```

🟢 **Output:**

```
Two
```

---

## 🔹 `continue` Statement

The `continue` statement **skips the rest of the current loop iteration** and proceeds to the next one.

### 🔸 Syntax

```dart
continue;
```

### 🔸 Use Cases

* Skip certain iterations in `for`, `while`, or `do-while` loops.

### 🔸 Example: Using `continue`

```dart
void main() {
  for (int i = 1; i <= 5; i++) {
    if (i == 3) {
      continue; // skip when i == 3
    }
    print(i);
  }
}
```

🟢 **Output:**

```
1
2
4
5
```

---

## 📝 Summary Table

| Statement  | Description                        | Common Use                    |
| ---------- | ---------------------------------- | ----------------------------- |
| `break`    | Exits loop or `switch` immediately | Stop loop when condition met  |
| `continue` | Skips to next iteration in a loop  | Skip specific values or cases |

---

## 📌 Notes

* `break` can be used in both loops and switch-case.
* `continue` only applies to loops.
* Both help make control flow more flexible and readable when used carefully.

---

## 📚 Example Use in Nested Loops

```dart
void main() {
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      if (j == 2) {
        continue; // skip j == 2
      }
      print('i = \$i, j = \$j');
    }
  }
}
```

🟢 **Output:**

```
i = 1, j = 1
i = 1, j = 3
i = 2, j = 1
i = 2, j = 3
i = 3, j = 1
i = 3, j = 3
```

---

✅ That’s it! With `break` and `continue`, you can control loops more precisely in Dart.
