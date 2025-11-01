# JavaScript Methods

In JavaScript, a **method** is a function that belongs to an object. Methods allow objects to perform actions or process data related to that object.

---

## 1. Defining Methods

A method is simply a function stored as a property of an object.

```js
const person = {
  name: "Dokja",
  greet: function() {
    console.log(`Hello, my name is ${this.name}`);
  }
};

person.greet(); // Output: Hello, my name is Dokja
```

Here, `greet` is a **method** of the `person` object.

---

## 2. Method Shorthand Syntax

ES6 introduced a shorter syntax for defining methods inside objects.

```js
const car = {
  brand: "Toyota",
  start() {
    console.log(`${this.brand} is starting...`);
  }
};

car.start(); // Output: Toyota is starting...
```

---

## 3. Using `this` in Methods

Inside a method, the keyword `this` refers to the object that owns the method.

```js
const user = {
  username: "Jeha",
  showInfo() {
    console.log(this.username);
  }
};

user.showInfo(); // Output: Jeha
```

If `this` is used in a regular function outside an object, it may refer to the global object (`window` in browsers or `global` in Node.js), or be `undefined` in strict mode.

---

## 4. Adding Methods Dynamically

You can add methods to objects even after they are created.

```js
const book = {
  title: "Omniscient Reader"
};

book.describe = function() {
  console.log(`Book title: ${this.title}`);
};

book.describe(); // Output: Book title: Omniscient Reader
```

---

## 5. Built-in JavaScript Methods

JavaScript provides many built-in methods for different data types:

### String Methods

```js
let str = "Hello World";
console.log(str.toUpperCase()); // HELLO WORLD
console.log(str.includes("World")); // true
```

### Array Methods

```js
let arr = [1, 2, 3];
arr.push(4);
console.log(arr); // [1, 2, 3, 4]
```

### Object Methods

```js
let user = { name: "Hamin", age: 20 };
console.log(Object.keys(user)); // ["name", "age"]
```

---

## 6. Method Chaining

Some methods return the object itself, allowing **method chaining**.

```js
let text = "  hello world  ";
let result = text.trim().toUpperCase().split(" ");
console.log(result); // ["HELLO", "WORLD"]
```

---

## Summary

* A **method** is a function that belongs to an object.
* Use `this` inside methods to access object properties.
* Methods can be added dynamically to objects.
* JavaScript has many built-in methods for strings, arrays, and objects.
* Method chaining allows calling multiple methods in one line.

---

## Further Reading

* [MDN Docs: Object Methods](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Method_definitions)
* [MDN Docs: this keyword](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/this)
* [MDN Docs: Object](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object)
* [MDN Docs: Functions](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Functions)

> 📚 This is part of the JS basic chapter.
