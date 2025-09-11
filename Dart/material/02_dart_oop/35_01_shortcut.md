# Dart: Generating `hashCode` Getter Automatically

In Dart, the `hashCode` getter is used to return an integer that
represents the hash value of an object. It plays an important role when
you use objects inside collections like `HashSet` or as keys in a
`HashMap`. To ensure consistency, the `hashCode` must always align with
the equality operator (`==`).

Instead of writing the `hashCode` getter manually, Dart (via IDEs like
IntelliJ IDEA, Android Studio, or VS Code with Dart/Flutter extensions)
provides a **shortcut** to auto-generate it.

## Purpose of `hashCode`

-   Provides a unique integer representation of an object.
-   Used in collections like `HashSet` and `HashMap` to organize and
    find objects quickly.
-   Must always be consistent with the `==` operator:
    -   If two objects are equal (`a == b`), then their `hashCode` must
        also be equal.

## ⚡ Shortcut to Generate `hashCode`

### 🔹 In **IntelliJ IDEA / Android Studio**

1.  Place the cursor inside your class.
2.  Right-click → **Generate...** (or use shortcut `Alt + Insert` on
    Windows/Linux, `Cmd + N` on Mac).
3.  Select **`hashCode()` and `equals()`**.
4.  Choose the fields you want to include.
5.  The IDE generates `==` and `hashCode` automatically.

### 🔹 In **Visual Studio Code**

1.  Install **Dart/Flutter extension**.
2.  Place the cursor inside your class.
3.  Right-click → **Source Action...**.
4.  Choose **Generate equality and hashCode**.
5.  Select the fields you want to include.

## Example

``` dart
class Person {
  final String name;
  final int age;

  Person(this.name, this.age);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          age == other.age;

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}
```

### Explanation:

-   `operator ==` checks equality of `name` and `age`.
-   `hashCode` combines the hash values of both fields using the bitwise
    XOR (`^`) operator.
-   This code is generated automatically by IDE shortcuts, reducing
    errors and saving time.

## 🔑 Key Notes

-   Always override **both** `==` and `hashCode` together.
-   Use IDE shortcuts instead of manual writing to avoid mistakes.
-   For larger classes, using `Object.hash(...)` or
    `Object.hashAll([...])` is recommended for cleaner code:

``` dart
@override
int get hashCode => Object.hash(name, age);
```

## Conclusion

The `hashCode` getter is essential when working with collections that
depend on hashing. Dart IDEs provide an easy **right-click shortcut** to
auto-generate both `==` and `hashCode`, ensuring consistency and
reducing manual work.

---
> 📚 This is part of the Dart OOP chapter.
