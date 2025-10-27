# JavaScript Logical Operators

Logical operators in JavaScript are used to combine or manipulate boolean values. They return a boolean (`true` or `false`) depending on the evaluation of the expressions.

---

## 1. Logical AND (`&&`)

The **AND** operator returns `true` only if *both* operands are true.

### Syntax

```js
expr1 && expr2
```

### Example

```js
let a = 10;
let b = 5;

console.log(a > 0 && b < 10); // true (both true)
console.log(a > 0 && b > 10); // false (second false)
```

### Truth Table

| A     | B     | A && B |
| ----- | ----- | ------ |
| true  | true  | true   |
| true  | false | false  |
| false | true  | false  |
| false | false | false  |

### Short-Circuit Behavior

If the first operand is `false`, JavaScript **does not evaluate** the second operand.

```js
false && console.log('Not executed');
```

---

## 2. Logical OR (`||`)

The **OR** operator returns `true` if *at least one* operand is true.

### Syntax

```js
expr1 || expr2
```

### Example

```js
let username = '';
let defaultName = 'Guest';

console.log(username || defaultName); // 'Guest'
```

### Truth Table

| A | B | A || B |
|---|---|---------|
| true | true | true |
| true | false | true |
| false | true | true |
| false | false | false |

### Short-Circuit Behavior

If the first operand is `true`, JavaScript **skips** the second operand.

```js
true || console.log('Not executed');
```

---

## 3. Logical NOT (`!`)

The **NOT** operator negates the value — converting `true` to `false` and vice versa.

### Syntax

```js
!expr
```

### Example

```js
let isLoggedIn = false;
console.log(!isLoggedIn); // true
```

### Double Negation (Boolean Conversion)

You can use double `!!` to convert a value into its boolean equivalent.

```js
console.log(!!'Hello'); // true
console.log(!!0);       // false
```

---

## 4. Combining Logical Operators

Logical operators can be combined for complex conditions.

```js
let score = 85;
let attendance = 90;

if (score > 80 && attendance > 75 || score === 100) {
  console.log('Passed');
} else {
  console.log('Failed');
}
```

---

## 5. Truthy and Falsy in Logical Operations

JavaScript evaluates non-boolean values as **truthy** or **falsy** in logical expressions.

### Falsy Values

`false`, `0`, `''` (empty string), `null`, `undefined`, and `NaN`.

### Example

```js
console.log(0 || 'Default');  // 'Default'
console.log('' && 'Hello');   // ''
```

---

## 6. Nullish Coalescing Operator (`??`)

Returns the right-hand value only if the left-hand value is `null` or `undefined` (unlike `||`, which checks for any falsy value).

### Syntax

```js
expr1 ?? expr2
```

### Example

```js
let name = null;
let fallback = 'Guest';

console.log(name ?? fallback); // 'Guest'

let count = 0;
console.log(count ?? 10); // 0 (because 0 is not null/undefined)
```

---

## 7. Optional Chaining Operator (`?.`)

Allows safe access to nested object properties without throwing an error if any part is `null` or `undefined`.

### Syntax

```js
object?.property
object?.method()
```

### Example

```js
let user = {
  profile: { name: 'Dokja' }
};

console.log(user.profile?.name);     // 'Dokja'
console.log(user.account?.email);    // undefined (no error)
```

---

## 8. Summary Table

| Operator | Description        | Example             | Result                  |       |   |        |      |
| -------- | ------------------ | ------------------- | ----------------------- | ----- | - | ------ | ---- |
| `&&`     | Logical AND        | `true && false`     | false                   |       |   |        |      |
| `        |                    | `                   | Logical OR              | `true |   | false` | true |
| `!`      | Logical NOT        | `!true`             | false                   |       |   |        |      |
| `??`     | Nullish Coalescing | `null ?? 'default'` | 'default'               |       |   |        |      |
| `?.`     | Optional Chaining  | `obj?.key`          | undefined (safe access) |       |   |        |      |

---

## Best Practices

* Use `&&` and `||` for condition combinations.
* Prefer `??` when handling `null` or `undefined` instead of `||`.
* Avoid overusing nested logic; use parentheses for clarity.
* Use `?.` to safely access deeply nested properties.

---

## Further Reading

* [MDN: Logical Operators](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Logical_Operators)
* [MDN: Nullish Coalescing Operator](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Nullish_coalescing_operator)
* [MDN: Optional Chaining](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Optional_chaining)

> 📚 This is part of the JS basic chapter.
