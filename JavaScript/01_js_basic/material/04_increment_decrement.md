# JavaScript Increment, Decrement, and Compound Assignment Operators

JavaScript provides several operators to simplify arithmetic operations such as addition, subtraction, multiplication, and division. Among them, **increment (`++`)**, **decrement (`--`)**, and **compound assignment operators** like `+=`, `-=`, `*=`, `/=` are commonly used to modify variable values concisely.

In this documentation, variables such as `a`, `b`, `c`, and `d` will be used for numeric examples, while names like **Jeha**, **Dokja**, or **Cale Henituse** are reserved for conceptual or object-based examples in later sections.

---

## 1. Increment Operator (`++`)

The **increment operator** increases the value of a variable by **1**.

### Syntax

```javascript
variable++  // Post-increment
++variable  // Pre-increment
```

### Example

```javascript
let a = 5;
a++; // Post-increment
console.log(a); // 6

let b = 5;
++b; // Pre-increment
console.log(b); // 6
```

### Pre-increment vs Post-increment

* **Pre-increment (`++variable`)**: Increments the value before using it.
* **Post-increment (`variable++`)**: Uses the current value first, then increments it.

```javascript
let c = 10;
console.log(++c); // 11 (incremented first)

let d = 10;
console.log(d++); // 10 (used first, then incremented)
console.log(d);    // 11
```

---

## 2. Decrement Operator (`--`)

The **decrement operator** decreases the value of a variable by **1**.

### Syntax

```javascript
variable--  // Post-decrement
--variable  // Pre-decrement
```

### Example

```javascript
let a = 8;
a--; // Post-decrement
console.log(a); // 7

let b = 8;
--b; // Pre-decrement
console.log(b); // 7
```

### Pre-decrement vs Post-decrement

* **Pre-decrement (`--variable`)**: Decreases the value before it is used.
* **Post-decrement (`variable--`)**: Uses the value first, then decreases it.

```javascript
let c = 5;
console.log(--c); // 4 (decrement first)

let d = 5;
console.log(d--); // 5 (use first)
console.log(d);   // 4
```

---

## 3. Compound Assignment Operators

Compound assignment operators are shorthand for performing an operation and reassigning the result to the same variable.

### 3.1 Addition Assignment (`+=`)

Adds a value to a variable.

```javascript
let a = 10;
a += 5; // Equivalent to a = a + 5
console.log(a); // 15
```

### 3.2 Subtraction Assignment (`-=`)

Subtracts a value from a variable.

```javascript
let b = 20;
b -= 4; // Equivalent to b = b - 4
console.log(b); // 16
```

### 3.3 Multiplication Assignment (`*=`)

Multiplies a variable by a value.

```javascript
let c = 3;
c *= 2; // Equivalent to c = c * 2
console.log(c); // 6
```

### 3.4 Division Assignment (`/=`)

Divides a variable by a value.

```javascript
let d = 12;
d /= 3; // Equivalent to d = d / 3
console.log(d); // 4
```

### 3.5 Modulus Assignment (`%=`)

Stores the remainder after division.

```javascript
let e = 17;
e %= 5; // Equivalent to e = e % 5
console.log(e); // 2
```

### 3.6 Exponentiation Assignment (`**=`)

Raises a variable to the power of another value.

```javascript
let f = 2;
f **= 3; // Equivalent to f = f ** 3
console.log(f); // 8
```

---

## 4. Combined Example

```javascript
let a = 5;
let b = 3;

a += b;  // a = 8
b *= 2;  // b = 6
a++;     // a = 9
--b;     // b = 5

console.log(a, b); // 9 5
```

---

## 5. Important Notes

1. Increment (`++`) and decrement (`--`) operators only work on variables (not constants or expressions).
2. Using them inside expressions can lead to tricky behavior, so always be clear about order of execution.
3. Compound assignments like `+=` and `-=` can also work with strings and concatenation.

```javascript
let message = 'Hello';
message += ' World';
console.log(message); // 'Hello World'
```

---

## Summary

| Operator | Meaning                 | Example   | Equivalent To |
| -------- | ----------------------- | --------- | ------------- |
| `++`     | Increment by 1          | `a++`     | `a = a + 1`   |
| `--`     | Decrement by 1          | `a--`     | `a = a - 1`   |
| `+=`     | Add and assign          | `a += b`  | `a = a + b`   |
| `-=`     | Subtract and assign     | `a -= b`  | `a = a - b`   |
| `*=`     | Multiply and assign     | `a *= b`  | `a = a * b`   |
| `/=`     | Divide and assign       | `a /= b`  | `a = a / b`   |
| `%=`     | Modulus and assign      | `a %= b`  | `a = a % b`   |
| `**=`    | Exponentiate and assign | `a **= b` | `a = a ** b`  |

---

## Further Reading

* [MDN Web Docs: Increment (++) Operator](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Increment)
* [MDN Web Docs: Decrement (--) Operator](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Decrement)
* [MDN Web Docs: Assignment Operators](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Assignment_Operators)

> 📚 This is part of the JS basic chapter.
