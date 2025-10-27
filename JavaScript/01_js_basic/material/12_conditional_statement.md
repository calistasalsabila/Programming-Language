# JavaScript Conditional Statements

Conditional statements in JavaScript allow the program to make decisions based on given conditions. They evaluate expressions and execute specific blocks of code depending on whether a condition is true or false.

---

## 1. `if` Statement

The `if` statement executes a block of code only if the condition evaluates to `true`.

```javascript
let score = 85;
if (score >= 80) {
  console.log("Excellent work!");
}
```

**Output:**

```
Excellent work!
```

### Explanation:

* The expression `score >= 80` is `true`, so the block runs.
* If the condition were `false`, the block would be skipped.

---

## 2. `if...else` Statement

Used when you need to execute one block if the condition is true, and another if it is false.

```javascript
let age = 17;
if (age >= 18) {
  console.log("You can vote.");
} else {
  console.log("You are too young to vote.");
}
```

**Output:**

```
You are too young to vote.
```

---

## 3. `if...else if...else` Ladder

Used when multiple conditions need to be checked.

```javascript
let marks = 70;

if (marks >= 90) {
  console.log("Grade: A");
} else if (marks >= 75) {
  console.log("Grade: B");
} else if (marks >= 60) {
  console.log("Grade: C");
} else {
  console.log("Grade: D");
}
```

**Output:**

```
Grade: B
```

---

## 4. Nested `if` Statements

An `if` statement inside another `if`.

```javascript
let username = "admin";
let password = "12345";

if (username === "admin") {
  if (password === "12345") {
    console.log("Login successful");
  } else {
    console.log("Incorrect password");
  }
} else {
  console.log("User not found");
}
```

**Output:**

```
Login successful
```

---

## 5. `switch` Statement

The `switch` statement is used when comparing the same expression with multiple possible values.

```javascript
let day = 3;

switch (day) {
  case 1:
    console.log("Monday");
    break;
  case 2:
    console.log("Tuesday");
    break;
  case 3:
    console.log("Wednesday");
    break;
  default:
    console.log("Invalid day");
}
```

**Output:**

```
Wednesday
```

### Notes:

* Always use `break` to stop further case checks.
* `default` runs when no case matches.

---

## 6. Ternary Operator (`? :`)

A shorter way to write simple `if...else` conditions.

**Syntax:**

```javascript
condition ? expressionIfTrue : expressionIfFalse;
```

**Example:**

```javascript
let isMember = true;
let discount = isMember ? 10 : 0;
console.log(`Discount: ${discount}%`);
```

**Output:**

```
Discount: 10%
```

---

## 7. Truthy and Falsy Values in Conditions

In JavaScript, values are automatically converted to boolean in condition checks.

**Falsy values:** `false`, `0`, `""`, `null`, `undefined`, `NaN`

**Example:**

```javascript
let input = "";
if (input) {
  console.log("Input received");
} else {
  console.log("No input provided");
}
```

**Output:**

```
No input provided
```

---

## 8. Best Practices

* Use `===` instead of `==` for strict comparison.
* Use `switch` for multiple discrete value checks.
* Keep conditions simple and readable.
* Avoid deeply nested `if` blocks — use early returns instead.

---

## Example Use Case: Grading System

```javascript
let score = 92;
let grade;

if (score >= 90) {
  grade = 'A';
} else if (score >= 80) {
  grade = 'B';
} else if (score >= 70) {
  grade = 'C';
} else {
  grade = 'D';
}

console.log(`Your grade is ${grade}`);
```

**Output:**

```
Your grade is A
```

---

### Summary Table

| Statement Type        | Use Case                                         |
| --------------------- | ------------------------------------------------ |
| `if`                  | Single condition                                 |
| `if...else`           | Two possible outcomes                            |
| `if...else if...else` | Multiple condition checks                        |
| `switch`              | Comparing one expression to many possible values |
| Ternary               | Short, inline conditional expressions            |


> 📚 This is part of the JS basic chapter.
