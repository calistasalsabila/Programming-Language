# 🐋 Dart: Attribute vs Method (With Comparison to Python & Java)

## 🎯 Goal

To understand the difference between **attributes** (also called *properties* or *fields*) and **methods** across three popular programming languages:

* Dart
* Python
* Java

This helps you:

* Write cleaner, more accurate code
* Avoid errors like calling a method without `()` or trying to use `()` on an attribute
* Improve your fluency across languages

---

## 📚 Theory Explanation

### 🔹 Attribute / Property (No `()`)

* Represents **a value/data** stored in an object
* You just **access** it, no execution involved

### 🔹 Method (Requires `()`)

* Represents **a function** defined inside a class
* It needs to be **called**, because it performs an **action or computation**

---

## 📏 Dart (Used in Flutter)

| Type     | Example              | Description                  |
| -------- | -------------------- | ---------------------------- |
| Property | `text.length`        | Returns number of characters |
| Method   | `text.toUpperCase()` | Converts string to uppercase |

```dart
String text = 'dokja';
print(text.length);         // Property
print(text.toUpperCase());  // Method
```

⚠️ In Dart, \*\*methods must always include \*\***`()`** when called, even if they return something simple.

---

## 🐍 Python

| Type      | Example         | Description                   |
| --------- | --------------- | ----------------------------- |
| Attribute | `arr.shape`     | Tuple of array dimensions     |
| Method    | `arr.reshape()` | Returns reshaped array        |
| Attribute | `df.columns`    | Returns column names (Pandas) |
| Method    | `df.info()`     | Displays DataFrame info       |

```python
import numpy as np
arr = np.array([[1, 2], [3, 4]])
print(arr.shape)       // Attribute
print(arr.reshape(1, 4)) // Method
```

---

## ☕ Java

| Type   | Example              | Description                      |
| ------ | -------------------- | -------------------------------- |
| Field  | `student.name`       | Direct access to public variable |
| Method | `student.getName()`  | Java-style getter method         |
| Method | `text.toUpperCase()` | Built-in String method           |

```java
public class Student {
    String name;
    public String getName() {
        return name;
    }
}

Student s = new Student();
System.out.println(s.getName()); // Method call
```

📌 Java uses **getter/setter methods** (`getX()`, `setX()`), even though conceptually they behave like attributes.

---

## 🧠 Memory Tip

> "If you want **data**, don't use `()`.
> If you want the object to **do something**, call it with `()`!"

---

## ♻️ Summary Table

| Language | Attribute / Property   | Method (with `()` call)        |
| -------- | ---------------------- | ------------------------------ |
| Dart     | `.length`, `.isEmpty`  | `.toUpperCase()`, `.split()`   |
| Python   | `.shape`, `.columns`   | `.reshape()`, `.info()`        |
| Java     | `student.name` (field) | `.getName()`, `.toUpperCase()` |

---

## ✅ Conclusion

Understanding the distinction between attributes and methods helps you:

* Avoid errors (`TypeError`, `NameError`, etc.)
* Use auto-completion in IDEs more effectively
* Write code that is idiomatic in each language
