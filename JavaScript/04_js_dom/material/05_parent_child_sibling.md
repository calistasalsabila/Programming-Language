# JavaScript DOM: Parent, Child, and Sibling Relationships

This document explains how to navigate the DOM (Document Object Model) using parent, child, and sibling properties. Each section includes detailed explanations followed by examples.

---

## 1. Understanding DOM Relationships

The DOM represents an HTML document as a **tree structure**, where elements are connected through parent-child and sibling relationships.

Example structure:

```html
<div id="container">
  <h1>Title</h1>
  <p>Paragraph</p>
</div>
```

* `<div>` is the **parent** of `<h1>` and `<p>`.
* `<h1>` and `<p>` are **siblings**.
* `<h1>` is the **first child**, `<p>` is the **last child**.

---

## 2. Accessing Parent Elements

Every DOM element has a parent node. JavaScript provides properties to access it.

### 2.1 `parentElement`

`parentElement` returns the parent **HTMLElement**.

* Returns `null` if the parent is not an element (e.g., `document`).

```javascript
const p = document.querySelector("p");
console.log(p.parentElement);
```

### 2.2 `parentNode`

Similar to `parentElement`, but it can return **other node types** (like `document` or comment nodes).

```javascript
console.log(p.parentNode);
```

**Key difference:**

* Use `parentElement` when only element parents matter.
* Use `parentNode` when working with the full node tree.

---

## 3. Accessing Children of an Element

Elements can contain child nodes (text, comment, elements). JavaScript provides multiple ways to access them.

### 3.1 `children`

* Returns **only element children** (no text nodes).
* Returns an `HTMLCollection`.

```javascript
const div = document.getElementById("container");
console.log(div.children);
```

### 3.2 `childNodes`

* Returns **all node types**: text, elements, comments.
* Returns a `NodeList`.

```javascript
console.log(div.childNodes);
```

### 3.3 `firstElementChild` & `lastElementChild`

Retrieve the first or last **element** child.

```javascript
console.log(div.firstElementChild);
console.log(div.lastElementChild);
```

### 3.4 `firstChild` & `lastChild`

Retrieve the first or last node, including text nodes.

```javascript
console.log(div.firstChild);
console.log(div.lastChild);
```

---

## 4. Accessing Sibling Elements

Siblings share the same parent.

### 4.1 `nextElementSibling`

Gets the next sibling **element**.

```javascript
const h1 = document.querySelector("h1");
console.log(h1.nextElementSibling);
```

### 4.2 `previousElementSibling`

Gets the previous sibling **element**.

```javascript
console.log(h1.previousElementSibling);
```

### 4.3 `nextSibling` & `previousSibling`

These return sibling **nodes**, which can include text nodes.

```javascript
console.log(h1.nextSibling);
console.log(h1.previousSibling);
```

---

## 5. Differences Between Element Properties and Node Properties

| Property             | Returns Elements Only | Returns All Nodes | Used For                      |
| -------------------- | --------------------- | ----------------- | ----------------------------- |
| `children`           | Yes                   | No                | Access list of child elements |
| `childNodes`         | No                    | Yes               | Inspect full DOM structure    |
| `firstElementChild`  | Yes                   | No                | First element child           |
| `firstChild`         | No                    | Yes               | First node child              |
| `nextElementSibling` | Yes                   | No                | Next element sibling          |
| `nextSibling`        | No                    | Yes               | Next node sibling             |

**Rule of thumb:**
Use the `Element` versions unless you specifically need text or comment nodes.

---

## 6. Traversing the DOM

You can combine parent, child, and sibling properties to navigate the DOM.

Example:

```javascript
const div = document.getElementById("container");
const firstChild = div.firstElementChild;
const secondChild = firstChild.nextElementSibling;
console.log(secondChild);
```

---

## 7. Using DOM Traversal for Manipulation

### 7.1 Styling using parent-child access

```javascript
const parent = document.getElementById("container");
parent.firstElementChild.style.color = "blue";
```

### 7.2 Removing an element using its parent

```javascript
const item = document.querySelector("p");
item.parentElement.removeChild(item);
```

### 7.3 Appending new child elements

```javascript
const newEl = document.createElement("span");
newEl.innerText = "Added dynamically";

div.appendChild(newEl);
```

---

## 8. Deep Explanation of How DOM Tree Navigation Works

Each element in the DOM is represented as a **node**. Navigating the DOM involves moving between these nodes.

### 8.1 Node Types

Common node types:

* **1** → Element node
* **3** → Text node
* **8** → Comment node
* **9** → Document node

`childNodes` exposes these types, while `children` filters to type 1 only.

### 8.2 Why Text Nodes Matter

Example HTML:

```html
<div>
  <p>Hello</p>
</div>
```

Between `<div>` and `<p>` exists a **newline**, which becomes a **text node**. So:

```javascript
div.firstChild // text node
```

But:

```javascript
div.firstElementChild // <p>
```

### 8.3 Sibling Navigation Caveat

When using `nextSibling`, you often hit whitespace text nodes, so `nextElementSibling` is usually the preferred option.

---

## 9. Practical Examples

### 9.1 Looping Through Children

```javascript
const ul = document.querySelector("ul");
for (let item of ul.children) {
  console.log(item.innerText);
}
```

### 9.2 Filtering Child Nodes by Type

```javascript
div.childNodes.forEach(node => {
  if (node.nodeType === 1) {
    console.log("Element:", node.tagName);
  }
});
```

### 9.3 Find Siblings Dynamically

```javascript
const el = document.querySelector("p");
console.log(el.previousElementSibling);
console.log(el.nextElementSibling);
```

---

## 10. Summary

* Use `parentElement` to move upward.
* Use `children` and element-based properties to navigate cleanly.
* Avoid node-based properties unless you need text/comment nodes.
* Use sibling properties to move horizontally in the DOM tree.

---

## Further Reading

* [MDN: Parent Node](https://developer.mozilla.org/en-US/docs/Web/API/Node/parentNode)
* [MDN: children](https://developer.mozilla.org/en-US/docs/Web/API/ParentNode/children)
* [MDN: childNodes](https://developer.mozilla.org/en-US/docs/Web/API/Node/childNodes)
* [MDN: Sibling Properties](https://developer.mozilla.org/en-US/docs/Web/API/Node/nextSibling)
* [JavaScript Info: DOM Navigation](https://javascript.info/dom-navigation)

> 📚 This is part of the JS DOM chapter.
