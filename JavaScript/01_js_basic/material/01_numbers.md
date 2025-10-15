# JavaScript Numbers

## Overview

In JavaScript, **numbers** are a primitive data type that represent both integers and floating-point values. Unlike many programming languages, JavaScript does not distinguish between integer and floating-point numbers — all numeric values are represented as **floating-point numbers** based on the **IEEE 754 double-precision (64-bit)** format.

```js
console.log(typeof 42);     // "number"
console.log(typeof 3.14);   // "number"
```

This uniform number system simplifies operations but also introduces potential precision issues, especially for large integers or decimal arithmetic.

---

## Number Representation

JavaScript represents numbers using the following bit allocation:

* **1 bit** for the sign (positive or negative)
* **11 bits** for the exponent
* **52 bits** for the fraction (mantissa)

This allows representation of numbers approximately in the range of ±(2^1023 × (2 - 2^-52)). However, due to floating-point arithmetic, rounding errors can occur.

Example:

```js
console.log(0.1 + 0.2); // 0.30000000000000004
```

This happens because binary floating-point cannot precisely represent some decimal values.

---

## Numeric Literals

### Integer Literals

```js
let decimal = 42;     // decimal
let hex = 0x2A;       // hexadecimal
let octal = 0o52;     // octal (ES6)
let binary = 0b101010; // binary (ES6)
```

All of these represent the same value (42).

### Floating-Point Literals

```js
let a = 3.14;
let b = 1.5e6;   // 1.5 × 10^6 = 1500000
let c = 1e-4;    // 0.0001
```

---

## Number Methods and Properties

### Static Properties of `Number`

| Property                   | Description                                 |
| -------------------------- | ------------------------------------------- |
| `Number.MAX_VALUE`         | Largest representable number (≈ 1.79×10³⁰⁸) |
| `Number.MIN_VALUE`         | Smallest positive number (≈ 5×10⁻³²⁴)       |
| `Number.MAX_SAFE_INTEGER`  | 2⁵³ - 1 = 9007199254740991                  |
| `Number.MIN_SAFE_INTEGER`  | -(2⁵³ - 1) = -9007199254740991              |
| `Number.POSITIVE_INFINITY` | Positive infinity                           |
| `Number.NEGATIVE_INFINITY` | Negative infinity                           |
| `Number.NaN`               | Not-a-Number constant                       |

Example:

```js
console.log(Number.MAX_SAFE_INTEGER); // 9007199254740991
```

### Common `Number` Methods

| Method                      | Description                                  |
| --------------------------- | -------------------------------------------- |
| `Number.isFinite(value)`    | Checks if a value is a finite number         |
| `Number.isInteger(value)`   | Checks if a value is an integer              |
| `Number.isNaN(value)`       | Checks if a value is NaN                     |
| `Number.parseInt(string)`   | Parses a string into an integer              |
| `Number.parseFloat(string)` | Parses a string into a floating-point number |

Example:

```js
console.log(Number.isInteger(42));       // true
console.log(Number.isFinite(Infinity));  // false
console.log(Number.parseInt('123px'));   // 123
console.log(Number.parseFloat('3.14m')); // 3.14
```

---

## Global Functions Related to Numbers

### `parseInt()`

Converts a string to an integer.

```js
parseInt('101', 2);   // 5 (binary to decimal)
parseInt('20', 8);    // 16 (octal to decimal)
parseInt('1A', 16);   // 26 (hexadecimal to decimal)
```

### `parseFloat()`

Converts a string to a floating-point number.

```js
parseFloat('10.5px'); // 10.5
```

### `isNaN()` and `isFinite()`

```js
isNaN('hello'); // true
isFinite(10);   // true
```

---

## Mathematical Operations

JavaScript supports standard arithmetic operations:

| Operator | Description          |
| -------- | -------------------- |
| `+`      | Addition             |
| `-`      | Subtraction          |
| `*`      | Multiplication       |
| `/`      | Division             |
| `%`      | Modulus (remainder)  |
| `**`     | Exponentiation (ES6) |

Example:

```js
let a = 5, b = 2;
console.log(a + b);  // 7
console.log(a ** b); // 25
console.log(a % b);  // 1
```

---

## The `Math` Object

`Math` provides advanced mathematical constants and functions.

### Common Constants

| Constant     | Description            |
| ------------ | ---------------------- |
| `Math.PI`    | 3.141592653589793      |
| `Math.E`     | 2.718281828459045      |
| `Math.SQRT2` | Square root of 2       |
| `Math.LN2`   | Natural logarithm of 2 |

### Common Functions

| Function         | Description                             |
| ---------------- | --------------------------------------- |
| `Math.round(x)`  | Rounds x to the nearest integer         |
| `Math.floor(x)`  | Rounds x down                           |
| `Math.ceil(x)`   | Rounds x up                             |
| `Math.random()`  | Returns a random number between 0 and 1 |
| `Math.pow(x, y)` | Returns x raised to the power y         |
| `Math.sqrt(x)`   | Returns the square root of x            |

Example:

```js
console.log(Math.floor(3.7)); // 3
console.log(Math.ceil(3.2));  // 4
console.log(Math.random());   // e.g. 0.6273
```

---

## Precision and Safe Integers

JavaScript numbers are precise up to **15-17 digits**, beyond which precision errors may occur.

```js
console.log(9999999999999999); // 10000000000000000
```

To safely handle larger integers, use **BigInt** (introduced in ES2020).

```js
let big = 123456789012345678901234567890n;
console.log(typeof big); // 'bigint'
```

---

## Converting Between Numbers and Strings

### Number → String

```js
let num = 123;
console.log(num.toString()); // '123'
```

### String → Number

```js
let str = '45.67';
console.log(Number(str)); // 45.67
```

---

## Special Values

| Value       | Meaning                                           |
| ----------- | ------------------------------------------------- |
| `NaN`       | Not a number (e.g., result of invalid arithmetic) |
| `Infinity`  | Result of overflow (e.g., division by zero)       |
| `-Infinity` | Negative overflow                                 |

Example:

```js
console.log(1 / 0);    // Infinity
console.log(-1 / 0);   // -Infinity
console.log(0 / 0);    // NaN
```

---

## Summary

* JavaScript uses one numeric type: 64-bit floating-point.
* Integers and floats are stored the same way.
* Floating-point precision errors are common in decimal arithmetic.
* Use `Math` for mathematical operations.
* Use `BigInt` for very large integer values.

---

## Further Reading

* [MDN Web Docs: Number](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number)
* [MDN Web Docs: Math](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math)
* [ECMAScript Language Specification – Numbers](https://tc39.es/ecma262/#sec-ecmascript-language-types-number-type)

> 📚 This is part of the JS basic chapter.
