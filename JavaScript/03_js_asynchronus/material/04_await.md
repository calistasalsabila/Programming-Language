# JavaScript `await`

## 1. Introduction

The `await` keyword in JavaScript is used to **pause the execution** of an `async` function until a `Promise` is settled (either fulfilled or rejected). It simplifies asynchronous code by making it look and behave like synchronous code.

`await` can only be used **inside an `async` function**, and it always returns the resolved value of the Promise.

---

## 2. Syntax

```js
let result = await promise;
```

* `promise`: The Promise to wait for.
* `result`: The value returned when the Promise resolves.

If the Promise is rejected, an exception is thrown, which should be caught using `try...catch`.

---

## 3. Example: Basic Usage

```js
async function getData() {
  console.log('Fetching...');
  const result = await new Promise(resolve => setTimeout(() => resolve('Data received'), 2000));
  console.log(result);
}

getData();
```

**Output:**

```
Fetching...
Data received
```

Explanation: The `await` keyword pauses execution inside `getData()` until the Promise resolves.

---

## 4. Handling Errors with `await`

When using `await`, errors can be handled using `try...catch` blocks.

```js
async function fetchData() {
  try {
    const response = await Promise.reject('Network error');
    console.log(response);
  } catch (error) {
    console.error('Error:', error);
  }
}

fetchData();
```

**Output:**

```
Error: Network error
```

---

## 5. Awaiting Multiple Promises

You can use `await` with multiple Promises sequentially or concurrently.

### Sequential Execution:

```js
async function sequential() {
  const a = await new Promise(resolve => setTimeout(() => resolve('A done'), 1000));
  const b = await new Promise(resolve => setTimeout(() => resolve('B done'), 1000));
  console.log(a, b);
}

sequential();
```

Execution time ≈ 2 seconds (one after another).

### Concurrent Execution:

```js
async function concurrent() {
  const [a, b] = await Promise.all([
    new Promise(resolve => setTimeout(() => resolve('A done'), 1000)),
    new Promise(resolve => setTimeout(() => resolve('B done'), 1000))
  ]);
  console.log(a, b);
}

concurrent();
```

Execution time ≈ 1 second (runs in parallel).

---

## 6. Mixing `await` with Loops

Using `await` inside loops can lead to **sequential execution**, which may slow performance. To run async operations in parallel, collect them first and use `Promise.all()`.

### Inefficient (Sequential):

```js
async function slowLoop() {
  for (let i = 1; i <= 3; i++) {
    const result = await new Promise(resolve => setTimeout(() => resolve(i), 1000));
    console.log(result);
  }
}

slowLoop();
```

Total time ≈ 3 seconds.

### Efficient (Parallel):

```js
async function fastLoop() {
  const promises = [1, 2, 3].map(i => new Promise(resolve => setTimeout(() => resolve(i), 1000)));
  const results = await Promise.all(promises);
  console.log(results);
}

fastLoop();
```

Total time ≈ 1 second.

---

## 7. `await` in Top-Level Code

Top-level `await` (outside any function) is supported in **ES2022** modules.

```js
// Works only in modules
const data = await fetch('https://api.example.com');
console.log('Fetched:', data);
```

---

## 8. Comparison: `.then()` vs `await`

| Feature         | `.then()`             | `await`                   |
| --------------- | --------------------- | ------------------------- |
| Syntax          | Uses callbacks        | Uses async/await keywords |
| Error Handling  | `.catch()`            | `try...catch`             |
| Readability     | Nested and less clear | Sequential and clean      |
| Execution Style | Chain-based           | Step-by-step              |

---

## 9. Summary

| Concept                      | Description                                                              |
| ---------------------------- | ------------------------------------------------------------------------ |
| **`await`**                  | Pauses execution in async functions until a Promise settles              |
| **`async` function**         | Required for using `await`                                               |
| **Error Handling**           | Done using `try...catch`                                                 |
| **Sequential vs Concurrent** | `await` can execute tasks one-by-one or in parallel with `Promise.all()` |
| **Top-level await**          | Supported in ES modules                                                  |

---

## 10. Further Reading

* [MDN: await](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/await)
* [MDN: async function](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/async_function)
* [JavaScript.info: async/await](https://javascript.info/async-await)

> 📚 This is part of the JS Asynchronus chapter.
