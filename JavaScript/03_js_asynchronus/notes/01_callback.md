# Understanding Callback Parameters in JavaScript

## Goal

To understand why callbacks with and without parameters produce different outputs, even when both are referenced in the same function call.

---

## Theory Explanation

In JavaScript, **functions are first-class objects**, meaning they can be passed as arguments to other functions. These are commonly known as **callbacks**.

When a callback function is executed, it may receive arguments (data) from the function that calls it. However, whether those arguments are used depends entirely on how the callback is defined.

---

### 1. Function Call Example

Consider this function:

```js
const requestCallBack = (url, success, failure) => {
  const delay = Math.floor(Math.random() * 4500) + 500;

  setTimeout(() => {
    if (delay > 4000) {
      failure("Connection Timeout");
    } else {
      success(`Success ${url} ${delay}ms`);
    }
  }, delay);
};
```

This function takes three parameters:

1. `url` – the resource being requested.
2. `success` – callback for successful requests.
3. `failure` – callback for failed requests.

---

### 2. With Parameters in the Callback

```js
requestCallBack(
  'manhwa.com',
  function(response) { console.log(`Success ${response}`); },
  function(error) { console.log(`Error ${error}`); }
);
```

**Output Example:**

```
Success Success manhwa.com 1789ms
```

**Explanation:**

* The `success()` callback receives a value from the function call:

  ```js
  success(`Success ${url} ${delay}ms`);
  ```
* The callback has a parameter (`response`), so it captures that value and can use it.

---

### 3. Without Parameters in the Callback

```js
requestCallBack(
  'manhwa.com',
  function() { console.log('success'); },
  function() { console.log('error'); }
);
```

**Output Example:**

```
success
```

**Explanation:**
Even though `success("Success manhwa.com 1789ms")` is called, the callback has **no parameter** to receive the value.
JavaScript ignores the extra argument silently, so `"Success manhwa.com 1789ms"` is lost.

---

### 4. Why the Output Differs

| Callback Definition          | Example Output                      | Explanation                                          |
| ---------------------------- | ----------------------------------- | ---------------------------------------------------- |
| `function(response) { ... }` | `Success Success manhwa.com 1789ms` | The callback receives and prints the argument value. |
| `function() { ... }`         | `success`                           | The argument passed from the caller is ignored.      |

---

### 5. Important Concept: JavaScript Argument Flexibility

JavaScript does not enforce the number of parameters.
This means:

* You can call a function with **more** or **fewer** arguments than declared.
* Extra arguments are simply ignored.
* Missing arguments become `undefined`.

You can view all passed arguments using the built-in `arguments` object or the **rest parameter syntax**.

Example:

```js
function test() {
  console.log(arguments);
}

test(1, 2, 3); // Output: [1, 2, 3]
```

or using the rest operator:

```js
function test(...args) {
  console.log(args);
}

test('a', 'b'); // Output: ['a', 'b']
```

---

## Conclusion

* Callback functions can receive parameters from the caller.
* If the callback defines parameters, the values passed will be captured.
* If no parameters are defined, all arguments passed will be ignored.
* JavaScript’s flexible argument handling allows such behavior without errors.

