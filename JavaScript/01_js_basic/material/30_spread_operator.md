# JavaScript Spread Operator

## Overview

The **spread operator (`...`)** in JavaScript is used to expand or unpack elements from an **iterable** (like an array, string, or object) into individual elements. It was introduced in **ES6 (ECMAScript 2015)** and is very useful for copying, merging, and passing data efficiently.

---

## Syntax

```javascript
const newArray = [...oldArray];
const newObject = { ...oldObject };
```

The operator `...` takes all elements from the given iterable and expands them in place.

---

## 1. Spread with Arrays

### Copying an Array

```javascript
const numbers = [1, 2, 3];
const copied = [...numbers];

console.log(copied); // [1, 2, 3]
```

> ⚠️ This creates a **shallow copy**, meaning nested objects or arrays inside are still referenced.

### Merging Arrays

```javascript
const a = [1, 2];
const b = [3, 4];
const merged = [...a, ...b];

console.log(merged); // [1, 2, 3, 4]
```

### Adding Elements While Merging

```javascript
const base = ["Dokja", "Jeha"];
const team = ["Hamin", ...base, "Dazai"];

console.log(team); // ["Hamin", "Dokja", "Jeha", "Dazai"]
```

### Spreading Strings into Arrays

```javascript
const name = "Cale";
const letters = [...name];
console.log(letters); // ["C", "a", "l", "e"]
```

---

## 2. Spread with Objects

### Copying an Object

```javascript
const user = { name: "Dokja", age: 25 };
const copiedUser = { ...user };

console.log(copiedUser); // { name: 'Dokja', age: 25 }
```

### Merging Objects

```javascript
const personal = { name: "Jeha" };
const info = { age: 22, city: "Seoul" };

const profile = { ...personal, ...info };
console.log(profile); // { name: 'Jeha', age: 22, city: 'Seoul' }
```

### Overriding Properties

If properties have the same key, the **last one** takes precedence.

```javascript
const base = { role: "Student" };
const updated = { ...base, role: "Developer" };
console.log(updated); // { role: 'Developer' }
```

---

## 3. Spread in Function Calls

You can use the spread operator to pass an array as arguments to a function.

```javascript
function add(a, b, c) {
  return a + b + c;
}

const nums = [2, 3, 4];
console.log(add(...nums)); // 9
```

This replaces the old `apply()` method:

```javascript
add.apply(null, nums); // Same as add(...nums)
```

---

## 4. Nested Structures and Shallow Copy

Spread only creates a **shallow copy**. Nested objects are still **linked**.

```javascript
const original = { user: { name: "Hamin" } };
const copy = { ...original };

copy.user.name = "Cale";
console.log(original.user.name); // Cale
```

To make a deep copy, use structured cloning or libraries like Lodash.

---

## 5. Spread vs Rest Operator

The spread and rest operators use the same `...` syntax, but they work **in opposite ways**:

| Operator   | Purpose           | Example             |
| ---------- | ----------------- | ------------------- |
| **Spread** | Expands elements  | `[...arr]`          |
| **Rest**   | Collects elements | `function(...args)` |

### Example Difference

```javascript
// Spread
const arr = [1, 2, 3];
console.log(Math.max(...arr)); // 3

// Rest
function sum(...nums) {
  return nums.reduce((a, b) => a + b, 0);
}
console.log(sum(1, 2, 3)); // 6
```

---

## 6. Using Spread with Default Values

You can use spread with defaults when merging:

```javascript
const defaultSettings = { theme: 'light', font: 'Arial' };
const userSettings = { theme: 'dark' };

const settings = { ...defaultSettings, ...userSettings };
console.log(settings); // { theme: 'dark', font: 'Arial' }
```

---

## Summary

* `...` expands elements from arrays, strings, or objects.
* Useful for **copying, merging, or passing arguments**.
* Creates **shallow copies**, not deep copies.
* Works with both **arrays and objects**.
* Same syntax as rest operator, but used differently.

---

## Further Reading

* [MDN Web Docs: Spread Syntax](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Spread_syntax)
* [JavaScript.info – Spread Operator](https://javascript.info/rest-parameters-spread-operator)

> 📚 This is part of the JS basic chapter.
