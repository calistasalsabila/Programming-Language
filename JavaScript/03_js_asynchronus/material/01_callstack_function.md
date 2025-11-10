# JavaScript Call Stack and Asynchronous Execution

## Introduction

JavaScript is **single-threaded**, meaning it can only execute one task at a time. To manage multiple operations efficiently, it uses a **Call Stack** along with mechanisms like the **Event Loop**, **Callback Queue**, and **Web APIs** to handle **asynchronous operations**.

---

## 1. Call Stack

The **Call Stack** is a data structure that keeps track of function calls in a program. When a function is called, it is pushed onto the stack; when it returns, it is popped off.

### Example:

```js
function first() {
  console.log('First function');
}

function second() {
  first();
  console.log('Second function');
}

second();
```

### Execution Flow:

1. `second()` is called → pushed onto the stack.
2. Inside `second()`, `first()` is called → pushed onto the stack.
3. `first()` executes → popped off.
4. `second()` continues and completes → popped off.

Final output:

```
First function
Second function
```

---

## 2. Synchronous vs Asynchronous Execution

* **Synchronous:** Tasks run one after another, blocking the next task until the current one finishes.
* **Asynchronous:** Tasks are delegated to the browser or Node.js APIs to execute in the background, allowing other code to run.

### Example:

```js
console.log('Start');

setTimeout(() => {
  console.log('Inside setTimeout');
}, 0);

console.log('End');
```

### Output:

```
Start
End
Inside setTimeout
```

Even with `0` delay, `setTimeout` runs **after** synchronous code because it is handled by the **event loop**.

---

## 3. Event Loop and Callback Queue

When an asynchronous function (like `setTimeout`, `fetch`, or `Promise`) is called:

1. It is sent to a **Web API** (handled outside the main thread).
2. Once completed, its callback is pushed to the **Callback Queue**.
3. The **Event Loop** continuously checks whether the Call Stack is empty.
4. When the stack is clear, the Event Loop pushes queued callbacks onto the stack for execution.

This ensures non-blocking behavior.

---

## 4. Promises and Microtask Queue

Promises are asynchronous but handled in the **microtask queue**, which has higher priority than the callback queue.

### Example:

```js
console.log('Start');

setTimeout(() => console.log('setTimeout'), 0);
Promise.resolve().then(() => console.log('Promise resolved'));

console.log('End');
```

### Output:

```
Start
End
Promise resolved
setTimeout
```

Explanation:

1. `Promise.then()` callbacks go to the **microtask queue**.
2. `setTimeout` callbacks go to the **callback queue**.
3. Microtasks always run before regular callbacks.

---

## 5. Async/Await Example

`async/await` is syntactic sugar for Promises, making asynchronous code look synchronous.

```js
async function fetchData() {
  console.log('Fetching...');
  await new Promise(resolve => setTimeout(resolve, 1000));
  console.log('Data received');
}

console.log('Start');
fetchData();
console.log('End');
```

### Output:

```
Start
Fetching...
End
Data received
```

Explanation:

* `await` pauses the async function without blocking the main thread.
* The function continues after the awaited Promise resolves.

---

## 6. Visualization Summary

```
Call Stack → Executes code line-by-line
↓
Web APIs → Handle async tasks like timers, fetch, events
↓
Callback Queue → Stores completed async callbacks
↓
Event Loop → Moves tasks to stack when it's empty
```

---

## Summary

* The **Call Stack** manages synchronous execution.
* **Asynchronous tasks** are delegated to Web APIs.
* The **Event Loop** coordinates between the stack and queues.
* **Promises** use the **microtask queue**, which runs before callbacks.
* **Async/Await** simplifies asynchronous code while maintaining non-blocking behavior.

---

## Further Reading

* [MDN – Concurrency Model and Event Loop](https://developer.mozilla.org/en-US/docs/Web/JavaScript/EventLoop)
* [MDN – setTimeout](https://developer.mozilla.org/en-US/docs/Web/API/setTimeout)
* [MDN – Promise](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise)
* [JavaScript.info – Event Loop](https://javascript.info/event-loop)

> 📚 This is part of the JS Asynchronus chapter.

