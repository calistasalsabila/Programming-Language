# JavaScript: `const` and `var`

In JavaScript, `const` and `var` are two of the three ways to declare variables (the other one being `let`). They differ in **scope**, **mutability**, and **hoisting** behavior. Understanding these differences is crucial for writing predictable and bug-free code.

---

## 1. `var`

The `var` keyword was the original way to declare variables in JavaScript. However, it has several quirks that can lead to unexpected behavior, especially regarding **function scope** and **hoisting**.

### Syntax

```javascript
var a = 10;
```

### Characteristics

1. **Scope**: Variables declared with `var` are **function-scoped**, not block-scoped.
2. **Re-declaration**: Can be **redeclared** and **updated** within the same scope.
3. **Hoisting**: Variables declared with `var` are **hoisted** to the top of their function or global scope and initialized with `undefined`.

### Example: Function Scope

```javascript
function example() {
  if (true) {
    var a = 5;
  }
  console.log(a); // Output: 5 — because 'a' is function-scoped
}
```

### Example: Redeclaration

```javascript
var a = 10;
var a = 20; // Valid
console.log(a); // Output: 20
```

### Example: Hoisting

```javascript
console.log(a); // Output: undefined (variable is hoisted but not assigned yet)
var a = 30;
```

### Summary of `var`

| Property       | Behavior                           |
| -------------- | ---------------------------------- |
| Scope          | Function-scoped                    |
| Re-declaration | Allowed                            |
| Re-assignment  | Allowed                            |
| Hoisting       | Yes (initialized with `undefined`) |

---

## 2. `const`

The `const` keyword (introduced in ES6) declares variables that **cannot be reassigned**. It is typically used for values that should remain constant throughout the program.

### Syntax

```javascript
const a = 10;
```

### Characteristics

1. **Scope**: `const` is **block-scoped** (like `let`).
2. **Re-declaration**: Not allowed in the same scope.
3. **Re-assignment**: Not allowed — the variable binding is constant.
4. **Hoisting**: Hoisted but **not initialized**; accessing before declaration throws a **ReferenceError**.

### Example: Block Scope

```javascript
if (true) {
  const a = 100;
  console.log(a); // Output: 100
}
console.log(a); // Error: a is not defined
```

### Example: No Reassignment

```javascript
const a = 10;
a = 20; // Error: Assignment to constant variable.
```

### Example: Constant Object or Array

Even though you cannot reassign a `const` variable, you **can modify the contents** of objects or arrays declared with `const`.

```javascript
const person = { name: "Jeha", age: 21 };
person.age = 22; // Valid — modifying a property

const numbers = [1, 2, 3];
numbers.push(4); // Valid — modifying array contents
```

However, reassignment of the entire object or array is not allowed:

```javascript
person = { name: "Dokja" }; // Error
```

### Summary of `const`

| Property       | Behavior              |
| -------------- | --------------------- |
| Scope          | Block-scoped          |
| Re-declaration | Not allowed           |
| Re-assignment  | Not allowed           |
| Hoisting       | Yes (not initialized) |

---

## 3. Comparison: `var` vs `const`

| Feature       | `var`                              | `const`                         |
| ------------- | ---------------------------------- | ------------------------------- |
| Scope         | Function                           | Block                           |
| Hoisting      | Yes (initialized with `undefined`) | Yes (not initialized)           |
| Redeclaration | Allowed                            | Not allowed                     |
| Reassignment  | Allowed                            | Not allowed                     |
| Use Case      | Legacy code, global variables      | Constants, immutable references |

---

## 4. Best Practices

* **Avoid using `var`** in modern JavaScript. It can lead to confusing scope behavior.
* Use **`const` by default**, and **`let`** only when you know the variable’s value will change.
* Reserve `var` for situations requiring compatibility with old JavaScript codebases.

### Example: Good Practice

```javascript
const MAX_USERS = 100;
let currentUserCount = 0;

function addUser() {
  if (currentUserCount < MAX_USERS) {
    currentUserCount++;
  }
}
```

---

## 5. Summary Table

| Keyword | Scope    | Reassignable | Redeclarable | Hoisted | Initialization |
| ------- | -------- | ------------ | ------------ | ------- | -------------- |
| `var`   | Function | Yes          | Yes          | Yes     | `undefined`    |
| `let`   | Block    | Yes          | No           | Yes     | Uninitialized  |
| `const` | Block    | No           | No           | Yes     | Uninitialized  |

---

### Further Reading

* [MDN Web Docs: var](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/var)
* [MDN Web Docs: const](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/const)
* [JavaScript.info: Variables](https://javascript.info/variables)

> 📚 This is part of the JS basic chapter.
