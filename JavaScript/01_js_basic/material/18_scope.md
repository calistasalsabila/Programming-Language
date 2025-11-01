# JavaScript Scope

**Scope** in JavaScript defines the accessibility or visibility of variables. In other words, it determines where a variable can be accessed or modified in your code.

---

## 1. Global Scope

A variable declared **outside of any function or block** has a **global scope**, meaning it can be accessed anywhere in the program.

```js
let message = "Hello, world!";

function showMessage() {
  console.log(message); // Accessible
}

showMessage(); // Output: Hello, world!
console.log(message); // Accessible here too
```

### Notes

* Global variables can be accessed and modified from any scope.
* It is best to avoid using too many global variables to prevent name conflicts.

---

## 2. Function Scope

Variables declared **inside a function** are only accessible **within that function**.

```js
function greet() {
  let name = "Dokja";
  console.log(name); // Accessible inside the function
}

greet();
console.log(name); // Error: name is not defined
```

### Notes

* Each function creates its own scope.
* Variables declared inside a function cannot be accessed outside of it.

---

## 3. Block Scope

**Block scope** refers to variables declared inside `{}` blocks (for example in `if`, `for`, or `while` statements) using `let` or `const`.

```js
if (true) {
  let blockMessage = "Inside block";
  console.log(blockMessage); // Accessible here
}

console.log(blockMessage); // Error: blockMessage is not defined
```

### Notes

* `let` and `const` are block-scoped.
* `var` is **not** block-scoped; it is function-scoped.

Example using `var`:

```js
if (true) {
  var test = "Accessible outside";
}

console.log(test); // Output: Accessible outside
```

---

## 4. Lexical Scope

**Lexical scope** means that a function's scope is determined by its **position in the source code**, and nested functions can access variables declared in their outer scope.

```js
function outer() {
  let outerVar = "Outer";

  function inner() {
    console.log(outerVar); // Accessible due to lexical scope
  }

  inner();
}

outer(); // Output: Outer
```

### Notes

* Inner functions can access variables defined in their parent (outer) functions.
* Lexical scope is the foundation of closures in JavaScript.

---

## 5. Nested Scope Example

```js
let a = "global";

function first() {
  let b = "function scope";

  if (true) {
    let c = "block scope";
    console.log(a); // global
    console.log(b); // function scope
    console.log(c); // block scope
  }

  // console.log(c); // Error: c is not defined
}

first();
```

This example shows how each level of scope can access variables from its outer scope but not from its inner scope.

---

## Summary

* **Global Scope**: Accessible everywhere in the code.
* **Function Scope**: Accessible only inside the function.
* **Block Scope**: Accessible only inside `{}` if declared with `let` or `const`.
* **Lexical Scope**: Inner functions can access variables from their outer (parent) scopes.

---

## Further Reading

* [MDN Docs: Scope](https://developer.mozilla.org/en-US/docs/Glossary/Scope)
* [MDN Docs: Block Scope](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/block)
* [MDN Docs: Functions and Scope](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Functions#function_scope)
* [MDN Docs: Closures](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Closures)

> 📚 This is part of the JS basic chapter.
