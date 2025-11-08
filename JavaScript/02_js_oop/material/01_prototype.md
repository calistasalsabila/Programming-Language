# JavaScript Object Prototype (OOP)

## Introduction

In JavaScript, **prototypes** are the foundation of the object-oriented system. Every object in JavaScript has a hidden property called `[[Prototype]]` that refers to another object, known as its **prototype**. This mechanism allows objects to inherit properties and methods from other objects.

JavaScript uses **prototypal inheritance**, meaning objects can directly inherit from other objects.

---

## Object Prototype Basics

### Example

```js
const person = {
  greet() {
    console.log('Hello!');
  }
};

const student = Object.create(person);
student.greet(); // Output: Hello!
```

Here, `student` is created using `Object.create(person)`, so its prototype is `person`. Thus, `student` inherits the `greet()` method.

---

## The `prototype` Property

Every **function** in JavaScript has a `prototype` property that is used to build the `[[Prototype]]` chain when using the `new` keyword.

### Example

```js
function Person(name) {
  this.name = name;
}

Person.prototype.sayHello = function() {
  console.log(`Hi, I'm ${this.name}`);
};

const user1 = new Person('Dokja');
user1.sayHello(); // Output: Hi, I'm Dokja
```

Here, the `sayHello` method is defined on `Person.prototype`, allowing all instances created with `new Person()` to share it.

---

## Prototype Chain

When accessing a property, JavaScript first checks the object itself. If not found, it looks up the prototype chain.

### Example

```js
const hero = { power: 'Courage' };
const warrior = Object.create(hero);

console.log(warrior.power); // Output: Courage
console.log(Object.getPrototypeOf(warrior) === hero); // true
```

If `warrior` doesn’t have the `power` property, JavaScript looks for it in `hero` (its prototype).

---

## Adding Methods via Prototype

Adding methods to a constructor’s prototype is more efficient than adding them directly in the constructor.

### Example

```js
function Animal(type) {
  this.type = type;
}

Animal.prototype.describe = function() {
  console.log(`This is a ${this.type}`);
};

const cat = new Animal('cat');
const dog = new Animal('dog');

cat.describe(); // Output: This is a cat
dog.describe(); // Output: This is a dog
```

Both `cat` and `dog` share the same `describe` method reference.

---

## Prototype Inheritance

You can create inheritance between constructor functions using prototypes.

### Example

```js
function Vehicle(brand) {
  this.brand = brand;
}

Vehicle.prototype.start = function() {
  console.log(`${this.brand} engine started.`);
};

function Car(brand, model) {
  Vehicle.call(this, brand);
  this.model = model;
}

Car.prototype = Object.create(Vehicle.prototype);
Car.prototype.constructor = Car;

Car.prototype.drive = function() {
  console.log(`${this.brand} ${this.model} is driving.`);
};

const myCar = new Car('Toyota', 'Supra');
myCar.start();  // Output: Toyota engine started.
myCar.drive();  // Output: Toyota Supra is driving.
```

Here, `Car` inherits from `Vehicle` using `Object.create(Vehicle.prototype)`.

---

## Built-in Object Prototypes

JavaScript’s built-in objects like `Array`, `String`, `Number`, etc., all have prototypes that provide useful methods.

### Example

```js
console.log(Array.prototype);
console.log(String.prototype);
console.log(Object.prototype);
```

These prototypes contain built-in methods like `push`, `slice`, `toUpperCase`, etc.

---

## Checking and Modifying Prototypes

### Methods

* `Object.getPrototypeOf(obj)` → Get prototype of an object.
* `Object.setPrototypeOf(obj, proto)` → Set a new prototype.

### Example

```js
const base = { info: 'base object' };
const derived = {};

Object.setPrototypeOf(derived, base);
console.log(Object.getPrototypeOf(derived) === base); // true
console.log(derived.info); // Output: base object
```

---

## ES6 Classes and Prototypes

`class` syntax in JavaScript is syntactic sugar over prototypes.

### Example

```js
class User {
  constructor(name) {
    this.name = name;
  }
  greet() {
    console.log(`Hello, ${this.name}`);
  }
}

const u1 = new User('Hamin');
u1.greet(); // Output: Hello, Hamin
```

Under the hood, `User` uses the prototype system.

---

## Summary

| Concept               | Description                                                               |
| --------------------- | ------------------------------------------------------------------------- |
| Prototype             | Object from which other objects inherit properties and methods.           |
| Prototype Chain       | Series of linked prototypes JavaScript uses for inheritance.              |
| Constructor Prototype | Function’s `prototype` property defines shared methods for its instances. |
| Object.create()       | Creates a new object with a specified prototype.                          |
| ES6 Class             | Modern syntax built on top of prototypes.                                 |

---

## Further Reading

* [MDN: Prototypes](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Objects/Object_prototypes)
* [MDN: Object.create()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/create)
* [MDN: Inheritance and the prototype chain](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Inheritance_and_the_prototype_chain)
* [MDN: Classes](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes)

> 📚 This is part of the JS basic chapter.
