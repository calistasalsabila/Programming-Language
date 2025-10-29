# JavaScript Arrays

## 1. Introduction to Arrays

An **array** in JavaScript is a special type of object used to store **multiple values in a single variable**. Each value in an array is called an **element**, and each element has a **numeric index** starting from `0`.

### Example:

```js
let fruits = ["Apple", "Banana", "Mango"];
console.log(fruits[0]); // Output: Apple
console.log(fruits[2]); // Output: Mango
```

---

## 2. Creating Arrays

You can create arrays in several ways:

### Using Array Literals (Most Common)

```js
let numbers = [1, 2, 3, 4];
```

### Using the `new Array()` Constructor

```js
let colors = new Array("Red", "Green", "Blue");
```

### Creating an Empty Array

```js
let emptyArr = [];
console.log(emptyArr.length); // Output: 0
```

---

## 3. Changing or Updating Array Elements

Array elements can be accessed and modified using their index.

```js
let fruits = ["Apple", "Banana", "Mango"];
fruits[1] = "Orange"; // Change Banana to Orange
console.log(fruits); // Output: ["Apple", "Orange", "Mango"]
```

If you assign a value to a non-existing index, JavaScript automatically creates undefined slots in between:

```js
let arr = [];
arr[3] = "Hi";
console.log(arr); // Output: [empty × 3, "Hi"]
```

---

## 4. Arrays Declared with `const`

Declaring an array with `const` means the **reference cannot be reassigned**, but the **contents of the array can still change**.

```js
const fruits = ["Apple", "Banana"];
fruits.push("Mango"); // Allowed
console.log(fruits); // Output: ["Apple", "Banana", "Mango"]

// fruits = ["New"] // ❌ Error: Assignment to constant variable
```

---

## 5. Nested Arrays

Arrays can contain other arrays (multi-dimensional arrays).

```js
let matrix = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
];

console.log(matrix[0][1]); // Output: 2
```

---

## 6. Common Array Methods

### 6.1 `concat()`

Merges two or more arrays.

```js
let a = [1, 2];
let b = [3, 4];
let result = a.concat(b);
console.log(result); // [1, 2, 3, 4]
```

### 6.2 `indexOf()`

Returns the index of the first occurrence of an element.

```js
let fruits = ["Apple", "Banana", "Mango"];
console.log(fruits.indexOf("Mango")); // 2
```

### 6.3 `includes()`

Checks if an element exists in the array.

```js
console.log(fruits.includes("Banana")); // true
```

### 6.4 `push()` and `pop()`

Add or remove elements from the **end** of the array.

```js
let nums = [1, 2, 3];
nums.push(4); // [1, 2, 3, 4]
nums.pop(); // [1, 2, 3]
```

### 6.5 `unshift()` and `shift()`

Add or remove elements from the **beginning** of the array.

```js
let nums = [2, 3];
nums.unshift(1); // [1, 2, 3]
nums.shift(); // [2, 3]
```

### 6.6 `sort()`

Sorts array elements **as strings by default**.

```js
let letters = ["b", "a", "c"];
letters.sort(); // ["a", "b", "c"]

let nums = [10, 2, 30];
nums.sort(); // [10, 2, 30] (lexicographical order)

// To sort numerically:
nums.sort((a, b) => a - b); // [2, 10, 30]
```

### 6.7 `reverse()`

Reverses the order of the array.

```js
let arr = [1, 2, 3];
arr.reverse(); // [3, 2, 1]
```

### 6.8 `slice()`

Returns a shallow copy of a portion of the array.

```js
let arr = ["a", "b", "c", "d"];
let sliced = arr.slice(1, 3); // ["b", "c"]
```

### 6.9 `splice()`

Add or remove elements at a specific index.

```js
let arr = ["a", "b", "c"];
arr.splice(1, 1, "x"); // remove 1 element at index 1 and add "x"
console.log(arr); // ["a", "x", "c"]
```

### 6.10 `join()`

Combines all elements into a string.

```js
let arr = ["Hello", "World"];
console.log(arr.join(" ")); // "Hello World"
```

### 6.11 `map()`

Creates a new array by applying a function to each element.

```js
let nums = [1, 2, 3];
let doubled = nums.map(x => x * 2);
console.log(doubled); // [2, 4, 6]
```

### 6.12 `filter()`

Creates a new array with elements that pass a test.

```js
let nums = [1, 2, 3, 4];
let even = nums.filter(x => x % 2 === 0);
console.log(even); // [2, 4]
```

### 6.13 `reduce()`

Reduces array values to a single value.

```js
let nums = [1, 2, 3, 4];
let sum = nums.reduce((acc, val) => acc + val, 0);
console.log(sum); // 10
```

---

## 7. Checking if a Variable is an Array

Use `Array.isArray()`:

```js
console.log(Array.isArray([1, 2, 3])); // true
console.log(Array.isArray("Hello"));   // false
```

---

## 8. Summary

| Concept            | Description            | Example                  |
| ------------------ | ---------------------- | ------------------------ |
| Create Array       | Store multiple values  | `let arr = [1,2,3]`      |
| Modify Value       | Change by index        | `arr[0] = 5`             |
| Empty Array        | Array with no elements | `let arr = []`           |
| `concat()`         | Merge arrays           | `[1,2].concat([3,4])`    |
| `indexOf()`        | Find index of element  | `arr.indexOf('a')`       |
| `sort()`           | Sort array             | `arr.sort()`             |
| `slice()`          | Copy part of array     | `arr.slice(1,3)`         |
| `reverse()`        | Reverse array order    | `arr.reverse()`          |
| `const` with Array | Can modify contents    | `const a=[1]; a.push(2)` |
| Nested Array       | Array inside array     | `[[1,2],[3,4]]`          |

---

## 9. Further Reading

* [MDN: Array Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array)
* [W3Schools: JavaScript Arrays](https://www.w3schools.com/js/js_arrays.asp)

> 📚 This is part of the JS basic chapter.
