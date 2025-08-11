# 🐋 Dart Getter and Setter

## 📌 Introduction

In Dart, **getters** and **setters** are special methods that allow you to **access** and **modify** the values of private variables in a controlled way. They are part of Dart's **encapsulation** mechanism in Object-Oriented Programming (OOP). This provides better control over how a variable is accessed and updated, while keeping the implementation details hidden.

Encapsulation ensures that:

* The internal state of an object is protected from direct external modification.
* Developers can validate or transform data before returning or setting it.

---

## 🔹 Why Use Getter and Setter?

1. **Data Protection** – Prevent direct modification of variables.
2. **Data Validation** – Ensure only valid data is assigned.
3. **Read-Only or Write-Only Properties** – Control which parts of code can read or write data.
4. **Cleaner Code** – Makes code more readable and maintainable.

---

## 📜 Syntax

### Getter Syntax

```dart
Type get propertyName {
  // return a value
}
```

Or with an arrow function:

```dart
Type get propertyName => value;
```

### Setter Syntax

```dart
set propertyName(Type value) {
  // assign a value
}
```

---

## 🛠 Example 1: Basic Getter and Setter

```dart
class Person {
  String _name = ""; // private variable (convention: underscore prefix)

  // Getter
  String get name => _name;

  // Setter
  set name(String value) {
    _name = value;
  }
}

void main() {
  var p = Person();
  p.name = "Alice"; // Calls setter
  print(p.name);    // Calls getter -> Output: Alice
}
```

### 🔍 Explanation

* `_name` is private to the class.
* `name` getter returns `_name`'s value.
* `name` setter updates `_name`'s value.

---

## 🛠 Example 2: Getter with Validation

```dart
class BankAccount {
  double _balance = 0;

  // Getter
  double get balance => _balance;

  // Setter with validation
  set balance(double amount) {
    if (amount >= 0) {
      _balance = amount;
    } else {
      print("Balance cannot be negative.");
    }
  }
}

void main() {
  var account = BankAccount();
  account.balance = 1000; // Valid
  print(account.balance); // Output: 1000

  account.balance = -500; // Invalid
  print(account.balance); // Output: 1000 (unchanged)
}
```

### 🔍 Key Points

* We protect `_balance` from becoming negative.
* Attempting to set an invalid value triggers a custom message.

---

## 🛠 Example 3: Read-Only and Write-Only

### Read-Only Property

```dart
class Circle {
  double radius;

  Circle(this.radius);

  // Read-only getter for area
  double get area => 3.14 * radius * radius;
}

void main() {
  var c = Circle(5);
  print(c.area); // Output: 78.5
}
```

**Explanation:**

* `area` has only a getter.
* Value can be accessed but not modified directly.

### Write-Only Property

```dart
class Password {
  String _password = "";

  // Write-only setter
  set password(String value) {
    _password = value;
    print("Password updated successfully.");
  }
}

void main() {
  var pass = Password();
  pass.password = "mySecret123"; // Allowed
  // print(pass.password); // ❌ Error: No getter defined
}
```

**Explanation:**

* `password` can only be set, not read.

---

## ⚡ Short-Hand Getter and Setter

Dart allows you to define getters and setters in a short and clean way using **arrow syntax**:

```dart
class Temperature {
  double _celsius = 0;

  double get fahrenheit => (_celsius * 9 / 5) + 32;
  set fahrenheit(double f) => _celsius = (f - 32) * 5 / 9;
}

void main() {
  var temp = Temperature();
  temp.fahrenheit = 98.6; // Sets in Celsius
  print(temp.fahrenheit); // Output: 98.6
}
```

---

## 📚 Best Practices

* **Always use getters and setters** for private variables to maintain flexibility.
* **Perform validation** in setters to prevent invalid state.
* Use **read-only getters** for calculated properties.
* Use **write-only setters** when data should be hidden after being set.

---

## 🎯 Summary

* Getters and setters in Dart allow **controlled access** to an object's properties.
* **Getter** → Returns a value.
* **Setter** → Assigns a value.
* They help in **data validation**, **encapsulation**, and **code cleanliness**.
* You can have **read-only**, **write-only**, or both for a property.

With proper use of getters and setters, your Dart code will be **more secure, readable, and maintainable**.
