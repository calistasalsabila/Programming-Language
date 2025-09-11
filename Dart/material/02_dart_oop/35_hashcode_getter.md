# HashCode Getter in Dart

In Dart, every object has a **`hashCode`** property, which returns an integer representing the object's hash value. The `hashCode` is primarily used in **hash-based collections**, such as `HashSet` and `HashMap`, to quickly locate and manage objects. ⚡

## Purpose of `hashCode`

The `hashCode` property provides a numeric identifier for an object that helps improve the performance of collections. Two main principles govern its usage:

1. **Equality Consistency** 

   * If two objects are considered equal (`==` returns `true`), then their `hashCode` values must also be equal.
   * However, if two objects have the same `hashCode`, they are not necessarily equal. (Hash collisions can happen.)

2. **Efficiency in Collections** 

   * `hashCode` makes searching, inserting, and deleting elements faster in hash-based data structures.

## Default Behavior

By default, the `hashCode` is derived from the object's identity (its memory address). This means different instances of a class will likely produce different hash codes even if their properties are the same.

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

void main() {
  var p1 = Person("Dokja", 25);
  var p2 = Person("Dokja", 25);

  print(p1.hashCode); // Example: 825932343
  print(p2.hashCode); // Example: 192834812
  print(p1 == p2);    // false by default
}
```

Both `p1` and `p2` have the same property values but are different instances, so they produce different `hashCode` values.

## 🛠️ Overriding `hashCode`

When overriding `==`, it is important to also override `hashCode` to maintain consistency. Otherwise, objects that are considered equal might not behave correctly in hash-based collections.

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Person && other.name == name && other.age == age;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}

void main() {
  var p1 = Person("Jeha", 22);
  var p2 = Person("Jeha", 22);

  print(p1.hashCode == p2.hashCode); // true ✅
  print(p1 == p2); // true ✅
}
```

Here, we use the **bitwise XOR (`^`)** operator to combine the hash codes of multiple fields.

## Practical Example with Collections

```dart
void main() {
  var set = <Person>{};

  set.add(Person("Hamin", 20));
  set.add(Person("Hamin", 20)); // Won't be added again due to equal hashCode & ==

  print(set.length); // 1 
}
```

Without overriding `hashCode` and `==`, the set would incorrectly contain duplicates.

## Summary

* Every Dart object has a `hashCode` property. 
* Objects that are equal must have the same hash code.
* Always override `hashCode` when overriding `==` for consistency.
* `hashCode` ensures efficient performance in hash-based collections like `HashMap` and `HashSet`. ⚡

---
> 📚 This is part of the Dart OOP chapter.
