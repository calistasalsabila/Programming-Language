# JavaScript DOM: Selecting Elements

This document covers the primary methods used to select elements in the DOM.

## 1. `document.getElementById()`

Selects a single element by its **id**.

```javascript
const title = document.getElementById("title");
```

Returns the element with the matching ID or `null` if not found.

---

## 2. `document.getElementsByClassName()`

Selects elements by class name. Returns an **HTMLCollection** (live, array‑like).

```javascript
const items = document.getElementsByClassName("item");
```

Access items with indexing:

```javascript
items[0];
```

---

## 3. `document.getElementsByTagName()`

Selects elements by tag name (e.g., `div`, `p`, `ul`). Returns an HTMLCollection.

```javascript
const paragraphs = document.getElementsByTagName("p");
```

---

## 4. `document.querySelector()`

Selects **the first** element that matches a CSS selector.

```javascript
const firstItem = document.querySelector(".item");
const box = document.querySelector("#box");
const li = document.querySelector("ul li");
```

Supports any CSS selector:

* `#id`
* `.class`
* `tag`
* `tag.class`
* nested selectors

---

## 5. `document.querySelectorAll()`

Selects **all** matching elements using CSS selectors.
Returns a **NodeList** (not live, supports `forEach`).

```javascript
const buttons = document.querySelectorAll("button");
```

### Iterating over selected elements

```javascript
buttons.forEach(btn => {
  console.log(btn.innerText);
});
```

---

## 6. Differences Between HTMLCollection and NodeList

| Feature          | HTMLCollection   | NodeList           |
| ---------------- | ---------------- | ------------------ |
| Live updates     | Yes              | No                 |
| Supports forEach | No               | Yes                |
| Returned by      | `getElementsBy*` | `querySelectorAll` |

---

## 7. Selecting Nested Elements

Using `querySelector`:

```javascript
const navLink = document.querySelector("nav ul li a");
```

Using chaining:

```javascript
const list = document.querySelector("ul");
const first = list.querySelector("li");
```

---

## 8. Checking if an Element Exists

```javascript
const box = document.querySelector("#doesNotExist");
if (box) {
  console.log("Found element");
} else {
  console.log("Not found");
}
```

---

## 9. Selecting and Manipulating Together

```javascript
const msg = document.querySelector("#msg");
msg.innerText = "Hello";

const container = document.getElementById("container");
container.innerHTML = "<p>Updated</p>";
```

---

## 10. Summary

* Use `getElementById` for fast ID selection.
* Use `querySelector`/`querySelectorAll` for flexible CSS selector‑based selection.
* `getElementsBy*` returns live collections.
* `querySelectorAll` returns static NodeList.

## Further Reading

* MDN Web Docs: Document Object Model (DOM)
* MDN Web Docs: `querySelector()`
* MDN Web Docs: `querySelectorAll()`
* MDN Web Docs: `getElementById()`
* W3C DOM Standard

> 📚 This is part of the JS DOM chapter.
