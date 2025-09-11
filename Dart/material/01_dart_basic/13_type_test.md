# Dart Type Test

Type casting allows converting one data type into another. This is especially useful when working with dynamic or generic types in Dart.

## 1. Goal

Understand how to safely cast between types in Dart, including the use of `as`, `is`, and `is!` operators.

---

## 2. What is Type Casting?

Type casting is the process of converting a variable from one type to another. Dart is a statically typed language but also supports dynamic typing. Casting becomes essential when working with `dynamic`, `Object`, or type hierarchies.

---

## 3. `as` Operator – Explicit Cast

Use `as` to cast an object to a specific type.

```dart
void main() {
  dynamic value = 'Hello';
  String text = value as String;
  print(text.length); // 5
}
```

**Explanation**:

* The `as` keyword tells Dart to treat `value` as a `String`.
* If the cast fails at runtime, Dart throws a `TypeError`.

---

## 4. `is` Operator – Type Checking

Use `is` to check if an object is of a specific type.

```dart
void main() {
  Object data = 10;

  if (data is int) {
    print(data + 5); // 15
  }
}
```

**Explanation**:

* `data is int` returns `true` if `data` is of type `int`.
* Often used before casting to ensure safety.

---

## 5. `is!` Operator – Negated Type Check

Use `is!` to check if an object is **not** of a certain type.

```dart
void main() {
  Object name = 'Dokja';

  if (name is! int) {
    print('Not an integer');
  }
}
```

**Explanation**:

* `is!` returns true when the object is *not* of the specified type.

---

## 6. Type Casting with Class Hierarchies

Type casting is especially relevant with inheritance or interfaces.

```dart
class Animal {
  void speak() => print('Some sound');
}

class Dog extends Animal {
  void bark() => print('Woof!');
}

void main() {
  Animal pet = Dog();

  if (pet is Dog) {
    (pet as Dog).bark(); // Woof!
  }
}
```

**Explanation**:

* `pet is Dog` checks if `pet` is a `Dog`.
* `(pet as Dog)` casts it so we can call `bark()`.

---

## 7. Key Notes

* Use `is` before `as` to avoid `TypeError`s.
* Casting is mainly needed when using `dynamic`, `Object`, or working with class hierarchies.
* Avoid unnecessary casting when the variable is already of the correct type.

---

## 8. Conclusion

Use type casting to handle dynamic values safely and effectively in your Dart programs.

> 📚 This is part of the Dart basic chapter.

