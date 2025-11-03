# JavaScript `filter()` Method

## 1. Introduction

The `filter()` method in JavaScript is used to create a **new array** containing elements that pass a specific test defined by a callback function. It does not modify the original array.

## 2. Syntax

```javascript
array.filter(callback(element, index, array), thisArg);
```

### Parameters

| Parameter  | Description                                                                             |
| ---------- | --------------------------------------------------------------------------------------- |
| `callback` | A function to test each element. Returns `true` to keep the element, `false` otherwise. |
| `element`  | The current element being processed.                                                    |
| `index`    | (Optional) The index of the current element.                                            |
| `array`    | (Optional) The array on which `filter()` was called.                                    |
| `thisArg`  | (Optional) Value to use as `this` inside the callback function.                         |

### Return Value

A **new array** containing only the elements that satisfy the condition.

## 3. Example: Filtering Numbers

```javascript
const numbers = [1, 2, 3, 4, 5, 6];
const evenNumbers = numbers.filter(num => num % 2 === 0);
console.log(evenNumbers); // [2, 4, 6]
```

## 4. Example: Filtering Objects

```javascript
const users = [
  { name: 'Alice', active: true },
  { name: 'Bob', active: false },
  { name: 'Charlie', active: true }
];

const activeUsers = users.filter(user => user.active);
console.log(activeUsers);
```

**Output:**

```
[
  { name: 'Alice', active: true },
  { name: 'Charlie', active: true }
]
```

## 5. Example: Filtering Strings

```javascript
const words = ['apple', 'banana', 'grape', 'avocado'];
const startsWithA = words.filter(word => word.startsWith('a'));
console.log(startsWithA); // ['apple', 'avocado']
```

## 6. Example: Using `index`

```javascript
const numbers = [10, 20, 30, 40];
const filtered = numbers.filter((num, index) => index % 2 === 0);
console.log(filtered); // [10, 30]
```

## 7. Example: Nested `filter()`

You can chain or nest multiple `filter()` calls.

```javascript
const data = [12, 25, 30, 45, 50, 60];
const result = data
  .filter(num => num > 20)
  .filter(num => num % 2 === 0);

console.log(result); // [30, 50, 60]
```

## 8. Comparing `filter()` vs `map()` vs `forEach()`

| Method      | Purpose                             | Returns New Array | Modifies Original Array |
| ----------- | ----------------------------------- | ----------------- | ----------------------- |
| `filter()`  | Filters elements based on condition | ✅ Yes             | ❌ No                    |
| `map()`     | Transforms each element             | ✅ Yes             | ❌ No                    |
| `forEach()` | Executes a function on each element | ❌ No              | ❌ No                    |

## 9. Common Use Cases

* Filtering active users or completed tasks
* Searching specific data in an array
* Cleaning datasets
* Removing unwanted values (e.g., `null`, `undefined`)

## 10. Summary

| Feature                | Description                                  |
| ---------------------- | -------------------------------------------- |
| Purpose                | Filters elements based on a condition        |
| Returns                | A new array with elements that pass the test |
| Callback Parameters    | element, index, array                        |
| Mutates Original Array | No                                           |
| Chainable              | Yes                                          |

## 11. Further Reading

* [MDN Web Docs: Array.prototype.filter()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter)
* [JavaScript.info: Array methods](https://javascript.info/array-methods)
* [W3Schools: JavaScript Array filter()](https://www.w3schools.com/jsref/jsref_filter.asp)

> 📚 This is part of the JS basic chapter.
