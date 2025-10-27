# JavaScript: `null` and `undefined`

In JavaScript, both `null` and `undefined` represent absence of value, but they are used in different contexts. Understanding their differences is crucial for avoiding logic bugs and unexpected behavior.

---

## Overview

| Type        | Meaning                                       | When it Appears                                                       | Typeof Result                       |
| ----------- | --------------------------------------------- | --------------------------------------------------------------------- | ----------------------------------- |
| `undefined` | Variable is declared but not assigned a value | Default state of an uninitialized variable or missing function return | `'undefined'`                       |
| `null`      | Intentional absence of any value              | Assigned by the programmer to indicate "no value"                     | `'object'` (for historical reasons) |

---

## `undefined`

`undefined` means a variable has been declared but not yet assigned a value.

### Example:

```js
let a;
console.log(a); // undefined
```

### Common Scenarios

```js
let x;
console.log(x); // undefined → variable declared but not initialized

function greet(name) {
  console.log(name);
}

greet(); // undefined → no argument passed

let obj = {};
console.log(obj.age); // undefined → property does not exist
```

### Characteristics

* Default value for uninitialized variables.
* Returned by functions without an explicit `return` statement.
* Non-existent object properties evaluate to `undefined`.

---

## `null`

`null` is an intentional assignment that represents no value or empty reference.

### Example:

```js
let user = null;
console.log(user); // null → explicitly no value assigned
```

### Common Scenarios

```js
let selectedUser = null; // reset variable intentionally

function getUser() {
  return null; // no user found
}
```

### Characteristics

* Represents a deliberate absence of value.
* Often used to reset or clear a variable.
* Type is `'object'` (this is a long-standing JavaScript quirk).

---

## Comparison Between `null` and `undefined`

### 1. Equality (`==`) vs. Strict Equality (`===`)

```js
null == undefined;  // true → loose equality converts both to same abstract value
null === undefined; // false → strict equality checks type
```

### 2. Typeof Operator

```js
typeof undefined; // 'undefined'
typeof null;      // 'object'
```

### 3. Conversion to Boolean

```js
Boolean(undefined); // false
Boolean(null);      // false
```

Both are falsy values.

---

## Practical Use Cases

### 1. Default Function Parameters

```js
function greet(name) {
  if (name === undefined) {
    name = 'Guest';
  }
  console.log(`Hello, ${name}`);
}

greet(); // Hello, Guest
```

### 2. Intentional Null Assignment

```js
let user = { name: 'Dokja' };
user = null; // user data cleared intentionally
```

### 3. Checking for Both

```js
let value = undefined;

if (value == null) {
  console.log('Value is either null or undefined');
}
```

Using `== null` conveniently checks for both null and undefined.

---

## Common Mistakes

### 1. Forgetting to Initialize Variables

```js
let result;
console.log(result + 1); // NaN (undefined + number)
```

### 2. Confusing `null` and Empty Strings

```js
let name = '';
console.log(name == null); // false → empty string is not null or undefined
```

### 3. Using Wrong Equality

```js
if (value === null) {
  // checks only null, not undefined
}
```

To check both, use `value == null`.

---

## Summary

| Concept     | Description                        | Type          | Falsy? |
| ----------- | ---------------------------------- | ------------- | ------ |
| `undefined` | Variable declared but not assigned | `'undefined'` | Yes    |
| `null`      | Explicitly no value                | `'object'`    | Yes    |

### Key Takeaways:

* `undefined` → absence of value by default.
* `null` → absence of value by design.
* Both are falsy, but have different meanings.
* Use `===` for strict checks and `== null` to check both.

---

## Further Reading

* [MDN Web Docs: undefined](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/undefined)
* [MDN Web Docs: null](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/null)
* [JavaScript Equality Comparison Table (MDN)](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Equality_comparisons_and_sameness)

> 📚 This is part of the JS basic chapter.
