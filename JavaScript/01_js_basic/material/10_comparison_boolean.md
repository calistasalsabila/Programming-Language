# JavaScript Comparison and Boolean Logic

JavaScript provides **comparison operators** and **logical operators** to perform decision-making operations in code. These are fundamental in conditions, loops, and control flow structures.

---

## Comparison Operators

Comparison operators are used to compare two values. They return a **Boolean value** (`true` or `false`).

### Basic Comparison

| Operator | Description                        | Example     | Result  |
| -------- | ---------------------------------- | ----------- | ------- |
| `==`     | Equal to (performs type coercion)  | `5 == '5'`  | `true`  |
| `===`    | Strict equal to (no type coercion) | `5 === '5'` | `false` |
| `!=`     | Not equal (performs type coercion) | `5 != '5'`  | `false` |
| `!==`    | Strict not equal                   | `5 !== '5'` | `true`  |
| `>`      | Greater than                       | `10 > 5`    | `true`  |
| `<`      | Less than                          | `3 < 5`     | `true`  |
| `>=`     | Greater than or equal              | `5 >= 5`    | `true`  |
| `<=`     | Less than or equal                 | `4 <= 3`    | `false` |

---

## Type Coercion Example

```js
console.log(5 == '5');   // true (type coercion)
console.log(5 === '5');  // false (strict equality)
```

The `==` operator converts operands to the same type before comparison, while `===` checks both **value** and **type**.

---

## Logical Operators

Logical operators are used to combine multiple conditions.

| Operator | Description | Example             | Result     |          |   |          |        |
| -------- | ----------- | ------------------- | ---------- | -------- | - | -------- | ------ |
| `&&`     | Logical AND | `(5 > 3 && 10 > 5)` | `true`     |          |   |          |        |
| `        |             | `                   | Logical OR | `(5 > 10 |   | 10 > 5)` | `true` |
| `!`      | Logical NOT | `!(5 > 3)`          | `false`    |          |   |          |        |

### Example

```js
let a = 10;
let b = 20;

console.log(a > 5 && b > 10);  // true
console.log(a > 15 || b > 15); // true
console.log(!(a < b));         // false
```

---

## Truthy and Falsy Values

In JavaScript, **all values** can be evaluated as either *truthy* or *falsy* in a Boolean context.

### Falsy Values

The following are considered falsy:

* `false`
* `0`
* `''` (empty string)
* `null`
* `undefined`
* `NaN`

### Truthy Values

Anything that is **not falsy** is truthy.

```js
if ('Hello') {
  console.log('This is truthy');
}

if (0) {
  console.log('This will not run');
}
```

---

## Short-Circuit Evaluation

Logical operators can also be used to **short-circuit** expressions.

```js
let username = '';
let defaultName = 'Guest';
let name = username || defaultName;
console.log(name); // 'Guest'

let isLoggedIn = true;
console.log(isLoggedIn && 'Welcome back!'); // 'Welcome back!'
```

---

## Combining Comparison and Logical Operators

```js
let age = 20;
if (age >= 18 && age < 30) {
  console.log('You are an adult under 30.');
}
```

---

## Boolean Object and Conversion

You can explicitly convert a value to a Boolean:

```js
Boolean(0);       // false
Boolean('text');  // true
Boolean(null);    // false
```

### Using Double Negation

```js
!!'Hello'; // true
!!0;       // false
```

---

## Summary

| Concept              | Description                                                      |
| -------------------- | ---------------------------------------------------------------- |
| Comparison Operators | Compare two values and return true/false.                        |
| Logical Operators    | Combine or invert Boolean results.                               |
| Truthy/Falsy         | Determines how non-Boolean values behave in logical expressions. |
| Boolean Conversion   | Converts values explicitly or implicitly to true/false.          |

---

## Further Reading

* [MDN Web Docs: Comparison Operators](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Comparison_Operators)
* [MDN Web Docs: Logical Operators](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Logical_Operators)
* [JavaScript Boolean](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Boolean)

> 📚 This is part of the JS basic chapter.
