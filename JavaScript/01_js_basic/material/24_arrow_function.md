# JavaScript Arrow Functions

## 1. Introduction

Arrow functions were introduced in **ES6 (ECMAScript 2015)** as a more concise way to write functions in JavaScript. They provide a shorter syntax and do not have their own `this`, `arguments`, or `super` bindings.

---

## 2. Syntax

```javascript
// Regular function
function add(a, b) {
  return a + b;
}

// Arrow function
const add = (a, b) => a + b;
```

### General Syntax

```javascript
(parameter1, parameter2, ...) => expression
```

If the body has only one expression, the `return` keyword and curly braces `{}` can be omitted.

---

## 3. Examples

### Single Parameter

```javascript
const square = x => x * x;
console.log(square(4)); // Output: 16
```

### Multiple Parameters

```javascript
const multiply = (a, b) => a * b;
console.log(multiply(2, 3)); // Output: 6
```

### No Parameters

```javascript
const greet = () => console.log("Hello, World!");
greet(); // Output: Hello, World!
```

### With Block Body

If the function body contains multiple statements, use curly braces `{}` and the `return` keyword explicitly.

```javascript
const calculate = (a, b) => {
  const sum = a + b;
  const product = a * b;
  return sum + product;
};

console.log(calculate(2, 3)); // Output: 11
```

---

## 4. Arrow Functions and `this`

Arrow functions **do not have their own `this`**. They inherit `this` from their surrounding (lexical) scope.

### Example

```javascript
const person = {
  name: "Dokja",
  regularFunc: function() {
    console.log("Regular:", this.name);
  },
  arrowFunc: () => {
    console.log("Arrow:", this.name);
  }
};

person.regularFunc(); // Regular: Dokja
person.arrowFunc();   // Arrow: undefined (inherits from global scope)
```

---

## 5. Returning Object Literals

When returning an object literal directly, wrap it in parentheses `()` to avoid confusion with the function body.

```javascript
const createUser = (name, age) => ({ name: name, age: age });
console.log(createUser("Jeha", 21));
```

**Output:**

```
{ name: 'Jeha', age: 21 }
```

---

## 6. Arrow Functions as Callbacks

Arrow functions are often used as **callbacks** for array methods and event handlers.

### Example 1: Array Method

```javascript
const numbers = [1, 2, 3, 4];
const doubled = numbers.map(n => n * 2);
console.log(doubled); // [2, 4, 6, 8]
```

### Example 2: Event Listener

```javascript
document.addEventListener('click', () => console.log('Clicked!'));
```

---

## 7. Arrow Functions vs Regular Functions

| Feature             | Regular Function             | Arrow Function               |
| ------------------- | ---------------------------- | ---------------------------- |
| Syntax              | Verbose (`function` keyword) | Concise (`=>` syntax)        |
| `this` Binding      | Dynamic                      | Lexical (inherited)          |
| `arguments` Object  | Yes                          | No                           |
| Used as Constructor | Yes                          | No                           |
| Implicit Return     | No                           | Yes (for single expressions) |

---

## 8. Limitations

* Cannot be used as constructors (`new` keyword will throw an error)
* Cannot use `arguments` object
* Not suitable for defining methods inside objects when `this` is needed

---

## 9. Summary

| Concept             | Description                             |
| ------------------- | --------------------------------------- |
| Purpose             | Shorter syntax for defining functions   |
| `this` Behavior     | Lexically inherited                     |
| Best For            | Callbacks, array methods, concise logic |
| Not Recommended For | Object methods, constructors            |
| Introduced In       | ES6 (2015)                              |

---

## 10. Further Reading

* [MDN Web Docs: Arrow function expressions](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow_functions)
* [MDN Web Docs: Functions](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Functions)
* [JavaScript.info: Arrow functions](https://javascript.info/arrow-functions-basics)

> 📚 This is part of the JS basic chapter.
