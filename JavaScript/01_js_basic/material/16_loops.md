# JavaScript Loops

Loops allow you to execute a block of code multiple times as long as a specified condition is true. JavaScript supports several types of loops, each suited for different situations.

---

## 1. `for` Loop

### Syntax

```js
for (initialization; condition; increment) {
  // code to execute
}
```

### Explanation

* **Initialization** – Runs once before the loop starts, typically used to declare a counter variable.
* **Condition** – The loop continues while this expression evaluates to `true`.
* **Increment/Decrement** – Executed after each loop iteration.

### Example

```js
for (let i = 0; i < 5; i++) {
  console.log(i);
}
```

**Output:**

```
0
1
2
3
4
```

---

## 2. `while` Loop

### Syntax

```js
while (condition) {
  // code to execute
}
```

### Explanation

The `while` loop executes its block **as long as the condition remains true**. Be careful to avoid infinite loops.

### Example

```js
let i = 0;
while (i < 5) {
  console.log(i);
  i++;
}
```

**Output:** same as `for` loop above.

---

## 3. `do...while` Loop

### Syntax

```js
do {
  // code to execute
} while (condition);
```

### Explanation

The `do...while` loop always runs the code block **at least once**, even if the condition is false.

### Example

```js
let i = 5;
do {
  console.log(i);
  i++;
} while (i < 5);
```

**Output:**

```
5
```

(Executed once before the condition check.)

---

## 4. `for...of` Loop

Used to iterate over **iterable objects** such as arrays, strings, or sets.

### Syntax

```js
for (const element of iterable) {
  // code block
}
```

### Example with Array

```js
const fruits = ["apple", "banana", "cherry"];
for (const fruit of fruits) {
  console.log(fruit);
}
```

**Output:**

```
apple
banana
cherry
```

### Example with String

```js
for (const char of "JS") {
  console.log(char);
}
```

**Output:**

```
J
S
```

---

## 5. `for...in` Loop

Used to iterate over the **properties** of an object.

### Syntax

```js
for (const key in object) {
  // code block
}
```

### Example

```js
const person = { name: "Jeha", age: 20, city: "Seoul" };
for (const key in person) {
  console.log(key + ": " + person[key]);
}
```

**Output:**

```
name: Jeha
age: 20
city: Seoul
```

> ⚠️ Avoid using `for...in` with arrays since it does not guarantee order.

---

## 6. Nested Loops

A loop inside another loop. Commonly used for 2D data structures like arrays of arrays.

### Example

```js
for (let i = 1; i <= 3; i++) {
  for (let j = 1; j <= 2; j++) {
    console.log(`i = ${i}, j = ${j}`);
  }
}
```

**Output:**

```
i = 1, j = 1
i = 1, j = 2
i = 2, j = 1
i = 2, j = 2
i = 3, j = 1
i = 3, j = 2
```

### Example with Nested Arrays

```js
const matrix = [
  [1, 2, 3],
  [4, 5, 6],
];

for (const row of matrix) {
  for (const value of row) {
    console.log(value);
  }
}
```

**Output:**

```
1
2
3
4
5
6
```

---

## 7. `break` Statement

Used to **terminate** a loop immediately.

### Example

```js
for (let i = 1; i <= 5; i++) {
  if (i === 3) break;
  console.log(i);
}
```

**Output:**

```
1
2
```

(Loop stops when `i === 3`.)

---

## 8. `continue` Statement

Used to **skip** the current iteration and move to the next one.

### Example

```js
for (let i = 1; i <= 5; i++) {
  if (i === 3) continue;
  console.log(i);
}
```

**Output:**

```
1
2
4
5
```

(`i = 3` is skipped.)

---

## 9. Infinite Loops

Be cautious to include a **termination condition**.

### Example (Bad)

```js
while (true) {
  console.log("never ends!");
}
```

This loop runs forever unless a `break` is used.

### Example (Safe)

```js
let count = 0;
while (true) {
  if (count === 3) break;
  console.log(count);
  count++;
}
```

**Output:**

```
0
1
2
```

---

## 10. Loop Summary

| Loop Type    | Description                              | Condition Check | Best For                      |
| ------------ | ---------------------------------------- | --------------- | ----------------------------- |
| `for`        | Executes a block a fixed number of times | Before          | When iteration count is known |
| `while`      | Executes while condition is true         | Before          | Flexible conditions           |
| `do...while` | Executes at least once                   | After           | Input validation              |
| `for...of`   | Iterates over iterable values            | -               | Arrays, Strings, Sets         |
| `for...in`   | Iterates over object keys                | -               | Objects                       |
| `break`      | Stops loop immediately                   | -               | All loops                     |
| `continue`   | Skips current iteration                  | -               | All loops                     |

---

## Conclusion

* Use `for` when the number of iterations is known.
* Use `while` or `do...while` for flexible conditions.
* Use `for...of` for iterable data (arrays, strings).
* Use `for...in` for object properties.
* Use `break` to stop loops and `continue` to skip iterations.
* Nested loops are useful for multi-dimensional data.

---

## Further Reading

* [MDN Web Docs: Loops and Iteration](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Loops_and_iteration)
* [W3Schools: JavaScript Loops](https://www.w3schools.com/js/js_loop_for.asp)
* [JavaScript.info: Loops - while and for](https://javascript.info/while-for)
* [Eloquent JavaScript: Chapter 2 - Program Structure](https://eloquentjavascript.net/02_program_structure.html)

> 📚 This is part of the JS basic chapter.
