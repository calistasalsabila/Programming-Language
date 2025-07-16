# 🐋 Dart `List` vs Traditional Arrays (Java, Python, C)

## 🎯 Goal

To understand how Dart's `List` compares with arrays in other languages like Java, Python, and C/C++. This file breaks down similarities, differences, and gives practical Dart examples for common operations.

---

## 📚 Core Concept

In Dart, `List` is the primary data structure for ordered collections of elements. Unlike Java or C, Dart doesn't have a separate array type — **`List`**\*\* *****is***** the array\*\* in Dart.

```dart
// Dart example
List<int> numbers = [1, 2, 3];
numbers.add(4); // List is growable by default
```

---

## 🔍 Comparison Table

| Feature              | Dart `List`              | Java `Array` | Python `List`  | C Array              |
| -------------------- | ------------------------ | ------------ | -------------- | -------------------- |
| Growable (Resizable) | ✅ Yes (default)          | ❌ No         | ✅ Yes          | ❌ No                 |
| Fixed Size Option    | ✅ `List.filled()`        | ✅ Always     | ❌ No           | ✅ Always             |
| Multi-type Support   | ✅ `List<dynamic>`        | ❌ No         | ✅ Yes          | ❌ No                 |
| Strongly Typed       | ✅ Optional               | ✅ Yes        | ❌ No (dynamic) | ✅ Yes                |
| Access Syntax        | `list[0]`                | `array[0]`   | `list[0]`      | `array[0]`           |
| Helper Methods       | ✅ Tons (`add`, `remove`) | ❌ Limited    | ✅ Tons         | ❌ None (manual only) |

---

## 💡 Dart List Examples

### 1. Growable List (default)

```dart
void main() {
  List<String> fruits = ['apple', 'banana'];
  fruits.add('cherry');
  print(fruits); // [apple, banana, cherry]
}
```

### 2. Fixed-size List

```dart
void main() {
  var fixed = List<int>.filled(3, 0);
  fixed[0] = 10;
  // fixed.add(5); // ❌ Error: cannot add to fixed-length list
  print(fixed); // [10, 0, 0]
}
```

### 3. Heterogeneous List

```dart
void main() {
  List<dynamic> mixed = [1, "two", true];
  mixed.add(3.14);
  print(mixed); // [1, two, true, 3.14]
}
```

---

## 🧠 Key Insights

* Dart `List` behaves like Python list or JavaScript array: flexible and dynamic by default.
* Dart provides `List.filled()` for use-cases where fixed-size is needed.
* Dart encourages **type safety** but also supports `dynamic` for flexibility.
* Java arrays and C arrays are static, fixed-size containers with fewer helper tools.

---

## 🧪 Summary

> Dart `List` is a powerful, flexible, and modern replacement for traditional arrays. Whether you're working with fixed-size data or need dynamic structures, Dart gives you both options with one single class: `List`.

---

## 🔗 References

* Dart `List`: [https://dart.dev/guides/libraries/library-tour#lists](https://dart.dev/guides/libraries/library-tour#lists)
* Java Arrays: [https://docs.oracle.com/javase/tutorial/java/nutsandbolts/arrays.html](https://docs.oracle.com/javase/tutorial/java/nutsandbolts/arrays.html)
* Python Lists: [https://docs.python.org/3/tutorial/datastructures.html](https://docs.python.org/3/tutorial/datastructures.html)
* C Arrays: [https://www.programiz.com/c-programming/c-arrays](https://www.programiz.com/c-programming/c-arrays)
