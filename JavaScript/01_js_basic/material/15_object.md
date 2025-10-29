# JavaScript Objects

## 1. Introduction to Objects

An **object** in JavaScript is a collection of **key-value pairs**. Each key (also called a *property*) maps to a value. Objects are used to represent structured data and real-world entities.

### Example:

```js
let person = {
  name: "Dokja",
  age: 21,
  city: "Seoul"
};
```

You can think of objects as dictionaries or maps — they store related information together.

---

## 2. Object Syntax

An object is created using curly braces `{}` with key-value pairs separated by commas.

```js
let objectName = {
  key1: value1,
  key2: value2,
  key3: value3
};
```

Example:

```js
let car = {
  brand: "Toyota",
  model: "Supra",
  year: 2023
};
```

---

## 3. Accessing Object Properties

There are **two main ways** to access object properties:

### Dot Notation

```js
console.log(car.brand); // Toyota
```

### Bracket Notation

```js
console.log(car["model"]); // Supra
```

Bracket notation is useful when the key is stored in a variable or contains spaces/special characters.

```js
let key = "year";
console.log(car[key]); // 2023
```

---

## 4. Adding and Modifying Properties

You can add or change properties at any time.

```js
let user = { name: "Jeha" };
user.age = 19; // add new property
user.name = "Arian"; // modify existing property

console.log(user); // { name: 'Arian', age: 19 }
```

---

## 5. Deleting Properties

Use the `delete` keyword to remove a property.

```js
delete user.age;
console.log(user); // { name: 'Arian' }
```

---

## 6. Nested Objects

Objects can contain other objects or arrays inside them.

```js
let student = {
  name: "Shirone",
  scores: {
    math: 90,
    english: 85
  }
};

console.log(student.scores.math); // 90
```

---

## 7. Methods in Objects

A **method** is a function stored as an object property.

```js
let person = {
  name: "Dazai",
  greet: function() {
    return `Hello, my name is ${this.name}`;
  }
};

console.log(person.greet()); // Hello, my name is Dazai
```

You can also use shorthand syntax for methods:

```js
let person = {
  name: "Felix",
  greet() {
    return `Hi, I'm ${this.name}`;
  }
};
```

---

## 8. Checking for Properties

Use the `in` operator or `hasOwnProperty()` to check if an object has a specific key.

```js
console.log("name" in person); // true
console.log(person.hasOwnProperty("age")); // false
```

---

## 9. Looping Through Objects

Use `for...in` to iterate through all keys in an object.

```js
for (let key in car) {
  console.log(key + ":" + car[key]);
}
```

You can also use `Object.keys()`, `Object.values()`, or `Object.entries()`:

```js
console.log(Object.keys(car));   // ["brand", "model", "year"]
console.log(Object.values(car)); // ["Toyota", "Supra", 2023]
console.log(Object.entries(car)); // [["brand", "Toyota"], ["model", "Supra"], ["year", 2023]]
```

---

## 10. Copying and Merging Objects

You can copy or merge objects using `Object.assign()` or the **spread operator**.

### Using `Object.assign()`

```js
let base = { a: 1 };
let copy = Object.assign({}, base);
```

### Using Spread Operator

```js
let base = { a: 1 };
let extended = { ...base, b: 2 };
console.log(extended); // { a: 1, b: 2 }
```

---

## 11. `this` Keyword in Objects

The `this` keyword refers to the **current object** within a method.

```js
let user = {
  name: "Cale",
  introduce() {
    return `My name is ${this.name}`;
  }
};

console.log(user.introduce()); // My name is Cale
```

---

## 12. Object Destructuring

Destructuring allows you to extract object properties into variables easily.

```js
let book = { title: "Dungeon Reader", author: "Matthias" };
let { title, author } = book;

console.log(title);  // Dungeon Reader
console.log(author); // Matthias
```

---

## 13. JSON (JavaScript Object Notation)

Objects can be converted to and from JSON strings for data exchange.

```js
let obj = { name: "Deon", age: 20 };
let jsonStr = JSON.stringify(obj); // Object → JSON string
let newObj = JSON.parse(jsonStr);  // JSON string → Object

console.log(jsonStr); // {"name":"Deon","age":20}
console.log(newObj);  // { name: 'Deon', age: 20 }
```

---

## 14. Summary

| Concept         | Description             | Example                      |
| --------------- | ----------------------- | ---------------------------- |
| Create Object   | Store key-value pairs   | `{ name: 'Dokja', age: 21 }` |
| Access Property | Dot or bracket notation | `obj.name`, `obj['name']`    |
| Modify Property | Change or add new       | `obj.age = 22`               |
| Delete Property | Remove property         | `delete obj.age`             |
| Nested Object   | Object inside object    | `obj.details.city`           |
| Method          | Function in object      | `obj.greet()`                |
| Check Property  | Verify existence        | `'name' in obj`              |
| Copy Object     | Duplicate               | `{ ...obj }`                 |
| JSON            | Data format             | `JSON.stringify(obj)`        |

---

## 15. Further Reading

* [MDN: Working with Objects](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Working_with_Objects)
* [W3Schools: JavaScript Objects](https://www.w3schools.com/js/js_objects.asp)

> 📚 This is part of the JS basic chapter.
