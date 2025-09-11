# Dart Functions Documentation

This file provides a **complete and detailed** explanation of **functions in Dart**, including syntax, types, parameters, return values, and all relevant concepts like inner functions, higher-order functions, and anonymous functions. This is structured to be a comprehensive GitHub learning note.

---

## 1. What is a Function?

A **function** is a named block of code that performs a specific task. Functions help in structuring code, avoiding repetition, and making code reusable.

Functions in Dart can:

* Accept **parameters** (input)
* Return **values** (output)
* Be **assigned to variables** (first-class objects)
* Be **passed as arguments**
* Be **nested** (inner functions)
* Be **anonymous** (no name)

---

## 2. Syntax of a Function

```dart
returnType functionName(parameterList) {
  // function body
  return returnValue;
}
```

### Example:

```dart
int add(int a, int b) {
  return a + b;
}
```

**Output:**

```dart
void main() {
  print(add(3, 4)); // Output: 7
}
```

---

## 3. Types of Functions

### 3.1 Regular Function

```dart
void sayHello() {
  print("Hello!");
}
```

**Output:**

```
Hello!
```

### 3.2 Function with Parameters

```dart
void greet(String name) {
  print("Hi, \$name!");
}
```

**Output:**

```
Hi, Dokja!
```

### 3.3 Function with Return Value

```dart
String greet(String name) {
  return "Hello, \$name!";
}
```

**Output:**

```
Hello, Jeha!
```

### 3.4 Function with Short Expression (Arrow Syntax)

Dart supports **concise function bodies** using the arrow syntax (`=>`). This is useful for short functions with a single return expression.

```dart
int square(int x) => x * x;
```

Equivalent to:

```dart
int square(int x) {
  return x * x;
}
```

**Output:**

```
print(square(5)); // 25
```

Arrow syntax can also be used for void functions:

```dart
void sayHi() => print("Hi!");
```

---

## 4. Function Parameters

### 4.1 Positional Parameters

```dart
void printSum(int a, int b) {
  print("Sum is: \${a + b}");
}
```

### 4.2 Optional Positional Parameters

```dart
void greet(String name, [String? title]) {
  print("Hello, \${title ?? ''} \$name");
}
```

**Output:**

```
Hello,  Hamin
Hello, Dr. Dazai
```

### 4.3 Named Parameters

```dart
void describePerson({String? name, int? age}) {
  print("Name: \$name, Age: \$age");
}
```

**Output:**

```
Name: Dokja, Age: 22
```

### 4.4 Named Parameters with Default Value

```dart
void greetUser({String name = 'Guest'}) {
  print('Welcome, \$name!');
}
```

**Output:**

```
Welcome, Guest!
Welcome, Calista!
```

### 4.5 Required Named Parameters

```dart
void login({required String username, required String password}) {
  print('Logging in \$username');
}
```

**Output:**

```
Logging in admin
```

---

## 5. Function Return Values

### 5.1 Return a Single Value

A function can return any Dart type, such as `int`, `String`, `bool`, `List`, etc.

```dart
int multiply(int a, int b) {
  return a * b;
}
```

```dart
String getGreeting() {
  return "Hello there!";
}
```

### 5.2 Return Multiple Values

Since Dart doesn't support returning multiple values directly, we use collections or custom classes.

#### Using List

```dart
List<int> getCoordinates() {
  return [10, 20];
}
```

#### Using Map

```dart
Map<String, dynamic> getUser() {
  return {'name': 'Dokja', 'age': 23};
}
```

#### Using Class

```dart
class User {
  String name;
  int age;

  User(this.name, this.age);
}

User getUser() {
  return User('Dazai', 24);
}
```

---

## 6. Anonymous Functions

Functions without a name, often used as arguments.

```dart
List<String> items = ['apple', 'banana', 'cherry'];
items.forEach((item) {
  print(item);
});
```

**Output:**

```
apple
banana
cherry
```

Or with arrow syntax:

```dart
items.forEach((item) => print(item));
```

---

## 7. Higher-Order Functions

A **higher-order function** is a function that takes another function as a parameter or returns a function.

### Example 1: Passing a Function as Parameter

```dart
void execute(Function callback) {
  callback();
}

void sayHi() {
  print("Hi there!");
}

execute(sayHi); // Output: Hi there!
```

### Example 2: Returning a Function

```dart
Function multiplyBy(int n) {
  return (int x) => x * n;
}

var triple = multiplyBy(3);
print(triple(4)); // Output: 12
```

---

## 8. Inner (Nested) Functions

You can define a function inside another function.

```dart
void outer() {
  print("This is outer function");

  void inner() {
    print("This is inner function");
  }

  inner();
}

outer();
```

**Output:**

```
This is outer function
This is inner function
```

---

## 9. Recursive Functions

A recursive function calls itself.

```dart
int factorial(int n) {
  if (n <= 1) return 1;
  return n * factorial(n - 1);
}

print(factorial(5)); // Output: 120
```

---

## 10. The `main()` Function

The starting point of every Dart program.

```dart
void main() {
  print("Hello from main!");
}
```

**Output:**

```
Hello from main!
```

You can call other functions inside `main()`:

```dart
void greet() {
  print("Hi from greet()");
}

void main() {
  greet();
}
```

---

## 11. Best Practices

* Name functions clearly based on their purpose
* Keep functions short and specific
* Use parameters with default values for flexibility
* Avoid side effects where possible
* Reuse logic using functions instead of repeating code

---

## 12. Summary Table

| Feature                   | Example                                         |
| ------------------------- | ----------------------------------------------- |
| Basic Function            | `void sayHi() {}`                               |
| With Parameters           | `void greet(String name)`                       |
| With Return Value         | `int sum(int a, int b)`                         |
| Arrow Syntax              | `int square(int x) => x * x`                    |
| Anonymous Function        | `list.forEach((e) => print(e))`                 |
| Optional Positional Param | `void fn(String name, [String? title])`         |
| Optional Named Param      | `void fn({String? name})`                       |
| Default Values            | `void fn({String name = 'Guest'})`              |
| Required Named Param      | `void fn({required String name})`               |
| Recursive Function        | `int fact(int n) => n <= 1 ? 1 : n * fact(n-1)` |
| Inner Function            | `outer() { inner() { ... } }`                   |
| Higher-Order Function     | `fn(Function callback)`                         |
| Function Return Function  | `return () => print("Hi")`                      |

---

> 📚 This is part of the Dart basic chapter.

