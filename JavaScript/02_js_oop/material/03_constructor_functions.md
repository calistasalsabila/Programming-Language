# JavaScript Constructor Functions

## Introduction

A **constructor function** in JavaScript is a special type of function used to create and initialize objects. When called with the `new` keyword, it automatically returns a new object that inherits from the function's `prototype`.

Constructor functions are the traditional way to implement **object-oriented programming (OOP)** in JavaScript before the introduction of the `class` syntax in ES6.

---

## Basic Syntax

```js
function Person(name, age) {
  this.name = name;
  this.age = age;
  this.greet = function() {
    console.log(`Hello, my name is ${this.name} and I'm ${this.age} years old.`);
  };
}

const user1 = new Person('Dokja', 20);
const user2 = new Person('Jeha', 22);

user1.greet(); // Hello, my name is Dokja and I'm 20 years old.
user2.greet(); // Hello, my name is Jeha and I'm 22 years old.
```

Here:

* `this` refers to the new object being created.
* The `new` keyword automatically:

  1. Creates an empty object `{}`.
  2. Sets `this` to reference that object.
  3. Links the object to the constructor’s `prototype`.
  4. Returns the new object.

---

## How the `new` Keyword Works

When you call a constructor with `new`, JavaScript performs these steps:

1. A new empty object is created.
2. `this` is bound to the new object.
3. The function body runs, adding properties to `this`.
4. The new object is linked to the constructor’s `prototype`.
5. The new object is returned automatically (unless another object is returned manually).

### Example

```js
function Hero(name, power) {
  this.name = name;
  this.power = power;
}

const hero1 = new Hero('Hamin', 'Speed');
console.log(hero1.name); // Hamin
```

---

## Adding Methods via Prototype

To avoid creating new copies of methods for each instance, you can attach methods to the constructor’s prototype.

```js
function Animal(type) {
  this.type = type;
}

Animal.prototype.describe = function() {
  console.log(`This is a ${this.type}.`);
};

const cat = new Animal('Cat');
const dog = new Animal('Dog');

cat.describe(); // This is a Cat.
dog.describe(); // This is a Dog.
```

All instances of `Animal` share the same `describe()` method through the prototype.

---

## Checking Constructor Reference

Each object created by a constructor has a `constructor` property that references the function that created it.

```js
console.log(cat.constructor === Animal); // true
```

You can also verify prototype links:

```js
console.log(Object.getPrototypeOf(cat) === Animal.prototype); // true
```

---

## Using Constructor Functions with `instanceof`

You can check whether an object was created by a specific constructor using the `instanceof` operator.

```js
console.log(cat instanceof Animal); // true
```

---

## Returning from Constructor Functions

Normally, constructors don’t need a `return` statement — JavaScript automatically returns the new object. However:

* If you explicitly return an **object**, that object replaces the implicit return.
* If you return a **primitive value**, it’s ignored.

### Example

```js
function Example() {
  this.msg = 'Hi';
  return { custom: 'Returned manually' }; // overrides default return
}

const e = new Example();
console.log(e); // { custom: 'Returned manually' }
```

---

## Constructor Function with Default Values

```js
function Car(brand = 'Unknown', model = 'Generic') {
  this.brand = brand;
  this.model = model;
}

const car1 = new Car('Toyota', 'Supra');
const car2 = new Car();

console.log(car1.brand); // Toyota
console.log(car2.brand); // Unknown
```

---

## Constructor Function vs Factory Function

| Feature           | Constructor Function                | Factory Function                |
| ----------------- | ----------------------------------- | ------------------------------- |
| Object Creation   | Uses `new` keyword                  | Returns object manually         |
| Private Variables | Not directly supported              | Achieved via closure            |
| Prototype         | Uses `prototype` for shared methods | No prototype sharing by default |
| Simplicity        | More formal / traditional           | More flexible                   |
| Return Behavior   | Implicitly returns new object       | Explicit `return` required      |

---

## Converting to ES6 Class

The constructor function can be rewritten using the modern `class` syntax:

```js
class Person {
  constructor(name, age) {
    this.name = name;
    this.age = age;
  }
  greet() {
    console.log(`Hello, I'm ${this.name} and I'm ${this.age} years old.`);
  }
}

const p1 = new Person('Dazai', 24);
p1.greet(); // Hello, I'm Dazai and I'm 24 years old.
```

The `class` syntax is syntactic sugar over the prototype-based constructor pattern.

---

## Summary

| Concept              | Description                                                       |
| -------------------- | ----------------------------------------------------------------- |
| Constructor Function | A special function used with `new` to create objects.             |
| `this` Keyword       | Refers to the new object being created.                           |
| Prototype            | Allows method sharing between instances.                          |
| `instanceof`         | Checks if an object was created by a specific constructor.        |
| Comparison           | Factory functions are flexible, constructors are more structured. |

---

## Further Reading

* [MDN: Constructor Function](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes/constructor)
* [MDN: Prototypes](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Objects/Object_prototypes)
* [MDN: Classes](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes)
* [JavaScript.info: Constructor, Operator new](https://javascript.info/constructor-new)

> 📚 This is part of the JS OOP chapter.
