# JavaScript `map()` Method

## 1. Introduction

The `map()` method is a powerful array method in JavaScript used to create a **new array** by applying a provided function to each element of the original array. It does **not modify the original array** but returns a transformed copy instead.

---

## 2. Syntax

```javascript
array.map(callback(currentValue, index, array), thisArg);
```

### Parameters

| Parameter      | Description                                                    |
| -------------- | -------------------------------------------------------------- |
| `callback`     | Function executed on each element of the array.                |
| `currentValue` | The current element being processed.                           |
| `index`        | (Optional) The index of the current element.                   |
| `array`        | (Optional) The array `map()` was called upon.                  |
| `thisArg`      | (Optional) Value to use as `this` when executing the callback. |

---

## 3. Basic Example

```javascript
const numbers = [1, 2, 3, 4, 5];
const doubled = numbers.map(num => num * 2);
console.log(doubled);
```

**Output:**

```
[2, 4, 6, 8, 10]
```

---

## 4. Example with Objects

```javascript
const users = [
  { name: "Dokja", age: 21 },
  { name: "Jeha", age: 19 },
  { name: "Hamin", age: 22 }
];

const names = users.map(user => user.name);
console.log(names);
```

**Output:**

```
["Dokja", "Jeha", "Hamin"]
```

---

## 5. Using Index and Array

```javascript
const letters = ["a", "b", "c"];
const labeled = letters.map((letter, index) => `${index + 1}: ${letter}`);
console.log(labeled);
```

**Output:**

```
["1: a", "2: b", "3: c"]
```

---

## 6. `map()` Does Not Modify Original Array

```javascript
const nums = [1, 2, 3];
const squared = nums.map(n => n ** 2);

console.log(squared); // [1, 4, 9]
console.log(nums);    // [1, 2, 3]
```

---

## 7. Chaining `map()`

The `map()` method can be chained with other methods like `filter()` or `reduce()`.

```javascript
const result = [1, 2, 3, 4, 5]
  .map(n => n * 2)
  .filter(n => n > 5);

console.log(result);
```

**Output:**

```
[6, 8, 10]
```

---

## 8. Nested `map()`

You can use `map()` inside another `map()` to work with multidimensional arrays.

```javascript
const matrix = [
  [1, 2, 3],
  [4, 5, 6]
];

const squaredMatrix = matrix.map(row => row.map(num => num ** 2));
console.log(squaredMatrix);
```

**Output:**

```
[[1, 4, 9], [16, 25, 36]]
```

---

## 9. Difference Between `map()` and `forEach()`

| Feature                 | `map()`             | `forEach()`                        |
| ----------------------- | ------------------- | ---------------------------------- |
| Purpose                 | Creates a new array | Executes function for each element |
| Return Value            | New array           | `undefined`                        |
| Chainable               | ✅ Yes               | ❌ No                               |
| Modifies Original Array | ❌ No                | ❌ No                               |
| Break/Continue Support  | ❌ No                | ❌ No                               |

---

## 10. Common Use Cases

* Transforming array data (e.g., numbers, objects, strings)
* Extracting specific properties from objects
* Converting formats (e.g., Fahrenheit to Celsius)

### Example

```javascript
const fahrenheit = [32, 68, 95, 104];
const celsius = fahrenheit.map(temp => ((temp - 32) * 5) / 9);
console.log(celsius);
```

**Output:**

```
[0, 20, 35, 40]
```

---

## 11. Summary

| Key Concept            | Description                  |
| ---------------------- | ---------------------------- |
| Method Type            | Array transformation method  |
| Return Value           | New array                    |
| Mutates Original Array | No                           |
| Supports Chain         | Yes                          |
| Best For               | Transforming or mapping data |

---

## 12. Further Reading

* [MDN Web Docs: Array.prototype.map()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map)
* [MDN Web Docs: Functional Programming in JavaScript](https://developer.mozilla.org/en-US/docs/Glossary/Functional_programming)
* [JavaScript Info: Array methods](https://javascript.info/array-meth)

> 📚 This is part of the JS basic chapter.
