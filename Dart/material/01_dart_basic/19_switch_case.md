# 🐋 Dart: `switch` & `case`

## 🎯 Purpose

Use the `switch` statement when you want to execute different blocks of code based on the value of a single variable. It's an alternative to long chains of `if-else` statements.

## 🧠 Syntax

```dart
switch (expression) {
  case value1:
    // code block
    break;
  case value2:
    // code block
    break;
  ...
  default:
    // default block
}
```

## 📦 Notes

* `break` is necessary to exit each `case`, or it will continue to the next case (fall-through is not allowed unless explicitly using `continue caseName:`).
* The `default` case is optional but recommended to catch unmatched values.
* `switch` works with values that are `int`, `String`, or enums.
* You **cannot** use relational operators (like `<`, `>`) directly in `case` conditions.

## 🔍 Example

```dart
void main() {
  String grade = 'B';

  switch (grade) {
    case 'A':
      print('Excellent!');
      break;
    case 'B':
      print('Good job!');
      break;
    case 'C':
      print('Well done');
      break;
    case 'D':
      print('You passed');
      break;
    case 'F':
      print('Better try again');
      break;
    default:
      print('Invalid grade');
  }
}
```

## 🧪 Output

```
Good job!
```

## 📚 Explanation

* `grade` is set to `'B'`
* The `switch` compares `grade` with each `case`
* When it matches `case 'B'`, it prints `Good job!` and exits the switch using `break`
* If there’s no match, it would execute the `default` block (not the case here)

---

## 🔍 Example with `int`

```dart
void main() {
  int number = 3;

  switch (number) {
    case 1:
      print('One');
      break;
    case 2:
      print('Two');
      break;
    case 3:
      print('Three');
      break;
    default:
      print('Other number');
  }
}
```

## 🧪 Output

```
Three
```

## 📚 Explanation

* Matches `case 3` and executes `print('Three')`
* Skips the rest of the cases due to `break`
* If `number` had been something else (like 5), the `default` would run

---

## 🚫 Common Mistakes

* Forgetting `break` → leads to compiler error (Dart doesn't allow fall-through like some other languages)
* Using `case x > 5` → ❌ invalid in Dart
* Using variables (non-constant) as `case` values → ❌ must be constant expressions

---

Switch statements help make code cleaner and more readable when handling multiple fixed conditions on a single variable. 🧼
