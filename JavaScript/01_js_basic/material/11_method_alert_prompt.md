# JavaScript Console Methods, Alert, and Prompt

The `console` object in JavaScript provides various methods to output information to the browser’s console for debugging and inspection. Additionally, JavaScript provides browser interaction functions like `alert()`, `prompt()`, and `confirm()` to communicate with the user.

---

## 1. `console.log()`

Prints general information or values to the console.

```js
console.log('Hello, world!');
let a = 10;
console.log('The value of a is', a);
```

**Output:**

```
Hello, world!
The value of a is 10
```

---

## 2. `console.error()`

Displays an error message in the console.

```js
console.error('An error occurred!');
```

**Output:** A red error message in the console.

---

## 3. `console.warn()`

Shows a warning message in the console.

```js
console.warn('This is a warning!');
```

**Output:** A yellow warning message.

---

## 4. `console.info()`

Displays an informational message.

```js
console.info('Information message');
```

**Output:** Similar to `console.log()` but intended for informational context.

---

## 5. `console.table()`

Displays data as a formatted table in the console.

```js
const users = [
  { name: 'Dokja', age: 21 },
  { name: 'Jeha', age: 22 }
];
console.table(users);
```

**Output:** A table with `name` and `age` columns.

---

## 6. `console.group()` and `console.groupEnd()`

Groups related logs together for better readability.

```js
console.group('User Info');
console.log('Name: Dokja');
console.log('Age: 21');
console.groupEnd();
```

**Output:** A collapsible group named *User Info* in the console.

---

## 7. `console.time()` and `console.timeEnd()`

Measures how long a block of code takes to execute.

```js
console.time('Loop Time');
for (let i = 0; i < 1000000; i++) {}
console.timeEnd('Loop Time');
```

**Output:**

```
Loop Time: X ms
```

---

## 8. `console.assert()`

Logs a message only if an expression is false.

```js
let x = 5;
console.assert(x > 10, 'x is not greater than 10');
```

**Output:**

```
Assertion failed: x is not greater than 10
```

---

## 9. `console.clear()`

Clears all previous console outputs.

```js
console.clear();
```

**Output:** Clears the console screen.

---

## 10. `alert()`

Displays a popup message to the user. It pauses script execution until the user closes the dialog.

```js
alert('Welcome to JavaScript!');
```

**Behavior:** A browser alert dialog appears with the message.

---

## 11. `prompt()`

Prompts the user to enter input and returns the input value as a string.

```js
let name = prompt('Enter your name:');
console.log('Hello, ' + name);
```

**Behavior:**

* A dialog box appears asking the user for input.
* The entered value is returned and can be used in code.

---

## 12. `confirm()`

Displays a confirmation dialog box with “OK” and “Cancel”. Returns `true` if the user clicks OK, otherwise `false`.

```js
let result = confirm('Do you want to continue?');
if (result) {
  console.log('User confirmed.');
} else {
  console.log('User canceled.');
}
```

**Output:** Depends on the user’s choice.

---

## Summary Table

| Method                           | Description                   | Example                    |
| -------------------------------- | ----------------------------- | -------------------------- |
| `console.log()`                  | Prints messages or data       | `console.log('Test')`      |
| `console.error()`                | Prints errors                 | `console.error('Error!')`  |
| `console.warn()`                 | Prints warnings               | `console.warn('Warning!')` |
| `console.info()`                 | Prints informational messages | `console.info('Info')`     |
| `console.table()`                | Displays tabular data         | `console.table(obj)`       |
| `console.group()` / `groupEnd()` | Groups related logs           | `console.group('Title')`   |
| `console.time()` / `timeEnd()`   | Measures execution time       | `console.time('t')`        |
| `console.assert()`               | Prints if condition is false  | `console.assert(a > b)`    |
| `console.clear()`                | Clears console output         | `console.clear()`          |
| `alert()`                        | Shows alert dialog            | `alert('Hi!')`             |
| `prompt()`                       | Asks user input               | `prompt('Name?')`          |
| `confirm()`                      | Asks for confirmation         | `confirm('Proceed?')`      |

---

## Best Practices

* Use `console.log()` for debugging only, remove it in production.
* Use `console.table()` to visualize complex objects.
* Use `console.warn()` and `console.error()` to highlight potential problems.
* Avoid overusing `alert()` and `prompt()` as they block code execution.

---

## Further Reading

* [MDN Web Docs: Console](https://developer.mozilla.org/en-US/docs/Web/API/console)
* [MDN Web Docs: Window alert()](https://developer.mozilla.org/en-US/docs/Web/API/Window/alert)
* [MDN Web Docs: Window prompt()](https://developer.mozilla.org/en-US/docs/Web/API/Window/prompt)
* [MDN Web Docs: Window confirm()](https://developer.mozilla.org/en-US/docs/Web/API/Window/confirm)

> 📚 This is part of the JS basic chapter.
