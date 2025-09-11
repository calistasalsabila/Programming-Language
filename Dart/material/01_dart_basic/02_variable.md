# Dart Notes: Variables

## What is a Variable?

A **variable** is like a container that stores data which can be changed later. In Dart, every variable has a **type**, and Dart is a **statically typed** language. That means the type of a variable is known at compile time.

---

## Declaring Variables

There are multiple ways to declare variables in Dart:

### 1. `var`

* Dart infers the type based on the assigned value.

```dart
var name = 'Dokja'; // Inferred as String
```

### 2. `dynamic`

* Type can be changed at runtime.

```dart
dynamic hero = 'Jeha';
hero = 42; // Valid because it's dynamic
```

### 3. Explicit Type

* Useful for clarity and code safety.

```dart
String leader = 'Hamin';
int level = 10;
double rating = 4.5;
bool isActive = true;
```

### 4. `final` and `const`

* Use `final` when the value is set once and never changes.
* Use `const` when the value is known at **compile time** and will never change.

```dart
final currentDate = DateTime.now();
const pi = 3.14159;
```

 **Note:** `const` variables are implicitly `final`.

### 5. `late`

* Use `late` when you want to **declare a non-nullable variable** that will be **initialized later**, but **not immediately**.
* This is useful when the value is **not available at the point of declaration**, but you are sure it **will be assigned before use**.

```dart
late String emperor;
emperor = 'Dazai';
print(emperor); // Works fine because it's assigned before use
```

⚠️ **Warning:** If you access a `late` variable before it's initialized, it throws a runtime error.

---

## Variable Naming Convention

* Dart uses **camelCase** for variable names.

```dart
String playerName = 'Dokja';
int playerScore = 100;
```

* Avoid using **snake\_case** for variable names.

**Camel Case** means:

* The first word starts in lowercase.
* Each new word starts with a capital letter.

---

## Changing Variable Values

* Only mutable variables (declared with `var`, `dynamic`, or a non-final/const type) can be updated.

```dart
var kingdom = 'Matthias';
kingdom = 'Arvis'; // ✅

final emperor = 'Dazai';
emperor = 'Akutagawa'; // ❌ Error: final variable can't be reassigned
```

---

## Default Values

* Uninitialized variables have a default value of `null`.

```dart
int? power;
print(power); // null
```

Use `?` for nullable types.

---

## Best Practices

* Prefer `var` or explicit types for clarity.
* Use `final` as a default unless mutation is required.
* Avoid `dynamic` unless absolutely necessary.
* Use `late` if you know a variable will be assigned **later**, not now.
* Use **camelCase** for all variable names.

---

## Variable Scope

* **Global**: Declared outside any function.
* **Local**: Declared inside a function or block.

```dart
var king = 'Dazai'; // Global

void greet() {
  var servant = 'Dokja'; // Local
  print('Hello $servant from $king');
}
```

---

## Example: Combining All

```dart
const game = 'Royal Showdown';
var player = 'Dokja';
int score = 95;
bool hasWon = true;

print('$player scored $score in $game. Victory: $hasWon');
```

**Output:**

```
Dokja scored 95 in Royal Showdown. Victory: true
```

---

## Summary Table

| Keyword   | Type Inferred | Mutable | Compile-Time Const | Notes                                 |
| --------- | ------------- | ------- | ------------------ | ------------------------------------- |
| `var`     | ✅             | ✅       | ❌                  | Best for inferred, mutable vars       |
| `dynamic` | ❌             | ✅       | ❌                  | Avoid unless needed                   |
| `final`   | ✅/Explicit    | ❌       | ❌                  | Set once at runtime                   |
| `const`   | ✅/Explicit    | ❌       | ✅                  | Set once at compile time              |
| `late`    | ✅/Explicit    | ✅       | ❌                  | Initialized later (non-nullable only) |

---

> 📚 This is part of the Dart basic chapter.

