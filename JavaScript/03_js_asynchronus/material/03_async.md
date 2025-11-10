# Asynchronous JavaScript

## 1. Introduction

JavaScript is **single-threaded**, meaning it can execute one task at a time within the call stack. However, real-world applications need to perform multiple operations (like fetching data, reading files, or waiting for user input) without freezing the main thread. This is where **asynchronous programming** comes in.

Asynchronous JavaScript allows the program to handle time-consuming tasks without blocking the execution of other code.

---

## 2. Synchronous vs Asynchronous

| Type             | Description                                                                                 | Example                                          |
| ---------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------ |
| **Synchronous**  | Tasks are executed one after another. Each must finish before the next starts.              | Reading files line by line or executing a loop.  |
| **Asynchronous** | Tasks can start, run, and complete independently, allowing other code to execute meanwhile. | Fetching data from an API or using `setTimeout`. |

### Example:

```js
console.log('Start');

setTimeout(() => {
  console.log('Async Task Complete');
}, 2000);

console.log('End');
```

**Output:**

```
Start
End
Async Task Complete
```

Explanation: The `setTimeout` callback is handled asynchronously by the browser (or Node.js), and runs after 2 seconds, even though other code continues executing.

---

## 3. The Event Loop

The **Event Loop** is the mechanism that allows JavaScript to perform non-blocking operations despite being single-threaded.

1. **Call Stack** → Where code executes line by line.
2. **Web APIs / Node APIs** → Handle async operations like `setTimeout`, `fetch`, etc.
3. **Callback Queue / Task Queue** → Holds callbacks waiting to be executed.
4. **Microtask Queue** → Holds promises and async callbacks with higher priority.
5. **Event Loop** → Moves tasks from the queues to the call stack when it's empty.

### Visualization:

```
Call Stack → Web APIs → Callback Queue → Event Loop → Microtask Queue
```

---

## 4. Types of Asynchronous Patterns

### 4.1 Callbacks

A function passed as an argument to another function, executed after an operation completes.

```js
function getData(callback) {
  setTimeout(() => {
    callback('Data loaded');
  }, 2000);
}

getData(result => console.log(result));
```

**Problem:** Callback Hell — deeply nested callbacks make code hard to read and maintain.

---

### 4.2 Promises

Promises represent the eventual result of an asynchronous operation.

```js
const promise = new Promise((resolve, reject) => {
  setTimeout(() => resolve('Promise resolved'), 2000);
});

promise.then(result => console.log(result));
```

---

### 4.3 Async/Await

Introduced in ES2017, `async` and `await` provide a simpler way to handle Promises.

```js
async function fetchData() {
  try {
    const result = await new Promise(resolve => setTimeout(() => resolve('Done!'), 1000));
    console.log(result);
  } catch (error) {
    console.error(error);
  }
}

fetchData();
```

---

## 5. Microtask vs Callback Queue

| Queue Type                | Contains                                | Priority |
| ------------------------- | --------------------------------------- | -------- |
| **Microtask Queue**       | Promise callbacks, MutationObservers    | Higher   |
| **Callback (Task) Queue** | `setTimeout`, `setInterval`, DOM events | Lower    |

Example:

```js
setTimeout(() => console.log('setTimeout'), 0);
Promise.resolve().then(() => console.log('Promise'));
console.log('Sync');
```

**Output:**

```
Sync
Promise
setTimeout
```

---

## 6. Real-World Example

```js
function simulateAPI() {
  return new Promise(resolve => {
    setTimeout(() => resolve('User data fetched'), 2000);
  });
}

async function displayData() {
  console.log('Fetching...');
  const data = await simulateAPI();
  console.log(data);
  console.log('Done');
}

displayData();
```

**Output:**

```
Fetching...
User data fetched
Done
```

---

## 7. Summary

| Concept             | Description                                                 |
| ------------------- | ----------------------------------------------------------- |
| **Asynchronous JS** | Executes tasks without blocking the main thread             |
| **Event Loop**      | Handles execution order between synchronous and async tasks |
| **Callback**        | Function executed after a task finishes                     |
| **Promise**         | Represents a future value of an async operation             |
| **Async/Await**     | Cleaner syntax for writing async code                       |
| **Microtask Queue** | High-priority queue for promises                            |
| **Callback Queue**  | Lower-priority queue for regular async tasks                |

---

## 8. Further Reading

* [MDN: Asynchronous JavaScript](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Asynchronous)
* [MDN: Event Loop](https://developer.mozilla.org/en-US/docs/Web/JavaScript/EventLoop)
* [JavaScript.info: Event Loop](https://javascript.info/event-loop)
* [MDN: Promises](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise)

> 📚 This is part of the JS Asynchronus chapter.

