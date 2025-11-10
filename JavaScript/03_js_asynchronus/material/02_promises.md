# JavaScript Promises (Asynchronous Programming)

## 1. Introduction

A **Promise** in JavaScript represents a value that may be available **now**, **later**, or **never**. It is an object used for handling **asynchronous operations** more cleanly than callbacks, preventing what’s known as *callback hell*.

## 2. Promise States

A Promise has three possible states:

* **Pending** → The initial state, operation not yet completed.
* **Fulfilled** → The operation completed successfully.
* **Rejected** → The operation failed.

```js
const promise = new Promise((resolve, reject) => {
  let success = true;
  if (success) {
    resolve('Operation succeeded');
  } else {
    reject('Operation failed');
  }
});

promise
  .then(result => console.log(result))
  .catch(error => console.error(error))
  .finally(() => console.log('Operation complete'));
```

## 3. Consuming Promises

You can handle the result of a promise using:

* **`.then()`** → Handles fulfilled results.
* **`.catch()`** → Handles rejected results.
* **`.finally()`** → Executes regardless of success or failure.

### Example

```js
function fetchData() {
  return new Promise((resolve, reject) => {
    setTimeout(() => resolve('Data loaded successfully'), 2000);
  });
}

fetchData()
  .then(data => console.log(data))
  .catch(error => console.log(error))
  .finally(() => console.log('Done'));
```

## 4. Promise Chaining

You can chain multiple `.then()` calls to process results sequentially.

```js
fetchData()
  .then(data => data + ' - Step 1')
  .then(result => console.log(result))
  .catch(error => console.error(error));
```

## 5. Combining Multiple Promises

JavaScript provides several methods to handle multiple promises:

* **`Promise.all()`** → Resolves when *all* promises resolve, rejects if any fail.
* **`Promise.race()`** → Resolves or rejects as soon as *one* promise settles.
* **`Promise.allSettled()`** → Waits for all promises to settle, regardless of result.
* **`Promise.any()`** → Resolves as soon as *one* promise fulfills.

```js
const p1 = Promise.resolve('A');
const p2 = Promise.resolve('B');
const p3 = Promise.reject('C');

Promise.all([p1, p2])
  .then(values => console.log(values)) // ['A', 'B']
  .catch(error => console.error(error));

Promise.race([p1, p3])
  .then(value => console.log(value))
  .catch(error => console.error(error));
```

## 6. Async/Await Syntax

`async` and `await` are syntactic sugar over Promises. They make asynchronous code look synchronous.

```js
async function loadData() {
  try {
    const result = await fetchData();
    console.log(result);
  } catch (error) {
    console.error(error);
  } finally {
    console.log('Finished fetching');
  }
}

loadData();
```

## 7. Error Handling

Errors inside Promises can be caught using `.catch()` or `try...catch` inside an `async` function.

```js
async function example() {
  try {
    const data = await Promise.reject('Error occurred');
  } catch (err) {
    console.error(err);
  }
}

example();
```

## 8. Summary

| Concept                  | Description                                                        |
| ------------------------ | ------------------------------------------------------------------ |
| **Promise**              | Represents an eventual completion or failure of an async operation |
| **then()**               | Handles fulfilled results                                          |
| **catch()**              | Handles rejected results                                           |
| **finally()**            | Executes after success or failure                                  |
| **Promise.all()**        | Waits for all promises to resolve                                  |
| **Promise.race()**       | Returns the first settled promise                                  |
| **Promise.any()**        | Returns the first fulfilled promise                                |
| **Promise.allSettled()** | Waits for all promises to settle                                   |
| **async/await**          | Syntactic sugar for working with Promises                          |

## 9. Further Reading

* [MDN: Using Promises](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises)
* [MDN: Promise Object](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise)
* [MDN: async/await](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Asynchronous/Promises)


> 📚 This is part of the JS Asynchronus chapter.
