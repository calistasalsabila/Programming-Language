# JavaScript `reduce()` Method

## 1. Introduction

The **`reduce()`** method in JavaScript is used to execute a **reducer function** on each element of an array, resulting in a single accumulated value. It is one of the most powerful array methods because it can perform a wide range of operations — from summing values to flattening arrays and building objects.

---

## 2. Syntax

```javascript
array.reduce(callback(accumulator, currentValue, index, array), initialValue);
```

### Parameters

| Parameter      | Description                                                                               |
| -------------- | ----------------------------------------------------------------------------------------- |
| `callback`     | Function executed on each element in the array.                                           |
| `accumulator`  | The accumulated result of previous callbacks.                                             |
| `currentValue` | The current element being processed.                                                      |
| `index`        | (Optional) The index of the current element.                                              |
| `array`        | (Optional) The array on which `reduce()` was called.                                      |
| `initialValue` | (Optional) A value to start the accumulation. If not provided, the first element is used. |

### Return Value

A **single value** resulting from the reduction process.

---

## 3. Example: Sum of Numbers

```javascript
const numbers = [1, 2, 3, 4, 5];
const sum = numbers.reduce((acc, curr) => acc + curr, 0);
console.log(sum); // 15
```

**Explanation:**

| Step | acc | curr | Result |
| ---- | --- | ---- | ------ |
| 1    | 0   | 1    | 1      |
| 2    | 1   | 2    | 3      |
| 3    | 3   | 3    | 6      |
| 4    | 6   | 4    | 10     |
| 5    | 10  | 5    | 15     |

---

## 4. Example: Find Maximum Value

```javascript
const numbers = [10, 25, 8, 56, 32];
const max = numbers.reduce((acc, curr) => (curr > acc ? curr : acc));
console.log(max); // 56
```

---

## 5. Example: Flatten an Array

```javascript
const nested = [[1, 2], [3, 4], [5, 6]];
const flat = nested.reduce((acc, curr) => acc.concat(curr), []);
console.log(flat); // [1, 2, 3, 4, 5, 6]
```

---

## 6. Example: Count Occurrences

```javascript
const fruits = ['apple', 'banana', 'apple', 'orange', 'banana', 'apple'];
const count = fruits.reduce((acc, fruit) => {
  acc[fruit] = (acc[fruit] || 0) + 1;
  return acc;
}, {});

console.log(count);
```

**Output:**

```
{ apple: 3, banana: 2, orange: 1 }
```

---

## 7. Example: Convert Array to Object

```javascript
const users = [
  { id: 1, name: 'Dokja' },
  { id: 2, name: 'Jeha' },
  { id: 3, name: 'Hamin' }
];

const userObject = users.reduce((acc, user) => {
  acc[user.id] = user.name;
  return acc;
}, {});

console.log(userObject);
```

**Output:**

```
{ 1: 'Dokja', 2: 'Jeha', 3: 'Hamin' }
```

---

## 8. Example: Subtract Numbers (Without Initial Value)

```javascript
const numbers = [10, 2, 1];
const result = numbers.reduce((acc, curr) => acc - curr);
console.log(result); // 7 (10 - 2 - 1)
```

---

## 9. Example: Average of Numbers

```javascript
const numbers = [10, 20, 30, 40];
const average = numbers.reduce((acc, curr, index, array) => {
  acc += curr;
  if (index === array.length - 1) return acc / array.length;
  return acc;
}, 0);

console.log(average); // 25
```

---

## 10. Common Use Cases

* Summing numbers
* Counting items
* Flattening arrays
* Transforming data structures
* Finding min/max
* Computing averages

---

## 11. `reduceRight()`

JavaScript also provides **`reduceRight()`**, which works the same as `reduce()` but iterates from right to left.

```javascript
const arr = ['a', 'b', 'c'];
const result = arr.reduceRight((acc, curr) => acc + curr);
console.log(result); // 'cba'
```

---

## 12. Differences Between `reduce()` and Other Methods

| Method      | Purpose                    | Returns New Array | Returns Single Value | Mutates Array |
| ----------- | -------------------------- | ----------------- | -------------------- | ------------- |
| `forEach()` | Iterates over each element | ❌                 | ❌                    | ❌             |
| `map()`     | Transforms elements        | ✅                 | ❌                    | ❌             |
| `filter()`  | Filters elements           | ✅                 | ❌                    | ❌             |
| `reduce()`  | Reduces array to one value | ❌                 | ✅                    | ❌             |

---

## 13. Summary

| Concept             | Description                                     |
| ------------------- | ----------------------------------------------- |
| Method              | `reduce()`                                      |
| Purpose             | Accumulates array elements into a single result |
| Mutates Array       | No                                              |
| Callback Parameters | accumulator, currentValue, index, array         |
| Optional Argument   | initialValue                                    |
| Related Method      | `reduceRight()`                                 |

---

## 14. Further Reading

* [MDN Web Docs: Array.prototype.reduce()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce)
* [JavaScript.info: Array methods](https://javascript.info/array-methods)
* [W3Schools: JavaScript Array reduce()](https://www.w3schools.com/jsref/jsref_reduce.asp)

> 📚 This is part of the JS basic chapter.
