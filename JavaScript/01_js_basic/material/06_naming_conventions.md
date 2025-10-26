# JavaScript Naming Conventions

Naming conventions are a set of rules and best practices for naming identifiers (variables, functions, classes, constants, etc.) in your code. Following consistent naming conventions makes your JavaScript code more readable, maintainable, and easier to understand by others.

---

## 1. **General Guidelines**

* Use **meaningful and descriptive names**.
* Avoid abbreviations unless they are widely known (e.g., `id`, `URL`, `HTML`).
* Use **camelCase** for most identifiers.
* Names should reflect their purpose, not their data type.
* Avoid using reserved words or global objects as identifiers.
* Keep names **concise but clear**.

**Example:**

```javascript
// ✅ Good
let userName = "Calista";
let maxScore = 100;

// ❌ Bad
let u = "Calista";
let x = 100;
```

---

## 2. **Variables**

Variables should follow the **camelCase** convention:

```javascript
let firstName = "Dokja";
let lastName = "Jeha";
let isLoggedIn = true;
```

**Guidelines:**

* Start with a lowercase letter.
* Use descriptive names that indicate the variable’s purpose.
* For Boolean variables, prefix with `is`, `has`, `can`, or `should` (e.g., `isActive`, `hasAccess`).

---

## 3. **Constants**

Constants (using `const`) that represent fixed values or configuration should be written in **UPPER_SNAKE_CASE**.

```javascript
const API_URL = "https://api.example.com";
const MAX_RETRY_COUNT = 3;
```

**Guidelines:**

* Use uppercase letters.
* Separate words with underscores.
* Should not be reassigned.

---

## 4. **Functions**

Functions should use **camelCase**, and their names should clearly describe the action they perform.

```javascript
function calculateTotal(price, tax) {
  return price + tax;
}

function fetchUserData() {
  // ...
}
```

**Guidelines:**

* Use verbs to describe actions (e.g., `get`, `set`, `update`, `delete`, `fetch`).
* Use descriptive and concise names.
* Avoid generic names like `handleData()` or `doStuff()`.

---

## 5. **Classes**

Class names should be written in **PascalCase** (first letter of each word capitalized).

```javascript
class UserProfile {
  constructor(name, age) {
    this.name = name;
    this.age = age;
  }
}

class DataProcessor {
  process() {
    // ...
  }
}
```

**Guidelines:**

* Use nouns to represent entities or concepts.
* Each class name should describe what it represents.

---

## 6. **Objects and Properties**

Object names and their properties follow **camelCase**.

```javascript
const user = {
  firstName: "Arian",
  lastName: "Shirone",
  isActive: true,
};
```

**Guidelines:**

* Property names should be consistent with variable naming.
* Avoid using spaces or special characters in keys.

---

## 7. **Arrays**

Array names should be plural to indicate a collection.

```javascript
let users = ["Cale", "Matthias", "Felix"];
let scores = [90, 85, 100];
```

**Guidelines:**

* Use plural names for lists or collections.
* Keep array names descriptive of their contents.

---

## 8. **Files and Folders**

* Use **kebab-case** for filenames (`user-profile.js`, `data-fetcher.js`).
* Avoid uppercase letters or spaces.
* Match file names with their main export when possible.

**Examples:**

```
components/
  user-profile.js
  login-form.js
utils/
  fetch-data.js
  calculate-total.js
```

---

## 9. **Events**

Event names typically use **camelCase** or **lowercase** with descriptive wording.

```javascript
document.addEventListener('click', handleClick);
window.addEventListener('scroll', handleScroll);
```

**Guidelines:**

* Use clear event names like `onClick`, `onSubmit`, or `onChange`.

---

## 10. **Prefixes and Suffixes**

Use prefixes and suffixes to clarify purpose when needed:

| Prefix                       | Meaning              | Example                  |
| :--------------------------- | :------------------- | :----------------------- |
| `is`, `has`, `can`, `should` | Boolean              | `isEnabled`, `hasAccess` |
| `get`, `set`                 | Accessors            | `getUser`, `setUser`     |
| `min`, `max`                 | Boundaries           | `maxValue`, `minHeight`  |
| `num`, `str`, `obj`          | Type hint (optional) | `numItems`, `objUser`    |

---

## 11. **Temporary or Loop Variables**

Use short names like `i`, `j`, `k` for loop counters, and `temp` for temporary variables.

```javascript
for (let i = 0; i < 5; i++) {
  console.log(i);
}
```

Avoid using meaningless names outside of such limited scopes.

---

## 12. **Avoid Common Mistakes**

* Don’t mix naming styles (`user_name` vs `userName`).
* Don’t use unclear names like `data`, `info`, or `thing`.
* Avoid similar variable names that differ only by case (`user` vs `User`).

---

## 13. **Examples Summary**

| Type            | Convention       | Example                              |
| :-------------- | :--------------- | :----------------------------------- |
| Variable        | camelCase        | `userName`, `isLoggedIn`             |
| Constant        | UPPER_SNAKE_CASE | `MAX_VALUE`, `API_URL`               |
| Function        | camelCase        | `getUserData`, `calculateTotal`      |
| Class           | PascalCase       | `UserProfile`, `DataManager`         |
| Object Property | camelCase        | `user.email`, `user.firstName`       |
| File            | kebab-case       | `user-profile.js`, `data-fetcher.js` |

---

## 14. **Further Reading**

* [Airbnb JavaScript Style Guide](https://github.com/airbnb/javascript)
* [Google JavaScript Style Guide](https://google.github.io/styleguide/jsguide.html)
* [MDN JavaScript Naming Conventions](https://developer.mozilla.org/en-US/docs/MDN/Guidelines/Code_guidelines/JavaScript)

> 📚 This is part of the JS basic chapter.
