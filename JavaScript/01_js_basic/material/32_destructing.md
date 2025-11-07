# JavaScript Destructuring

## Overview

**Destructuring** in JavaScript allows you to unpack (extract) values from arrays or properties from objects into distinct variables. It makes code cleaner and more readable, reducing the need for repetitive access syntax.

Introduced in **ES6 (ECMAScript 2015)**, destructuring works with arrays, objects, nested structures, and even function parameters.

---

## 1. Array Destructuring

### Basic Example

```javascript
const numbers = [1, 2, 3];
const [a, b, c] = numbers;

console.log(a); // 1
console.log(b); // 2
console.log(c); // 3
```

### Skipping Elements

You can skip specific items by leaving empty commas.

```javascript
const data = ["Dokja", "Jeha", "Hamin"];
const [first, , third] = data;
console.log(third); // Hamin
```

### Default Values

If a value is missing, you can assign a default.

```javascript
const [x = 10, y = 20] = [5];
console.log(x, y); // 5, 20
```

### Swapping Variables

Destructuring provides an elegant way to swap variables.

```javascript
let a = 1, b = 2;
[a, b] = [b, a];
console.log(a, b); // 2, 1
```

### Nested Array Destructuring

```javascript
const nested = [1, [2, 3]];
const [one, [two, three]] = nested;
console.log(two); // 2
```

---

## 2. Object Destructuring

### Basic Example

```javascript
const user = { name: "Dokja", age: 25 };
const { name, age } = user;

console.log(name); // Dokja
console.log(age);  // 25
```

### Renaming Variables

You can rename variables while destructuring.

```javascript
const user = { name: "Jeha", city: "Seoul" };
const { name: username, city: location } = user;

console.log(username); // Jeha
console.log(location); // Seoul
```

### Default Values

If the property doesn't exist, you can assign a default.

```javascript
const user = { name: "Hamin" };
const { name, age = 18 } = user;
console.log(name, age); // Hamin, 18
```

### Nested Object Destructuring

```javascript
const person = {
  name: "Dazai",
  address: {
    city: "Yokohama",
    zip: 12345
  }
};

const { name, address: { city, zip } } = person;
console.log(city); // Yokohama
```

> ⚠️ Nested destructuring can throw errors if intermediate objects are `undefined`. Consider using optional chaining (`?.`).

---

## 3. Destructuring in Function Parameters

Destructuring is useful when dealing with object or array parameters.

### Object Example

```javascript
function displayUser({ name, age }) {
  console.log(`${name} is ${age} years old.`);
}

displayUser({ name: "Cale", age: 21 }); // Cale is 21 years old.
```

### Array Example

```javascript
function show([first, second]) {
  console.log(first, second);
}

show(["Dokja", "Jeha"]); // Dokja Jeha
```

---

## 4. Combining with Rest Operator

Destructuring can collect remaining items using the rest operator `...`.

### Array Example

```javascript
const [first, ...others] = ["Dokja", "Jeha", "Hamin"];
console.log(others); // ["Jeha", "Hamin"]
```

### Object Example

```javascript
const { name, ...info } = { name: "Dazai", age: 25, job: "Detective" };
console.log(info); // { age: 25, job: 'Detective' }
```

---

## 5. Nested and Complex Destructuring

```javascript
const user = {
  name: "Jeha",
  social: {
    twitter: "@jeha",
    instagram: "@jeha_ig"
  },
  hobbies: ["reading", "coding"]
};

const {
  name,
  social: { twitter },
  hobbies: [firstHobby]
} = user;

console.log(twitter);   // @jeha
console.log(firstHobby); // reading
```

---

## 6. Default and Nested Combination

```javascript
const settings = { theme: "dark" };
const { theme = "light", font = "Arial" } = settings;
console.log(theme, font); // dark Arial
```

---

## 7. Common Use Cases

* Extracting multiple values from API responses.
* Simplifying function arguments.
* Handling deeply nested data.
* Combining with rest/spread for flexible data manipulation.

---

## Summary

* Destructuring extracts data from arrays or objects efficiently.
* Works with default values, renaming, nesting, and rest operators.
* Can be used directly in function parameters.
* Simplifies and shortens code.

---

## Further Reading

* [MDN Web Docs: Destructuring Assignment](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment)
* [JavaScript.info – Destructuring Assignment](https://javascript.info/destructuring-assignment)

> 📚 This is part of the JS basic chapter.
