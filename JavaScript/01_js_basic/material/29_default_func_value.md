# JavaScript Default Function Values

## Overview

Default parameter values in JavaScript allow you to initialize function parameters with default values if no value or `undefined` is passed.

Introduced in **ES6 (ECMAScript 2015)**, this feature simplifies code by avoiding manual checks for missing arguments.

---

## Syntax

```javascript
function functionName(param1 = defaultValue1, param2 = defaultValue2) {
  // function body
}
```

### Example

```javascript
function greet(name = "Guest") {
  console.log(`Hello, ${name}!`);
}

greet();          // Output: Hello, Guest!
greet("Dokja");    // Output: Hello, Dokja!
```

---

## Multiple Default Parameters

You can define multiple parameters with default values.

```javascript
function introduce(name = "Unknown", age = 18, city = "Seoul") {
  console.log(`${name} is ${age} years old and lives in ${city}.`);
}

introduce();                       // Unknown is 18 years old and lives in Seoul.
introduce("Jeha", 20);              // Jeha is 20 years old and lives in Seoul.
introduce("Hamin", undefined, "Busan"); // Hamin is 18 years old and lives in Busan.
```

> ⚡ If you pass `undefined` as an argument, JavaScript treats it as missing and applies the default value.

---

## Default Values as Expressions

Default values can be **expressions**, including function calls or other variable references.

```javascript
function getCurrentYear() {
  return new Date().getFullYear();
}

function logInfo(name, year = getCurrentYear()) {
  console.log(`${name} - Year: ${year}`);
}

logInfo("Dazai");        // Dazai - Year: 2025
logInfo("Cale", 2023);    // Cale - Year: 2023
```

---

## Default Values and Parameter Order

Default parameters should be placed **after required parameters** to avoid unexpected behavior.

```javascript
function add(a, b = 10) {
  return a + b;
}

console.log(add(5));       // 15
console.log(add(5, 20));   // 25
```

> ⚠️ Placing default parameters before non-default ones can cause confusion and make it unclear which arguments are optional.

---

## Interaction with `undefined` and `null`

* If you pass **`undefined`**, the default value is used.
* If you pass **`null`**, the default value is **not** used (since `null` is a valid value).

```javascript
function test(x = 10) {
  console.log(x);
}

test();         // 10

test(undefined); // 10

test(null);      // null
```

---

## Using Functions as Default Values

You can assign a function as a default value, which will be evaluated **at call time**.

```javascript
function randomNumber() {
  return Math.floor(Math.random() * 100);
}

function printRandom(value = randomNumber()) {
  console.log(value);
}

printRandom(); // Random number each call
```

---

## Summary

* Default parameters prevent the need for manual `if` or `||` checks.
* Default values only apply when the argument is `undefined`.
* Default values can be expressions or function calls.
* Always define default parameters after required ones.

---

## Further Reading

* [MDN Web Docs: Default Parameters](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Default_parameters)
* [JavaScript.info – Function Default Parameters](https://javascript.info/function-basics#default-values)

> 📚 This is part of the JS basic chapter.
