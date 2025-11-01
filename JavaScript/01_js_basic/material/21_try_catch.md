# JavaScript try...catch

## 1. Introduction

Error handling is a crucial aspect of programming. In JavaScript, the `try...catch` statement allows developers to handle runtime errors gracefully without stopping the execution of the entire program.

## 2. Syntax

```javascript
try {
  // Code that may cause an error
} catch (error) {
  // Code that handles the error
}
```

### Example

```javascript
try {
  console.log(a);
} catch (error) {
  console.log("An error occurred: " + error.message);
}
```

**Output:**

```
An error occurred: a is not defined
```

## 3. The `finally` Block

`finally` is an optional block that executes after the `try` and `catch` blocks — regardless of whether an error occurred.

### Example

```javascript
try {
  console.log("Start");
  throw new Error("Something went wrong!");
} catch (error) {
  console.log(error.message);
} finally {
  console.log("End of execution");
}
```

**Output:**

```
Start
Something went wrong!
End of execution
```

## 4. Using `throw`

The `throw` statement is used to create custom errors.

### Example

```javascript
function divide(a, b) {
  if (b === 0) {
    throw new Error("Cannot divide by zero");
  }
  return a / b;
}

try {
  console.log(divide(10, 0));
} catch (error) {
  console.log("Error: " + error.message);
}
```

**Output:**

```
Error: Cannot divide by zero
```

## 5. Nested try...catch

You can nest `try...catch` blocks to handle specific errors separately.

### Example

```javascript
try {
  try {
    throw new Error("Inner error");
  } catch (inner) {
    console.log("Caught inner: " + inner.message);
    throw new Error("Outer error");
  }
} catch (outer) {
  console.log("Caught outer: " + outer.message);
}
```

**Output:**

```
Caught inner: Inner error
Caught outer: Outer error
```

## 6. Common Use Cases

* Handling user input errors
* Managing network request failures
* Preventing app crashes
* Logging and debugging

## 7. Summary

| Feature   | Description                             |
| --------- | --------------------------------------- |
| `try`     | Contains code that might throw an error |
| `catch`   | Handles the error if one occurs         |
| `finally` | Executes code regardless of the outcome |
| `throw`   | Manually creates and throws an error    |

## 8. Further Reading

* [MDN Web Docs: try...catch](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/try...catch)
* [MDN Web Docs: throw](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/throw)
* [MDN Web Docs: Error Object](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Error)

> 📚 This is part of the JS basic chapter.
