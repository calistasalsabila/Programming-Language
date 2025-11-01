# JavaScript Functions

Functions are one of the most fundamental building blocks in JavaScript. They allow you to group code into reusable units that perform specific tasks.

---

## 1. Function Declaration

A **function declaration** defines a function with the `function` keyword.

```js
function greet() {
  console.log("Hello, world!");
}

greet(); // Output: Hello, world!
```

### Explanation

* `function` is the keyword to declare a function.
* `greet` is the function name.
* `()` contains parameters (if any).
* `{}` contains the block of code to execute.

---

## 2. Parameters and Arguments

**Parameters** are placeholders defined in the function definition. **Arguments** are the actual values passed when the function is called.

```js
function greet(name) {
  console.log("Hello, " + name);
}

greet("Dokja"); // Output: Hello, Dokja
```

### Multiple Parameters

A function can take multiple parameters separated by commas.

```js
function add(a, b, c) {
  console.log(a + b + c);
}

add(2, 4, 6); // Output: 12
```

If you pass fewer arguments than parameters, the missing ones become `undefined`.

---

## 3. Return Statement

A function can **return a value** using the `return` keyword.

```js
function multiply(a, b) {
  return a * b;
}

let result = multiply(4, 5);
console.log(result); // Output: 20
```

### Notes

* Once a function executes `return`, it stops running.
* If a function does not have `return`, it returns `undefined` by default.

---

## 4. Function Expressions

A **function expression** defines a function and assigns it to a variable.

```js
const greet = function(name) {
  return "Hello, " + name;
};

console.log(greet("Jeha")); // Output: Hello, Jeha
```

### Difference from Function Declaration

* Function declarations are **hoisted** (can be called before definition).
* Function expressions are **not hoisted**.

---

## 5. Arrow Functions

Arrow functions provide a shorter syntax for writing function expressions.

```js
const multiply = (a, b) => a * b;
console.log(multiply(3, 4)); // Output: 12
```

If the function body has more than one statement, wrap it in `{}` and use `return` explicitly:

```js
const greet = (name) => {
  let message = `Hello, ${name}`;
  return message;
};
```

---

## 6. Function as Argument (Callback Function)

A **callback function** is a function passed as an argument to another function.

```js
function processUserInput(callback) {
  const name = "Hamin";
  callback(name);
}

function greetUser(userName) {
  console.log("Welcome, " + userName);
}

processUserInput(greetUser); // Output: Welcome, Hamin
```

In this case, `greetUser` is passed as a **callback** to `processUserInput`.

---

## 7. Function Returning Another Function

A function can **return another function**, forming what is known as a **higher-order function**.

```js
function createMultiplier(x) {
  return function(y) {
    return x * y;
  };
}

const double = createMultiplier(2);
console.log(double(5)); // Output: 10

const triple = createMultiplier(3);
console.log(triple(5)); // Output: 15
```

Here, `createMultiplier` returns a new function that multiplies its argument by a predefined value.

---

## 8. Methods in Objects

When a function is defined inside an object, it is called a **method**.

```js
const person = {
  name: "Dazai",
  greet: function() {
    console.log(`Hi, I'm ${this.name}`);
  }
};

person.greet(); // Output: Hi, I'm Dazai
```

Using shorthand syntax:

```js
const person = {
  name: "Sung Jin Woo",
  greet() {
    console.log(`Hi, I'm ${this.name}`);
  }
};
```

---

## Summary

* Functions group reusable code.
* Parameters are placeholders; arguments are actual values.
* `return` sends a value back to the caller.
* Function expressions assign functions to variables.
* Arrow functions offer concise syntax.
* Functions can be used as arguments (callbacks).
* Functions can return other functions (higher-order functions).
* Functions inside objects are called methods.

---

## Further Reading

* [MDN Docs: Functions](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Functions)
* [MDN Docs: Arrow Functions](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow_functions)
* [MDN Docs: Function Expressions](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/function)
* [MDN Docs: Callback Functions](https://developer.mozilla.org/en-US/docs/Glossary/Callback_function)
* [MDN Docs: this keyword](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/this)

> 📚 This is part of the JS basic chapter.

