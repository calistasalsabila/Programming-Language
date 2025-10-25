# JavaScript `typeof` Operator

The `typeof` operator in JavaScript is used to determine the type of a given value or variable. It returns a string that indicates the type of the operand. This operator is especially useful for debugging, data validation, and checking variable types at runtime.

---

## Syntax

```javascript
typeof operand
```

* **operand**: The value or variable whose type you want to determine.

---

## Return Values

The `typeof` operator returns one of the following strings:

| Type of Operand   | Result String                                  |
| ----------------- | ---------------------------------------------- |
| Undefined         | "undefined"                                    |
| Null              | "object" (this is a known bug/legacy behavior) |
| Boolean           | "boolean"                                      |
| Number            | "number"                                       |
| BigInt            | "bigint"                                       |
| String            | "string"                                       |
| Symbol            | "symbol"                                       |
| Function          | "function"                                     |
| Object (non-null) | "object"                                       |

---

## Examples

### 1. Basic Usage

```javascript
typeof 10;              // "number"
typeof 'hello';         // "string"
typeof true;            // "boolean"
typeof undefined;       // "undefined"
typeof null;            // "object" (legacy behavior)
typeof Symbol('id');    // "symbol"
typeof 100n;            // "bigint"
```

### 2. With Objects and Functions

```javascript
typeof {};              // "object"
typeof [];              // "object" (arrays are objects)
typeof function() {};   // "function"
typeof new Date();      // "object"
```

### 3. With Variables

```javascript
let a;
console.log(typeof a);  // "undefined"

a = 42;
console.log(typeof a);  // "number"

a = 'JavaScript';
console.log(typeof a);  // "string"

a = true;
console.log(typeof a);  // "boolean"
```

---

## Special Cases and Notes

### 1. `null` Returns "object"

This is an intentional legacy bug in JavaScript. Historically, `null` was implemented as an object reference with a null pointer, and this behavior was never fixed to avoid breaking existing code.

```javascript
typeof null; // "object"
```

To check specifically for `null`, use strict equality:

```javascript
value === null; // true if value is null
```

### 2. Distinguishing Between Objects and Arrays

Since `typeof` returns "object" for both objects and arrays, you can use `Array.isArray()` to differentiate them:

```javascript
Array.isArray([]);  // true
Array.isArray({});  // false
```

### 3. Functions

The `typeof` operator returns "function" for functions, which is actually a subtype of object. This is for convenience in checking callable entities.

```javascript
typeof function() {}; // "function"
```

### 4. Declared but Uninitialized Variables

Variables declared but not initialized return `"undefined"` when checked with `typeof`.

```javascript
let value;
console.log(typeof value); // "undefined"
```

### 5. Checking Nonexistent Variables

Unlike directly referencing an undeclared variable (which throws an error), using `typeof` on it will **not** cause an error.

```javascript
console.log(typeof notDeclared); // "undefined"
```

This is particularly useful for checking variable existence in global scopes or different execution contexts.

---

## Common Use Cases

1. **Type Checking**

   ```javascript
   if (typeof input === 'string') {
     console.log('Input is a string');
   }
   ```

2. **Avoiding Reference Errors**

   ```javascript
   if (typeof optionalVar !== 'undefined') {
     console.log('Variable exists');
   }
   ```

3. **Debugging Data Types**

   ```javascript
   console.log(typeof userData);
   ```

---

## Limitations of `typeof`

While `typeof` is useful, it has some limitations:

* It cannot distinguish between arrays, dates, or custom objects.
* It reports `null` as `"object"`.
* It cannot tell apart classes or instances beyond their object type.

For deeper inspection, you can use:

```javascript
Object.prototype.toString.call(value);
```

Example:

```javascript
Object.prototype.toString.call([]);        // "[object Array]"
Object.prototype.toString.call(new Date()); // "[object Date]"
```

---

## Summary

* `typeof` helps identify primitive types quickly.
* Returns type as a string.
* Legacy behavior: `typeof null` returns `"object"`.
* For complex structures (arrays, dates), use `Object.prototype.toString.call()`.
* Safe to use on undeclared variables without throwing errors.

---

## Further Reading

* [MDN Web Docs: typeof Operator](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/typeof)
* [JavaScript Data Types and Structures](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Data_structures)

> 📚 This is part of the JS basic chapter.
