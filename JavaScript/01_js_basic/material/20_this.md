# The `this` Keyword in JavaScript

The `this` keyword in JavaScript refers to the object that is executing the current function. Its value depends on **how** and **where** the function is called.

---

## 1. Global Context

In the **global scope**, `this` refers to the global object.

* In browsers: `window`
* In Node.js: `global`

```js
console.log(this === window); // true (in browser)
```

In **strict mode**, `this` in the global context is `undefined`.

```js
'use strict';
console.log(this); // undefined
```

---

## 2. Inside an Object Method

When a function is called as a **method of an object**, `this` refers to that object.

```js
const person = {
  name: 'Dokja',
  greet() {
    console.log(`Hello, my name is ${this.name}`);
  }
};

person.greet(); // Output: Hello, my name is Dokja
```

Here, `this` refers to the `person` object.

---

## 3. In Regular Functions

When a function is called **without** an object reference, `this` refers to the global object (or `undefined` in strict mode).

```js
function showThis() {
  console.log(this);
}

showThis(); // window (in browser) or undefined (in strict mode)
```

---

## 4. In Arrow Functions

Arrow functions **do not have their own `this`**. Instead, they inherit `this` from the surrounding (lexical) scope.

```js
const user = {
  name: 'Jeha',
  showThis: () => {
    console.log(this);
  }
};

user.showThis(); // Refers to the global object, not 'user'
```

Compare with a normal method:

```js
const user2 = {
  name: 'Hamin',
  showThis() {
    console.log(this);
  }
};

user2.showThis(); // Refers to 'user2'
```

---

## 5. In Constructor Functions

When using a **constructor function**, `this` refers to the newly created object.

```js
function Car(brand) {
  this.brand = brand;
}

const myCar = new Car('Toyota');
console.log(myCar.brand); // Output: Toyota
```

---

## 6. Using `this` in Event Handlers

In event handlers, `this` refers to the HTML element that received the event.

```html
<button id="btn">Click Me</button>

<script>
  document.getElementById('btn').addEventListener('click', function() {
    console.log(this.id); // Output: btn
  });
</script>
```

If you use an **arrow function** instead, `this` will not refer to the button but the outer scope.

---

## 7. Controlling `this` with `call`, `apply`, and `bind`

You can explicitly set the value of `this` using `call`, `apply`, or `bind`.

### Using `call()`

```js
function greet() {
  console.log(`Hello, ${this.name}`);
}

const person = { name: 'Dazai' };
greet.call(person); // Output: Hello, Dazai
```

### Using `apply()`

Similar to `call()`, but arguments are passed as an array.

```js
function introduce(city, country) {
  console.log(`${this.name} from ${city}, ${country}`);
}

const user = { name: 'Felix' };
introduce.apply(user, ['Seoul', 'Korea']);
// Output: Felix from Seoul, Korea
```

### Using `bind()`

`bind()` creates a new function with `this` permanently set.

```js
const obj = { name: 'Cale' };
function sayHi() {
  console.log(`Hi, ${this.name}`);
}

const boundHi = sayHi.bind(obj);
boundHi(); // Output: Hi, Cale
```

---

## 8. Common Mistake with `this`

Losing `this` reference often happens when passing a method as a callback.

```js
const person = {
  name: 'Matthias',
  greet() {
    console.log(`Hi, ${this.name}`);
  }
};

setTimeout(person.greet, 1000); // Output: Hi, undefined
```

Solution: Use `bind()` or an arrow function.

```js
setTimeout(person.greet.bind(person), 1000); // Hi, Matthias
```

---

## Summary

* `this` refers to the object that is executing the function.
* In global scope → global object (or `undefined` in strict mode).
* In object methods → the object itself.
* In arrow functions → inherited from the outer scope.
* In constructors → the new object created.
* Use `call`, `apply`, and `bind` to manually control `this`.

---

## Further Reading

* [MDN Docs: this keyword](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/this)
* [MDN Docs: Arrow Functions](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow_functions)
* [MDN Docs: call()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/call)
* [MDN Docs: bind()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/bind)

> 📚 This is part of the JS basic chapter.
