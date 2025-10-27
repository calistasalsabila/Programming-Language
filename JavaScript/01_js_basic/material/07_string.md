# JavaScript Strings

Strings in JavaScript represent textual data and are one of the most commonly used data types. A string is a sequence of characters enclosed in single quotes (`'`), double quotes (`"`), or backticks (`` ` ``).

---

## 🧩 Basic Syntax

```js
let name1 = 'Dokja';
let name2 = "Jeha";
let sentence = `Hello, ${name1}`;
```

All three lines create a string, but **template literals** (backticks) allow embedding variables and expressions.

---

## 🔢 String Indexing

Strings are **indexed**, meaning each character has a position (starting from `0`).

```js
let word = 'Hello';

console.log(word[0]); // 'H'
console.log(word[1]); // 'e'
console.log(word[word.length - 1]); // 'o'
```

Strings are **immutable** — you cannot change a character directly:

```js
word[0] = 'Y'; // ❌ This does nothing
```

---

## 🏗️ String Properties

| Property | Description                    | Example                |
| -------- | ------------------------------ | ---------------------- |
| `length` | Returns the length of a string | `'Dokja'.length` → `5` |

---

## ⚙️ Common Built-in String Methods

### 1. **Case Conversion**

```js
let text = 'JavaScript';
text.toUpperCase(); // 'JAVASCRIPT'
text.toLowerCase(); // 'javascript'
```

### 2. **Searching and Finding**

```js
let str = 'Dokja and Jeha';

str.indexOf('Jeha');     // 10
str.lastIndexOf('a');     // 12
str.includes('Dokja');    // true
str.startsWith('Dokja');  // true
str.endsWith('Jeha');     // true
```

### 3. **Extracting Substrings**

```js
let s = 'JavaScript';

s.slice(0, 4);   // 'Java'
s.substring(4, 10); // 'Script'
s.substr(4, 3);  // 'Scr' (deprecated)
```

### 4. **Replacing and Splitting**

```js
let sentence = 'I like JavaScript';

sentence.replace('like', 'love'); // 'I love JavaScript'
sentence.split(' '); // ['I', 'like', 'JavaScript']
```

### 5. **Trimming Whitespace**

```js
let text = '   Dokja   ';
text.trim();      // 'Dokja'
text.trimStart(); // 'Dokja   '
text.trimEnd();   // '   Dokja'
```

### 6. **Concatenation**

```js
let first = 'Dokja';
let last = 'Jeha';

first.concat(' and ', last); // 'Dokja and Jeha'
```

### 7. **Character Methods**

```js
let str = 'Hello';

str.charAt(1);  // 'e'
str.charCodeAt(1); // 101 (Unicode value)
```

### 8. **Repeat and Padding**

```js
'Dokja'.repeat(3); // 'DokjaDokjaDokja'
'Dokja'.padStart(8, '*'); // '***Dokja'
'Dokja'.padEnd(8, '!');   // 'Dokja!!!'
```

---

## 🧠 String Methods with Arguments / Parameters

| Method                              | Parameters                                                     | Description              | Example                                  |
| ----------------------------------- | -------------------------------------------------------------- | ------------------------ | ---------------------------------------- |
| `slice(start, end)`                 | `start`: index to begin<br>`end`: index before which to stop   | Returns substring        | `'Dokja'.slice(1, 4)` → `'okj'`          |
| `substring(start, end)`             | Same as slice (no negative index)                              | Returns substring        | `'Dokja'.substring(1, 4)` → `'okj'`      |
| `replace(old, new)`                 | `old`: string or regex<br>`new`: replacement text              | Replaces part of string  | `'Jeha'.replace('Je', 'Do')` → `'Doha'`  |
| `split(separator, limit)`           | `separator`: string or regex<br>`limit`: max array length      | Splits string into array | `'a,b,c'.split(',')` → `["a", "b", "c"]` |
| `padStart(targetLength, padString)` | `targetLength`: final length<br>`padString`: characters to add | Pads string at start     | `'7'.padStart(3, '0')` → `'007'`         |
| `padEnd(targetLength, padString)`   | Same as above                                                  | Pads string at end       | `'7'.padEnd(3, '0')` → `'700'`           |

---

## 💬 Template Literals

Template literals use **backticks (`` ` ``)** and allow:

1. **Variable Interpolation**
2. **Multiline Strings**
3. **Expression Evaluation**

### 🔹 Example

```js
let name = 'Dokja';
let age = 21;

let intro = `My name is ${name} and I am ${age} years old.`;
console.log(intro);
```

➡️ Output:

```
My name is Dokja and I am 21 years old.
```

### 🔹 Multiline Example

```js
let poem = `Roses are red,
Violets are blue,
JavaScript is fun,
And so are you!`;

console.log(poem);
```

---

## 📚 Summary

| Concept                  | Description                                                            |
| ------------------------ | ---------------------------------------------------------------------- |
| **String Index**         | Each character has a zero-based index.                                 |
| **Built-in Methods**     | Tools for transforming, searching, trimming, or concatenating strings. |
| **Arguments/Parameters** | Define how methods behave (e.g., start and end indices).               |
| **Template Literals**    | Allow embedding variables, expressions, and multiline strings.         |

---

## 🔗 Further Reading

* [MDN Web Docs: String](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String)
* [W3Schools JavaScript Strings](https://www.w3schools.com/js/js_strings.asp)

> 📚 This is part of the JS basic chapter.
