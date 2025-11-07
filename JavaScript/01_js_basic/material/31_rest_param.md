# JavaScript Rest Parameters

## Overview

The **rest parameter (`...`)** allows a function to accept an indefinite number of arguments as an **array**. Introduced in **ES6 (ECMAScript 2015)**, it helps handle flexible numbers of inputs without using the `arguments` object.

---

## Syntax

```javascript
function functionName(...restParameter) {
  // function body
}
```

The `...` syntax before a parameter name means that the remaining arguments will be collected into an array.

---

## 1. Basic Example

```javascript
function sum(...numbers) {
  return numbers.reduce((a, b) => a + b, 0);
}

console.log(sum(1, 2, 3));     // 6
console.log(sum(5, 10, 15, 20)); // 50
```

Here, all arguments passed are collected into the array `numbers`.

---

## 2. Mixing Fixed and Rest Parameters

You can use rest parameters with regular parameters, but the rest parameter **must be the last one**.

```javascript
function introduce(firstName, ...hobbies) {
  console.log(`${firstName}'s hobbies are: ${hobbies.join(', ')}`);
}

introduce("Dokja", "reading", "writing", "coding");
// Output: Dokja's hobbies are: reading, writing, coding
```

> ⚠️ Rest parameters cannot appear before regular parameters.

---

## 3. Rest vs `arguments` Object

| Feature                | `rest` Parameter     | `arguments` Object  |
| ---------------------- | -------------------- | ------------------- |
| Type                   | Real array           | Array-like object   |
| Arrow Function Support | ✅ Yes                | ❌ No                |
| Usability              | Easier to manipulate | Requires conversion |

### Example Comparison

```javascript
function oldSum() {
  return Array.from(arguments).reduce((a, b) => a + b, 0);
}

function newSum(...nums) {
  return nums.reduce((a, b) => a + b, 0);
}

console.log(oldSum(1, 2, 3)); // 6
console.log(newSum(1, 2, 3)); // 6
```

---

## 4. Rest with Destructuring

You can use rest with **array or object destructuring** to collect remaining items.

### Array Example

```javascript
const [first, ...rest] = ["Dokja", "Jeha", "Hamin"];
console.log(first); // Dokja
console.log(rest);  // ["Jeha", "Hamin"]
```

### Object Example

```javascript
const user = { name: "Cale", age: 20, city: "Busan" };
const { name, ...info } = user;

console.log(name); // Cale
console.log(info); // { age: 20, city: 'Busan' }
```

---

## 5. Rest and Arrow Functions

Rest parameters can also be used in arrow functions.

```javascript
const multiply = (...nums) => nums.reduce((a, b) => a * b, 1);
console.log(multiply(2, 3, 4)); // 24
```

---

## 6. Difference Between Spread and Rest

Both use the same `...` syntax, but their behavior is opposite:

| Operator   | Purpose           | Example             |
| ---------- | ----------------- | ------------------- |
| **Spread** | Expands elements  | `add(...array)`     |
| **Rest**   | Collects elements | `function(...args)` |

### Example

```javascript
function example(...args) {
  console.log(args);
}

const data = [1, 2, 3];
example(...data); // Spread when calling, Rest when receiving
```

---

## 7. Combining Rest with Default Values

You can use default values for fixed parameters and rest for additional arguments.

```javascript
function greet(name = "Guest", ...messages) {
  console.log(`Hello ${name}! ${messages.join(' ')}`);
}

greet(); // Hello Guest!
greet("Jeha", "Welcome", "back!"); // Hello Jeha! Welcome back!
```

---

## Summary

* Rest parameters collect multiple arguments into an array.
* Must appear at the end of the parameter list.
* Easier to use than the `arguments` object.
* Works in both regular and arrow functions.
* Often paired with spread syntax for flexible function design.

---

## Further Reading

* [MDN Web Docs: Rest Parameters](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/rest_parameters)
* [JavaScript.info – Rest Parameters & Spread Operator](https://javascript.info/rest-parameters-spread-operator)

> 📚 This is part of the JS basic chapter.
