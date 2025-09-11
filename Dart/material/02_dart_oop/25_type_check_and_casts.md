# Type, Type Checking, and Casting in Dart

## 1. Definition
Dart is a statically typed language, meaning every variable has a type known at compile time. Type checking ensures variables are used in ways that align with their declared types. Casting allows converting one type into another when it makes sense logically and structurally.

---

## 2. Type System in Dart

Dart supports both **static typing** and **dynamic typing**:

```dart
int age = 20;           // statically typed
var name = 'Dokja';     // inferred as String
Object anything = 42;   // can hold any type

// dynamic type
dynamic flexible = 'Hello';
flexible = 100;         // allowed
```

- `Object` is the superclass of all types.
- `dynamic` bypasses type checking — use with caution.

---

## 3. Type Checking with `is` and `is!`

The `is` keyword checks whether a variable is of a certain type.

```dart
void checkType(Object value) {
  if (value is String) {
    print('This is a String: $value');
  } else if (value is int) {
    print('This is an int: $value');
  } else {
    print('Unknown type');
  }
}

void main() {
  checkType('Jeha');   // Output: This is a String: Jeha
  checkType(42);       // Output: This is an int: 42
}
```

To check if **not** a certain type:
```dart
if (value is! double) {
  print('Not a double');
}
```

---

## 4. Type Casting in Dart

### 1. Implicit Casting (only in subtype relationships)
Not allowed automatically — you must cast explicitly.

### 2. Explicit Casting with `as`
Use `as` to cast from a parent type to a more specific subtype:

```dart
class Animal {
  void move() => print('Animal moves');
}

class Bird extends Animal {
  void fly() => print('Bird flies');
}

void main() {
  Animal a = Bird();
  a.move();

  Bird b = a as Bird;  // explicit downcast
  b.fly();              // Output: Bird flies
}
```

### Runtime Error Example
```dart
Animal a = Animal();
Bird b = a as Bird; // Error: type 'Animal' is not subtype of type 'Bird'
```
Use `is` before casting to avoid this:
```dart
if (a is Bird) {
  (a as Bird).fly();
}
```

---

## 5. Example with `Object` and `dynamic`

```dart
void handle(Object input) {
  if (input is String) {
    print('Length: ${input.length}');
  } else {
    print('Not a string');
  }
}

void main() {
  handle('Dazai');       // Output: Length: 5
  handle(12345);         // Output: Not a string
}
```

```dart
void dynamicExample(dynamic x) {
  x.toUpperCase(); // No compile-time error, but runtime error if x is not String
}
```

---

## 6. Summary Table

| Concept       | Description                                | Example                    |
|---------------|--------------------------------------------|----------------------------|
| `is`          | Type check                                  | `if (a is Cat)`           |
| `is!`         | Negative type check                         | `if (a is! Dog)`          |
| `as`          | Type casting                                | `Cat c = a as Cat`        |
| `Object`      | Superclass of all types                     | `Object x = 'Hello';`     |
| `dynamic`     | Disables type safety                        | `dynamic x = 42;`         |

---

## 7. Best Practices
- Prefer using `is` before `as` to avoid runtime exceptions
- Avoid overusing `dynamic`; use specific types where possible
- Use `Object` for general but type-safe variable declarations

---

## 8. Conclusion
Understanding Dart’s type system and how to safely perform type checks and casts is essential for writing reliable and bug-free code. Use `is` for safe type checking, and `as` for explicit casting when you're certain of the type relationship.

---
> 📚 This is part of the Dart OOP chapter.
