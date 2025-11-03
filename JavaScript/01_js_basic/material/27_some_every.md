# JavaScript `some()` and `every()` Methods

## 1. Introduction

JavaScript provides two array methods — **`some()`** and **`every()`** — to test elements of an array against a condition defined in a callback function.

* `some()` → Returns **true** if *at least one* element satisfies the condition.
* `every()` → Returns **true** if *all* elements satisfy the condition.

Both methods do **not modify the original array** and return a **boolean value**.

---

## 2. Syntax

```javascript
array.some(callback(element, index, array), thisArg);
array.every(callback(element, index, array), thisArg);
```

### Parameters

| Parameter  | Description                                            |
| ---------- | ------------------------------------------------------ |
| `callback` | Function to test each element.                         |
| `element`  | The current element being processed.                   |
| `index`    | (Optional) The index of the current element.           |
| `array`    | (Optional) The array on which the method is called.    |
| `thisArg`  | (Optional) Value to use as `this` inside the callback. |

### Return Value

* `some()` → `true` if **any** element passes the test.
* `every()` → `true` only if **all** elements pass the test.

---

## 3. Example: Using `some()`

```javascript
const numbers = [1, 3, 5, 8, 9];
const hasEven = numbers.some(num => num % 2 === 0);
console.log(hasEven); // true (because 8 is even)
```

### Example 2 — Strings

```javascript
const fruits = ['apple', 'banana', 'mango'];
const hasBanana = fruits.some(fruit => fruit === 'banana');
console.log(hasBanana); // true
```

---

## 4. Example: Using `every()`

```javascript
const numbers = [2, 4, 6, 8];
const allEven = numbers.every(num => num % 2 === 0);
console.log(allEven); // true
```

### Example 2 — Object Property Check

```javascript
const users = [
  { name: 'Dokja', active: true },
  { name: 'Jeha', active: true },
  { name: 'Hamin', active: true }
];

const allActive = users.every(user => user.active);
console.log(allActive); // true
```

---

## 5. Combining `some()` and `every()`

You can combine both methods for complex validations.

```javascript
const ages = [18, 22, 16, 30];

const allAdults = ages.every(age => age >= 18); // false
const hasMinor = ages.some(age => age < 18); // true

console.log(allAdults, hasMinor); // false true
```

---

## 6. Empty Array Behavior

* `some()` returns **false** for an empty array.
* `every()` returns **true** for an empty array.

```javascript
console.log([].some(x => x > 0)); // false
console.log([].every(x => x > 0)); // true
```

---

## 7. Difference Between `some()` and `every()`

| Feature                | `some()`                    | `every()`                  |
| ---------------------- | --------------------------- | -------------------------- |
| Returns true if        | At least one element passes | All elements pass          |
| Stops checking when    | A true condition is found   | A false condition is found |
| Return type            | Boolean                     | Boolean                    |
| Mutates original array | No                          | No                         |
| Empty array result     | false                       | true                       |

---

## 8. Use Cases

* Checking for at least one valid or invalid input.
* Validating form fields.
* Ensuring all data meets certain criteria.
* Detecting presence or absence of elements.

---

## 9. Summary

| Method        | Description                                        | Returns |
| ------------- | -------------------------------------------------- | ------- |
| `some()`      | Checks if **at least one** element passes the test | Boolean |
| `every()`     | Checks if **all** elements pass the test           | Boolean |
| Mutates Array | ❌ No                                               |         |
| Callback Args | element, index, array                              |         |
| Introduced    | ES5                                                |         |

---

## 10. Further Reading

* [MDN Web Docs: Array.prototype.some()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/some)
* [MDN Web Docs: Array.prototype.every()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/every)
* [JavaScript.info: Array methods](https://javascript.info/array-methods)
* [W3Schools: JavaScript Array some() & every()](https://www.w3schools.com/js/js_array_some.asp)

> 📚 This is part of the JS basic chapter.
