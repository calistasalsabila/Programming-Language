# JavaScript DOM: `remove()` and `removeChild()`

This document explains how `remove()` and `removeChild()` work in the DOM, including their differences, use cases, behavior, and examples.

---

## 1. `remove()`

The `remove()` method removes an element **directly** from the DOM. It is simple and does not require selecting the parent element.

### Key Characteristics

* Called **on the element itself**.
* Does **not** return the removed element.
* Modern and easy to use.
* Removes the element from its parent node.

### Example: Removing an Element Directly

```javascript
const item = document.querySelector("#box");
item.remove();
```

### Example: Removing Multiple Elements

```javascript
const elements = document.querySelectorAll(".note");

elements.forEach(el => el.remove());
```

### When to Use

* When you already have a reference to the element.
* When you want simple, clean syntax.
* When working with modern browsers.

---

## 2. `removeChild()`

`removeChild()` removes a **child node** from its parent. It requires two elements:

1. The **parent node**
2. The **child node** to be removed

### Key Characteristics

* Must be called **on the parent element**.
* Accepts only a **child Node object**.
* Returns the removed node.
* Older but widely supported.

### Example: Removing a Child

```javascript
const parent = document.querySelector("#list");
const target = document.querySelector("#item1");

parent.removeChild(target);
```

### Example: Removing the First Child

```javascript
const menu = document.querySelector("#menu");
menu.removeChild(menu.firstElementChild);
```

### When to Use

* When you need to work with specific parent-child relationships.
* When the removed element must be stored (because it returns the node).
* When building dynamic UI components that manipulate parent-child structures.

---

## 3. Comparison Table

| Feature                 | `remove()` | `removeChild()` |
| ----------------------- | ---------- | --------------- |
| Requires parent element | ✘          | ✔               |
| Called on element       | ✔          | ✘               |
| Returns removed node    | ✘          | ✔               |
| Syntax complexity       | Simple     | Requires parent |
| Browser support         | Modern     | All browsers    |

---

## 4. Practical Examples

### Remove Items in a Loop

```javascript
const list = document.querySelectorAll('.task');
list.forEach(task => task.remove());
```

### Remove the Last Child Using `removeChild()`

```javascript
const container = document.querySelector('#container');
container.removeChild(container.lastElementChild);
```

### Store Removed Element

```javascript
const parent = document.querySelector('#wrap');
const child = document.querySelector('#inner');

const removed = parent.removeChild(child);
console.log(removed); // the node that was removed
```

---

## Summary

* Use **`remove()`** for a clean and modern way to delete elements directly.
* Use **`removeChild()`** when you must operate through the parent element or need the removed node returned.

---

## Further Reading

* [MDN: Element.remove()](https://developer.mozilla.org/en-US/docs/Web/API/Element/remove)
* [MDN: Node.removeChild()](https://developer.mozilla.org/en-US/docs/Web/API/Node/removeChild)

> 📚 This is part of the JS DOM chapter.