# Dart `==` (Equals Operator)

## 1. Introduction

In Dart, the **equals operator (`==`)** is used to compare two objects for equality. By default, every class in Dart inherits the `==` operator from the base `Object` class. However, the default behavior of `==` only checks if two references point to the **same object in memory** (identity check).

To make equality checks more meaningful (e.g., comparing values inside objects), you can **override** the `==` operator in your custom classes.

---

## 2. Default Behavior of `==`

By default, `==` compares whether two variables refer to the same object.

### Example:

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

void main() {
  Person p1 = Person("Dokja", 21);
  Person p2 = Person("Dokja", 21);

  print(p1 == p2); // false (different objects in memory)
  print(identical(p1, p2)); // false
  print(p1 == p1); // true
}
```

### Output:

```
false
false
true
```

👉 Even though `p1` and `p2` contain the same values, Dart treats them as different objects because the default `==` checks identity, not content.

---

## 3. Overriding the `==` Operator

To make equality meaningful for custom classes, you should override `==`. Dart requires you to also override **`hashCode`** whenever you override `==` to maintain consistency.

### Example:

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Person &&
        other.name == name &&
        other.age == age;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}

void main() {
  Person p1 = Person("Jeha", 22);
  Person p2 = Person("Jeha", 22);
  Person p3 = Person("Hamin", 23);

  print(p1 == p2); // true (values are equal)
  print(p1 == p3); // false
}
```

### Output:

```
true
false
```

👉 Now `p1` and `p2` are considered equal because their properties match.

---

## 4. Why Override `==` and `hashCode`?

1. **Value Equality** → Makes objects comparable by their content rather than memory reference.
2. **Collections Support** → Collections like `Set` and `Map` depend on `==` and `hashCode` for uniqueness.
3. **Consistency** → Dart requires that if two objects are equal (`==`), they must also have the same `hashCode`.

---

## 5. Example with `Set`

```dart
void main() {
  var p1 = Person("Dazai", 25);
  var p2 = Person("Dazai", 25);

  var people = {p1, p2};
  print(people);
}
```

### Output:

```
{Instance of 'Person'}
```

👉 Without overriding `==` and `hashCode`, the `Set` will treat them as different objects.

But with overriding:

```
{Person(name: Dazai, age: 25)}
```

👉 The `Set` removes duplicates because it sees them as equal.

---

## 6. Best Practices

* Always **override `hashCode`** when overriding `==`.
* Use `identical(this, other)` for quick identity check.
* Compare relevant fields for equality.
* Do not include mutable fields in `hashCode` (to avoid inconsistency).
* Keep comparisons simple and efficient.

---

## 7. Key Takeaways

* By default, `==` in Dart checks **object identity**, not values.
* Override `==` and `hashCode` to compare **content equality**.
* Equality is essential for using objects in `Set`, `Map`, and logical comparisons.
* Always keep `==` and `hashCode` consistent.

---

## 8. Summary

The `==` operator in Dart provides a way to check equality. Without overriding, it checks if two references point to the same object. To compare values meaningfully, override both `==` and `hashCode`. This ensures your objects behave correctly in equality checks, collections, and debugging.

---
> 📚 This is part of the Dart OOP chapter.
