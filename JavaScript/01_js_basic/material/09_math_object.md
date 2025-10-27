# JavaScript: Math Object

The `Math` object provides mathematical constants and functions for performing numeric operations. It is a built-in global object — not a constructor — so you access its properties and methods directly (for example, `Math.PI` or `Math.max()`).

---

## Overview

* The `Math` object is immutable; you cannot instantiate it with `new Math()`.
* Methods typically accept and return `Number` values. Many methods coerce non-number arguments to numbers.
* `Math` includes constants, rounding functions, powers and logarithms, trigonometry, hyperbolic functions, and utilities like `random()`.

---

## Constants

|       Constant |        Value       | Description                               |
| -------------: | :----------------: | ----------------------------------------- |
|       `Math.E` |  2.718281828459045 | Euler's number                            |
|      `Math.PI` |  3.141592653589793 | Ratio of circle circumference to diameter |
|   `Math.SQRT2` | 1.4142135623730951 | Square root of 2                          |
| `Math.SQRT1_2` | 0.7071067811865476 | 1 divided by square root of 2             |
|     `Math.LN2` | 0.6931471805599453 | Natural logarithm of 2                    |
|    `Math.LN10` |  2.302585092994046 | Natural logarithm of 10                   |
|   `Math.LOG2E` | 1.4426950408889634 | Base-2 logarithm of E                     |
|  `Math.LOG10E` | 0.4342944819032518 | Base-10 logarithm of E                    |

---

## Basic Arithmetic Utilities

### `Math.abs(x)`

Returns the absolute value of `x`.

```js
Math.abs(-5); // 5
```

### `Math.sign(x)`

Returns the sign of `x`: `1` (positive), `-1` (negative), `0`, `-0`, or `NaN`.

```js
Math.sign(-3); // -1
Math.sign(0);  // 0
Math.sign(-0); // -0
```

### `Math.max(...values)` and `Math.min(...values)`

Return the largest and smallest of the supplied arguments.

```js
Math.max(1, 5, 3); // 5
Math.min(1, 5, 3); // 1
```

### `Math.pow(base, exponent)` and `Math.sqrt(x)`

Power and square root.

```js
Math.pow(2, 3); // 8
Math.sqrt(9);   // 3
```

### `Math.cbrt(x)`

Cube root.

```js
Math.cbrt(27); // 3
```

### `Math.hypot(...values)`

Returns the square root of the sum of squares of its arguments (Euclidean norm).

```js
Math.hypot(3, 4); // 5
```

---

## Rounding and Division Helpers

### `Math.round(x)`

Rounds to the nearest integer. Midpoints (.5) round away from zero.

```js
Math.round(4.5); // 5
Math.round(4.4); // 4
```

### `Math.ceil(x)` and `Math.floor(x)`

Round up and down respectively.

```js
Math.ceil(4.1);  // 5
Math.floor(4.9); // 4
```

### `Math.trunc(x)`

Removes fractional digits, effectively truncating toward zero.

```js
Math.trunc(4.9);  // 4
Math.trunc(-4.9); // -4
```

### `Math.fround(x)`

Returns the nearest 32-bit single precision float representation of `x`.

```js
Math.fround(1.337); // 1.3370000123977661 (example)
```

---

## Exponentials and Logarithms

### `Math.exp(x)`

Returns `e^x`.

```js
Math.exp(1); // 2.718281828459045
```

### `Math.log(x)`

Natural logarithm (base `e`). Use `Math.log10` or `Math.log2` for other bases.

```js
Math.log(Math.E); // 1
```

### `Math.log10(x)` and `Math.log2(x)`

Base-10 and base-2 logarithms.

```js
Math.log10(1000); // 3
Math.log2(8);     // 3
```

---

## Trigonometry

All trigonometric functions use radians.

