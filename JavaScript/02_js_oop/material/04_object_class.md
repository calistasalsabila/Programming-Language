# JavaScript Classes and Objects

## Introduction

In JavaScript, **classes** are a modern way (introduced in ES6) to create objects and implement inheritance compared to the traditional prototype-based system. Classes are syntactic sugar over JavaScript’s prototype inheritance.

Objects are collections of key-value pairs, and classes define blueprints for creating multiple objects with similar properties and methods.

---

## Creating Objects

Objects can be created in several ways:

### 1. Object Literal

```js
const student = {
  name: "Dokja",
  age: 21,
  greet() {
    console.log(`Hello, my name is ${this.name}`);
  }
};

student.greet(); // Hello, my name is Dokja
```

### 2. Using `new Object()`

```js
const person = new Object();
person.name = "Jeha";
person.sayHi = function() {
  console.log(`Hi, I'm ${this.name}`);
};

person.sayHi(); // Hi, I'm Jeha
```

### 3. Using Constructor Function

```js
function Car(brand, year) {
  this.brand = brand;
  this.year = year;
}

const car1 = new Car("Toyota", 2020);
console.log(car1.brand); // Toyota
```

---

## JavaScript Classes

Classes provide a cleaner and more structured way to define objects and their behavior.

### Basic Syntax

```js
class Student {
  constructor(name, age) {
    this.name = name;
    this.age = age;
  }

  greet() {
    console.log(`Hi, I'm ${this.name}, and I'm ${this.age} years old.`);
  }
}

const dokja = new Student("Dokja", 21);
dokja.greet(); // Hi, I'm Dokja, and I'm 21 years old.
```

---

## Class Methods

Methods are defined directly inside the class body.

```js
class Calculator {
  add(a, b) {
    return a + b;
  }
  subtract(a, b) {
    return a - b;
  }
}

const calc = new Calculator();
console.log(calc.add(3, 4)); // 7
```

---

## Static Methods

Static methods belong to the class itself, not instances.

```js
class MathHelper {
  static square(x) {
    return x * x;
  }
}

console.log(MathHelper.square(5)); // 25
```

---

## Inheritance (Extends & Super)

Classes can inherit from other classes using the `extends` keyword. The `super()` function calls the parent class constructor.

```js
class Animal {
  constructor(name) {
    this.name = name;
  }
  speak() {
    console.log(`${this.name} makes a sound.`);
  }
}

class Dog extends Animal {
  constructor(name, breed) {
    super(name);
    this.breed = breed;
  }
  speak() {
    console.log(`${this.name} barks!`);
  }
}

const dazai = new Dog("Dazai", "Shiba Inu");
dazai.speak(); // Dazai barks!
```

---

## Getters and Setters

Getters and setters allow you to control access to object properties.

```js
class Rectangle {
  constructor(width, height) {
    this.width = width;
    this.height = height;
  }

  get area() {
    return this.width * this.height;
  }

  set resize(value) {
    this.width = value;
    this.height = value;
  }
}

const box = new Rectangle(5, 10);
console.log(box.area); // 50
box.resize = 7;
console.log(box.area); // 49
```

---

## Class Expression

Classes can also be defined as expressions.

```js
const Person = class {
  constructor(name) {
    this.name = name;
  }
};

const jeha = new Person("Jeha");
console.log(jeha.name); // Jeha
```

---

## Object vs Class

| Feature      | Object Literal         | Class                            |
| ------------ | ---------------------- | -------------------------------- |
| Creation     | Manual, one by one     | Blueprint for multiple instances |
| Inheritance  | Prototype chain        | `extends` keyword                |
| Syntax       | Simpler                | Structured                       |
| Suitable for | Simple data containers | OOP and reusable structures      |

---

## Summary

* Objects store data in key-value pairs.
* Classes define templates for creating objects.
* The `constructor()` function initializes object properties.
* Methods define object behavior.
* `extends` and `super()` implement inheritance.
* Use getters/setters for controlled property access.
* `static` methods belong to the class, not its instances.

---

## Further Reading

* [MDN – Classes](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes)
* [MDN – Object](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object)
* [MDN – Inheritance and the Prototype Chain](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Inheritance_and_the_prototype_chain)

> 📚 This is part of the JS OOP chapter.
