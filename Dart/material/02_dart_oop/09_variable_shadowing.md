# 🐋 Variable Shadowing in Dart

## What is Variable Shadowing?

Variable shadowing occurs when a variable declared within a certain scope (e.g., inside a function or block) has the same name as a variable declared in an outer scope. In Dart, the inner variable "shadows" or hides the outer one within its scope.

This means the inner variable takes precedence, and any reference to the variable name within that scope refers to the inner one.

---

## Purpose and Use Cases

Variable shadowing can be used to:

* Narrow the scope of a variable intentionally.
* Reuse a variable name for clarity in small, local scopes.
* Avoid unintended side effects by not modifying outer variables.

However, excessive shadowing can make code harder to read and debug.

---

## Syntax and Example

```dart
String name = 'Dokja';

void greet() {
  String name = 'Jeha'; // Shadows the outer 'name'
  print('Hello, $name');
}

void main() {
  greet(); // Hello, Jeha
  print('Global: $name'); // Global: Dokja
}
```

### Explanation

* A global variable `name` is declared with value `'Dokja'`.
* Inside the `greet()` function, a local variable with the same name `name` is declared with value `'Jeha'`.
* Inside `greet()`, references to `name` refer to the local one.
* Outside the function, the global `name` is unchanged.

---

## Common Pitfalls

1. **Accidental Shadowing**: Forgetting that you already used a name in the outer scope.
2. **Reduced Readability**: Overusing shadowing makes it hard to know which variable is being referenced.

```dart
int value = 10;

void doSomething() {
  if (true) {
    int value = 20; // Shadows outer 'value'
    print(value);   // 20
  }
  print(value);     // 10
}
```

---

## Best Practices

* Avoid shadowing unless necessary.
* Use descriptive names to reduce confusion.
* Be cautious in nested scopes (like inside loops or conditionals).
* Prefer clarity over cleverness.

---

## Extra Case: No Shadowing

```dart
int a = 5;

void test() {
  print(a); // Uses global 'a' as no local variable exists
}
```

If there's no local declaration, Dart will refer to the variable in the outer scope.

---

## Summary

| Term            | Description                                          |
| --------------- | ---------------------------------------------------- |
| Shadowing       | Inner variable hides outer variable of the same name |
| Scope           | Defines where a variable can be accessed             |
| Global vs Local | Shadowing often happens between global and local     |

Shadowing is a powerful but risky feature. Use it with intent and always test your scopes!

---

## Related Topics

* Dart Scope
* Functions in Dart
* Variable Declaration
* Block Scoping
