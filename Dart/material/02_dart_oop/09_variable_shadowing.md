# Variable Shadowing in Dart

## 1. What is Variable Shadowing?

Variable shadowing occurs when a variable declared within a certain scope (e.g., inside a function or block) has the same name as a variable declared in an outer scope. In Dart, the inner variable "shadows" or hides the outer one within its scope.

This means the inner variable takes precedence, and any reference to the variable name within that scope refers to the inner one.

---

## 2. Purpose and Use Cases

Variable shadowing can be used to:

1. Narrow the scope of a variable intentionally.
2. Reuse a variable name for clarity in small, local scopes.
3. Avoid unintended side effects by not modifying outer variables.

However, excessive shadowing can make code harder to read and debug.

---

## 3. Syntax and Example

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

1. A global variable `name` is declared with value `'Dokja'`.
2. Inside the `greet()` function, a local variable with the same name `name` is declared with value `'Jeha'`.
3. Inside `greet()`, references to `name` refer to the local one.
4. Outside the function, the global `name` is unchanged.

---

## 4. Common Pitfalls

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

## 5. Best Practices

1. Avoid shadowing unless necessary.
2. Use descriptive names to reduce confusion.
3. Be cautious in nested scopes (like inside loops or conditionals).
4. Prefer clarity over cleverness.

---

## 6. Extra Case: No Shadowing

```dart
int a = 5;

void test() {
  print(a); // Uses global 'a' as no local variable exists
}
```

If there's no local declaration, Dart will refer to the variable in the outer scope.

---

## 7. Summary

| Term            | Description                                          |
| --------------- | ---------------------------------------------------- |
| Shadowing       | Inner variable hides outer variable of the same name |
| Scope           | Defines where a variable can be accessed             |
| Global vs Local | Shadowing often happens between global and local     |

Shadowing is a powerful but risky feature. Use it with intent and always test your scopes!

---

## 8. Related Topics

1. Dart Scope
2. Functions in Dart
3. Variable Declaration
4. Block Scoping

---

> 📚 This is part of the Dart OOP chapter.

