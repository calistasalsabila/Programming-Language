# 🐋 Understanding Scope in Dart

## 📌 What is Scope?

Scope refers to **the region of the Dart program where a variable can be accessed or used**. It defines the visibility and lifespan of variables. Understanding scope is essential for writing clean, efficient, and bug-free Dart applications.

---

## 🧠 Types of Scope in Dart

### 1. **Global Scope** 🌍

* Variables declared **outside any function or class**.
* Can be accessed anywhere within the file (if not private).

```dart
String name = "Dokja"; // global scope

void greet() {
  print(name); // accessible here
}

void main() {
  greet();
  print(name); // accessible here too
}
```

### 2. **Local Scope** 🧩

* Variables declared **inside a function**.
* Only accessible within that function.

```dart
void main() {
  String name = "Jeha"; // local scope
  print(name);
}

void greet() {
  // print(name); ❌ Error: 'name' is not defined in this scope
}
```

### 3. **Block Scope** 📦

* Variables declared inside **`{}`** (such as in `if`, `for`, or `while` blocks).

```dart
void main() {
  if (true) {
    int age = 20; // block scope
    print(age);
  }
  // print(age); ❌ Error: 'age' is not visible here
}
```

### 4. **Lexical Scope** 📚

* Inner functions have access to variables defined in **their outer functions**.
* Dart follows **lexical scoping** rules.

```dart
void outerFunction() {
  String message = "Hello from outer";

  void innerFunction() {
    print(message); // access to outer variable
  }

  innerFunction();
}

void main() {
  outerFunction();
}
```

---

## 🎯 Why Scope Matters in Dart

* Prevents **variable name conflicts**.
* Promotes **memory efficiency**.
* Helps with **modularity** and **encapsulation**.

---

## 🚫 Common Scope Mistakes

* ❌ Trying to use a variable outside its scope.
* ❌ Shadowing a variable unintentionally.

```dart
String name = "Dokja";

void main() {
  String name = "Jeha"; // shadows the global 'name'
  print(name); // prints "Jeha"
}
```

---

## ✅ Best Practices

* Use the **smallest scope necessary** for each variable.
* Avoid excessive use of **global variables**.
* Choose **clear and unique variable names** to reduce shadowing.

---

## 📎 Scope Summary in Dart

| Scope Type | Declared In                  | Accessible From                  |
| ---------- | ---------------------------- | -------------------------------- |
| Global     | Outside functions or classes | Anywhere in the file             |
| Local      | Inside a function            | Only within that function        |
| Block      | Inside `{}` blocks           | Only inside that block           |
| Lexical    | Inside nested functions      | Inner functions can access outer |

---

Understanding scope in Dart will help you create safer, clearer, and more efficient Flutter applications. Use scope intentionally and mindfully! 💡