| Method             | Description                              |
| ------------------ | ---------------------------------------- |
| `Math.sin(x)`      | Sine of `x` (radians)                    |
| `Math.cos(x)`      | Cosine of `x`                            |
| `Math.tan(x)`      | Tangent of `x`                           |
| `Math.asin(x)`     | Arcsine (returns radians)                |
| `Math.acos(x)`     | Arccosine                                |
| `Math.atan(x)`     | Arctangent                               |
| `Math.atan2(y, x)` | Arctangent of `y/x` considering quadrant |

Examples:

```js
Math.sin(Math.PI / 2); // 1
Math.cos(0);            // 1
Math.tan(Math.PI / 4); // ~1
Math.atan2(0, -1);     // ~3.14159 (PI)
```

---

## Hyperbolic Functions

| Method          | Description                |
| --------------- | -------------------------- |
| `Math.sinh(x)`  | Hyperbolic sine            |
| `Math.cosh(x)`  | Hyperbolic cosine          |
| `Math.tanh(x)`  | Hyperbolic tangent         |
| `Math.asinh(x)` | Inverse hyperbolic sine    |
| `Math.acosh(x)` | Inverse hyperbolic cosine  |
| `Math.atanh(x)` | Inverse hyperbolic tangent |

---

## Utility Methods

### `Math.random()`

Returns a floating-point pseudorandom number in the range `[0, 1)`.

```js
Math.random(); // e.g., 0.472385...
```

Common patterns:

```js
// random integer between 0 and max (inclusive)
function randInt(max) {
  return Math.floor(Math.random() * (max + 1));
}

// random integer between min and max (inclusive)
function randIntRange(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}
```

### `Math.ceil`, `Math.floor`, `Math.round` used for integer conversion

As shown earlier, these are frequently used to turn `Math.random()` results into integers.

### `Math.imul(a, b)`

Performs a 32-bit integer multiplication and returns a 32-bit integer result. Useful for performance-critical integer math operations.

```js
Math.imul(0x7fffffff, 2); // -2 (32-bit wrap)
```

### `Math.clz32(x)`

Returns the number of leading zero bits in the 32-bit binary representation of `x`.

```js
Math.clz32(1); // 31
```

### `Math.sign` and `Math.cbrt` (already covered)

---

## Precision and Floating-Point Notes

* JavaScript uses IEEE-754 double-precision floating-point numbers (`Number`), which can introduce rounding errors:

```js
0.1 + 0.2 === 0.3; // false
0.1 + 0.2; // 0.30000000000000004
```

* Use `Number.EPSILON` when comparing floating-point numbers for equality.

```js
function nearlyEqual(a, b, eps = Number.EPSILON) {
  return Math.abs(a - b) <= eps;
}
```

---

## Examples and Recipes

### 1. Clamp a value between min and max

```js
function clamp(x, min, max) {
  return Math.min(Math.max(x, min), max);
}

clamp(10, 0, 5); // 5
```

### 2. Degrees ↔ Radians conversion

```js
function degToRad(deg) {
  return deg * (Math.PI / 180);
}

function radToDeg(rad) {
  return rad * (180 / Math.PI);
}
```

### 3. Calculate distance between two points

```js
function distance(x1, y1, x2, y2) {
  return Math.hypot(x2 - x1, y2 - y1);
}

distance(0, 0, 3, 4); // 5
```

---

## Browser and Environment Support

Most `Math` features are widely supported in modern browsers and Node.js. Some newer functions (for example `Math.hypot`, `Math.imul`, and hyperbolic functions) may not exist in very old environments; check compatibility if you must support legacy platforms.

---

## Summary

The `Math` object provides a comprehensive set of mathematical tools for common numeric tasks: constants, rounding, roots and powers, trigonometry, random numbers, and several specialized utilities. Use these functions to perform precise and performant numeric operations in JavaScript.

---

## Further Reading

* MDN Web Docs: Math - [https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math)
* ECMAScript Language Specification: Math Object

> 📚 This is part of the JS basic chapter.
