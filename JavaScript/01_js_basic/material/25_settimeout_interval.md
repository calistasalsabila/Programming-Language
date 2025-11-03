# JavaScript `setTimeout()` and `setInterval()`

## 1. Introduction

JavaScript provides two important timing functions — **`setTimeout()`** and **`setInterval()`** — that allow you to execute code after a delay or repeatedly at specified intervals. They are commonly used for animations, scheduled tasks, and asynchronous operations.

---

## 2. `setTimeout()`

### Definition

`setTimeout()` executes a function **once** after a specified number of milliseconds.

### Syntax

```javascript
setTimeout(callback, delay, arg1, arg2, ...);
```

### Parameters

| Parameter         | Description                                          |
| ----------------- | ---------------------------------------------------- |
| `callback`        | Function to execute after the delay.                 |
| `delay`           | Time (in milliseconds) to wait before execution.     |
| `arg1, arg2, ...` | Optional parameters passed to the callback function. |

### Example

```javascript
setTimeout(() => {
  console.log("Executed after 2 seconds");
}, 2000);
```

**Output (after 2 seconds):**

```
Executed after 2 seconds
```

---

### Canceling a Timeout

You can cancel a timeout using **`clearTimeout()`**.

```javascript
const timeoutId = setTimeout(() => {
  console.log("This will not run.");
}, 3000);

clearTimeout(timeoutId);
```

**Output:** (Nothing is printed)

---

## 3. `setInterval()`

### Definition

`setInterval()` executes a function **repeatedly** at specified intervals (in milliseconds) until it is stopped.

### Syntax

```javascript
setInterval(callback, delay, arg1, arg2, ...);
```

### Example

```javascript
let count = 1;
const intervalId = setInterval(() => {
  console.log(`Count: ${count}`);
  count++;
  if (count > 3) {
    clearInterval(intervalId);
  }
}, 1000);
```

**Output:**

```
Count: 1
Count: 2
Count: 3
```

---

## 4. Canceling an Interval

Use **`clearInterval()`** to stop an ongoing interval.

```javascript
const interval = setInterval(() => console.log("Running..."), 500);

setTimeout(() => {
  clearInterval(interval);
  console.log("Interval stopped.");
}, 2000);
```

**Output:**

```
Running...
Running...
Running...
Interval stopped.
```

---

## 5. Passing Arguments to Callbacks

Both `setTimeout()` and `setInterval()` can pass arguments to their callback functions.

```javascript
function greet(name) {
  console.log(`Hello, ${name}!`);
}

setTimeout(greet, 1500, "Dokja");
```

**Output (after 1.5 seconds):**

```
Hello, Dokja!
```

---

## 6. Nested `setTimeout()` (Simulating `setInterval()`)

Instead of using `setInterval()`, you can use recursive `setTimeout()` calls for more precise timing.

```javascript
let counter = 1;

function repeat() {
  console.log(`Run ${counter}`);
  counter++;
  if (counter <= 3) {
    setTimeout(repeat, 1000);
  }
}

setTimeout(repeat, 1000);
```

**Output:**

```
Run 1
Run 2
Run 3
```

---

## 7. Common Use Cases

* Delaying actions (e.g., displaying a message after a few seconds)
* Creating animations or countdown timers
* Polling APIs at regular intervals
* Scheduling repetitive background tasks

---

## 8. Differences Between `setTimeout()` and `setInterval()`

| Feature       | `setTimeout()`                     | `setInterval()`                                                    |
| ------------- | ---------------------------------- | ------------------------------------------------------------------ |
| Execution     | Executes once after a delay        | Executes repeatedly at intervals                                   |
| Cancel Method | `clearTimeout()`                   | `clearInterval()`                                                  |
| Control       | More precise when used recursively | May cause overlapping calls if callback takes longer than interval |

---

## 9. Summary

| Concept         | Description                                       |
| --------------- | ------------------------------------------------- |
| `setTimeout()`  | Executes a function once after a delay            |
| `setInterval()` | Executes a function repeatedly at fixed intervals |
| Cancel Timeout  | `clearTimeout(id)`                                |
| Cancel Interval | `clearInterval(id)`                               |
| Unit            | Milliseconds (1 second = 1000 ms)                 |
| Best For        | Timed tasks, animations, delayed actions          |

---

## 10. Further Reading

* [MDN Web Docs: setTimeout()](https://developer.mozilla.org/en-US/docs/Web/API/setTimeout)
* [MDN Web Docs: setInterval()](https://developer.mozilla.org/en-US/docs/Web/API/setInterval)
* [MDN Web Docs: clearTimeout()](https://developer.mozilla.org/en-US/docs/Web/API/clearTimeout)
* [MDN Web Docs: clearInterval()](https://developer.mozilla.org/en-US/docs/Web/API/clearInterval)

> 📚 This is part of the JS basic chapter.
