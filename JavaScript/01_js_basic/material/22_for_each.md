# JavaScript `forEach()` Method

## 1. Introduction

The `forEach()` method is a built-in array method in JavaScript that executes a provided callback function once for each element in an array. It is mainly used for iterating over arrays in a clean and readable way without using traditional loops like `for` or `while`.

## 2. Syntax

```javascript
array.forEach(callback(currentValue, index, array), thisArg);
```

### Parameters

| Parameter      | Description                                                    |
| -------------- | -------------------------------------------------------------- |
| `callback`     | A function that will be executed on each element of the array. |
| `currentValue` | The current element being processed.                           |
| `index`        | (Optional) The index of the current element.                   |
| `array`        | (Optional) The array `forEach` was called upon.                |
| `thisArg`      | (Optional) Value to use as `this` when executing the callback. |

## 3. Basic Example

```javascript
const numbers = [1, 2, 3, 4, 5];

numbers.forEach(function(num) {
  console.log(num);
});
```

**Output:**

```
1
2
3
4
5
```

## 4. Using Arrow Function

```javascript
const fruits = ["apple", "banana", "cherry"];

fruits.forEach(fruit => console.log(fruit.toUpperCase()));
```

**Output:**

```
APPLE
BANANA
CHERRY
```

## 5. Accessing Index and Array

```javascript
const colors = ["red", "green", "blue"];

colors.forEach((color, index, arr) => {
  console.log(`${index}: ${color} (array length: ${arr.length})`);
});
```

**Output:**

```
0: red (array length: 3)
1: green (array length: 3)
2: blue (array length: 3)
```

## 6. Using `thisArg`

The `thisArg` parameter allows you to set the value of `this` inside the callback function.

```javascript
const obj = {
  prefix: "Color:",
};

const colors = ["red", "green", "blue"];

colors.forEach(function(color) {
  console.log(this.prefix, color);
}, obj);
```

**Output:**

```
Color: red
Color: green
Color: blue
```

## 7. Important Notes

* `forEach()` **does not return a value**; it always returns `undefined`.
* You **cannot use `break`, `continue`, or `return`** to exit early from a `forEach()` loop.
* To stop or filter elements, use other methods like `filter()` or `map()`.

### Example (Incorrect Early Exit Attempt)

```javascript
const arr = [1, 2, 3, 4, 5];

arr.forEach(num => {
  if (num === 3) return; // This only exits the current callback, not the loop
  console.log(num);
});
```

**Output:**

```
1
2
4
5
```

## 8. forEach() vs for...of vs map()

| Feature                   | `forEach()`                          | `for...of`                     | `map()`                          |
| ------------------------- | ------------------------------------ | ------------------------------ | -------------------------------- |
| Purpose                   | Executes a callback for each element | Iterates over iterable objects | Creates a new array from results |
| Returns                   | `undefined`                          | `undefined`                    | New array                        |
| Supports `break/continue` | ❌ No                                 | ✅ Yes                          | ❌ No                             |
| Chainable                 | ❌ No                                 | ❌ No                           | ✅ Yes                            |

## 9. Nested `forEach()`

You can use nested `forEach()` to iterate through multidimensional arrays.

```javascript
const matrix = [
  [1, 2],
  [3, 4],
  [5, 6]
];

matrix.forEach(row => {
  row.forEach(value => {
    console.log(value);
  });
});
```

**Output:**

```
1
2
3
4
5
6
```

## 10. When to Use `forEach()`

Use `forEach()` when:

* You want to perform side effects like logging or DOM manipulation.
* You don’t need to stop iteration early.
* You don’t need a returned array.

Avoid using `forEach()` when:

* You need to `break` or `return` early.
* You want to transform data — use `map()` instead.

## 11. Summary

| Key Concept        | Description                       |
| ------------------ | --------------------------------- |
| Method Type        | Array method                      |
| Return Value       | `undefined`                       |
| Supports Break     | ❌ No                              |
| Callback Arguments | `currentValue`, `index`, `array`  |
| Best For           | Simple iteration and side effects |

## 12. Further Reading

* [MDN Web Docs: Array.prototype.forEach()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/forEach)
* [MDN Web Docs: Iteration protocols](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Iteration_protocols)

> 📚 This is part of the JS basic chapter.
