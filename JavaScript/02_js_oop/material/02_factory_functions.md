# JavaScript Factory Functions

## Introduction

A **Factory Function** in JavaScript is a function that returns a new object. It allows you to create multiple similar objects without using classes or constructors. Factory functions are simple, flexible, and often used to create object instances with encapsulated data.

---

## Basic Syntax

```js
function createUser(name, age) {
  return {
    name: name,
    age: age,
    greet() {
      console.log(`Hello, my name is ${this.name} and I'm ${this.age} years old.`);
    }
  };
}

const user1 = createUser('Dokja', 20);
const user2 = createUser('Jeha', 22);

user1.greet(); // Output: Hello, my name is Dokja and I'm 20 years old.
user2.greet(); // Output: Hello, my name is Jeha and I'm 22 years old.
```

The `createUser` function returns a new object each time it is called.

---

## Advantages of Factory Functions

1. **No need for `new` keyword** — avoids common mistakes with constructors.
2. **Encapsulation** — you can hide private data using closures.
3. **Flexibility** — you can return any kind of object or customize the return.

---

## Factory Function with Private Variables

Factory functions can leverage **closures** to create private variables.

```js
function createCounter() {
  let count = 0; // private variable

  return {
    increment() {
      count++;
      console.log(count);
    },
    decrement() {
      count--;
      console.log(count);
    },
    getCount() {
      return count;
    }
  };
}

const counter = createCounter();
counter.increment(); // 1
counter.increment(); // 2
console.log(counter.getCount()); // 2
```

Here, `count` is not accessible outside the function — it's private due to closure.

---

## Using Factory Functions for Object Composition

Instead of inheritance, you can use **composition** with factory functions to combine behaviors.

### Example

```js
function canEat() {
  return {
    eat() {
      console.log('Eating...');
    }
  };
}

function canWalk() {
  return {
    walk() {
      console.log('Walking...');
    }
  };
}

function createPerson(name) {
  return {
    name,
    ...canEat(),
    ...canWalk()
  };
}

const person = createPerson('Hamin');
person.eat(); // Eating...
person.walk(); // Walking...
```

This pattern is often referred to as **composition over inheritance**, which promotes modular and reusable design.

---

## Factory Functions vs Constructor Functions

| Feature           | Factory Function                  | Constructor Function     |
| ----------------- | --------------------------------- | ------------------------ |
| Syntax            | Regular function returning object | Uses `new` keyword       |
| Private Data      | Achieved via closures             | Not natively supported   |
| Prototype Sharing | Not by default                    | Yes, through `prototype` |
| Simplicity        | Simple, flexible                  | Slightly more formal     |

### Example Comparison

```js
// Factory Function
function createAnimal(type) {
  return {
    type,
    speak() {
      console.log(`${this.type} makes a sound.`);
    }
  };
}

// Constructor Function
function Animal(type) {
  this.type = type;
}
Animal.prototype.speak = function() {
  console.log(`${this.type} makes a sound.`);
};

const a1 = createAnimal('Cat');
const a2 = new Animal('Dog');

a1.speak(); // Cat makes a sound.
a2.speak(); // Dog makes a sound.
```

---

## Factory Function Returning Another Function

Factory functions can also return other functions, allowing flexible behavior.

```js
function createMultiplier(factor) {
  return function(num) {
    return num * factor;
  };
}

const double = createMultiplier(2);
const triple = createMultiplier(3);

console.log(double(5)); // 10
console.log(triple(5)); // 15
```

This shows how factory functions can generate new functions with customized behavior.

---

## Summary

| Concept          | Description                                                        |
| ---------------- | ------------------------------------------------------------------ |
| Factory Function | A function that returns an object without using `new`.             |
| Encapsulation    | Achieved using closures to hide private data.                      |
| Composition      | Combining smaller behaviors into objects.                          |
| Flexibility      | Can return any type or structure of object.                        |
| Comparison       | Factory functions are simpler but don’t use prototypes by default. |

---

## Further Reading

* [MDN: Object Initializer](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Object_initializer)
* [MDN: Closures](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Closures)
* [MDN: Object Composition](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Objects/Object-oriented_JS#object_composition)
* [MDN: Functions](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Functions)

> 📚 This is part of the JS OOP chapter.
