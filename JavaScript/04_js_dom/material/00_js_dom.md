# JavaScript DOM — Complete Guide

This document is a detailed, practical, and reference-style guide to the Document Object Model (DOM) in JavaScript. It is written in English, contains code examples and explanations, and intentionally does not include emoticons. It is suitable for a GitHub learning note.

---

## Table of Contents

1. What is the DOM?
2. DOM vs BOM
3. Document structure and nodes
4. Selecting elements
5. Traversing the DOM
6. Reading and modifying content
7. Attributes, properties, and dataset
8. Classes and classList
9. Styles and computed style
10. Creating, inserting, and removing nodes
11. Event basics
12. Event delegation
13. Common events: mouse, keyboard, form
14. Forms and input handling
15. Handling asynchronous DOM updates
16. Templates and fragments
17. Performance tips and reflow/repain
18. Accessibility considerations
19. Debugging techniques
20. Browser compatibility and progressive enhancement
21. Common pitfalls and best practices
22. Summary and quick cheatsheet

---

## 1. What is the DOM?

The Document Object Model (DOM) is a programming interface that represents the structure of an HTML or XML document as a tree of objects (nodes). JavaScript can read, modify, and respond to changes in this tree to create dynamic behavior in web pages.

Key ideas:

* Each element, attribute, text, and comment is a node.
* The `document` object is the root for HTML pages.
* The DOM API is standardized, but implementations vary slightly between browsers.

## 2. DOM vs BOM

* **DOM (Document Object Model)**: Focused on the document (HTML); `document` is the main entry point.
* **BOM (Browser Object Model)**: Browser-related objects like `window`, `navigator`, `location`, `history`, `screen`.

Usually you will use both: `document` for content and `window` for timers, dialogs, and viewport.

## 3. Document structure and nodes

Common node types:

* `Document` — the whole HTML document.
* `Element` — HTML tags like `div`, `p`, `input`.
* `Text` — text inside elements.
* `Comment` — HTML comments.

Useful properties and relationships:

* `node.parentNode`, `node.childNodes`, `node.firstChild`, `node.lastChild`
* `element.children` (elements only; excludes text nodes)
* `element.nodeType` and `node.nodeName`

Example:

```html
<!-- HTML -->
<div id="root">
  <p>Hello <strong>world</strong></p>
</div>
```

In JavaScript:

```js
const root = document.getElementById('root');
console.log(root.nodeType); // 1 (Element)
console.log(root.firstChild.nodeType); // could be 3 (Text) or 1 depending on whitespace
```

## 4. Selecting elements

There are multiple ways to select nodes. Prefer modern `querySelector`/`querySelectorAll` for flexibility.

* `document.getElementById(id)` — returns a single element or `null`.
* `document.getElementsByClassName(className)` — live HTMLCollection.
* `document.getElementsByTagName(tagName)` — live HTMLCollection.
* `document.querySelector(selector)` — first match or `null`.
* `document.querySelectorAll(selector)` — static NodeList (use `forEach` on NodeList in modern browsers).

Examples:

```js
const header = document.getElementById('main-header');
const buttons = document.querySelectorAll('.btn');
const firstButton = document.querySelector('.btn');
```

Notes:

* `getElementsByClassName` and `getElementsByTagName` return *live* collections that update with DOM changes. `querySelectorAll` returns a static NodeList.
* When selecting inside an element, call methods on that element: `container.querySelectorAll('li')`.

## 5. Traversing the DOM

Methods and properties for walking the tree:

* Parent: `node.parentNode`, `node.parentElement`.
* Children: `element.children`, `element.childNodes`.
* Siblings: `node.previousSibling`, `node.nextSibling`, `previousElementSibling`, `nextElementSibling`.
* `element.closest(selector)` — finds nearest ancestor matching selector including the element itself.

Example: find next sibling element:

```js
const el = document.querySelector('.item');
const nextEl = el.nextElementSibling;
```

## 6. Reading and modifying content

* `element.textContent` — text inside the element (fast, safe, ignores markup).
* `element.innerText` — similar but respects CSS and layout (slower).
* `element.innerHTML` — gets/sets HTML markup (be careful with security).

Example:

```js
const p = document.querySelector('p');
console.log(p.textContent);
p.textContent = 'New text';
// or
p.innerHTML = 'Hello <strong>world</strong>';
```

Security note: avoid inserting user content with `innerHTML` to prevent XSS. Use textContent or properly sanitize.

## 7. Attributes, properties, and dataset

* `element.getAttribute(name)` / `element.setAttribute(name, value)` — deals with attributes in HTML.
* Properties: `element.id`, `element.src`, `element.value` — reflect common attributes but are JS properties.
* `element.dataset` — map for `data-*` attributes (camelCased), e.g. `data-user-id` → `dataset.userId`.

Example:

```html
<button id="like" data-count="5">Like</button>
```

```js
const btn = document.getElementById('like');
console.log(btn.dataset.count); // "5"
btn.dataset.count = Number(btn.dataset.count) + 1;
```

Note: Not all attributes map perfectly to properties; e.g., `class` ↔ `className`, `for` ↔ `htmlFor`.

## 8. Classes and classList

Use `classList` to manipulate classes:

* `el.classList.add('one')`
* `el.classList.remove('one')`
* `el.classList.toggle('one')`
* `el.classList.contains('one')`

Example:

```js
const box = document.querySelector('.box');
box.classList.toggle('is-open');
```

## 9. Styles and computed style

* Inline style: `el.style.property = 'value'` (camelCase properties).
* Computed styles: `getComputedStyle(el)` returns final values applied by CSS.

Example:

```js
const el = document.querySelector('.box');
el.style.backgroundColor = 'lightblue';
const height = getComputedStyle(el).height;
```

Avoid setting many inline styles in loops; prefer adding/removing classes and defining styles in CSS.

## 10. Creating, inserting, and removing nodes

* `document.createElement(tagName)` — creates an element.
* `document.createTextNode(text)` — creates a text node.
* `parent.appendChild(node)` — appends node as last child.
* `parent.insertBefore(newNode, referenceNode)` — inserts before reference.
* `parent.replaceChild(newNode, oldNode)` — replaces.
* `node.remove()` — removes node (modern), or `parent.removeChild(node)`.

Examples:

```js
const li = document.createElement('li');
li.textContent = 'Item A';
const ul = document.querySelector('ul');
ul.appendChild(li);

// safer and faster bulk insert with DocumentFragment
const frag = document.createDocumentFragment();
for (let i = 0; i < 5; i++) {
  const item = document.createElement('li');
  item.textContent = 'Item ' + i;
  frag.appendChild(item);
}
ul.appendChild(frag);
```

## 11. Event basics

* Add event listeners with `element.addEventListener(type, listener, options)`.
* Remove with `element.removeEventListener(type, listener)`.
* Event object has properties like `type`, `target`, `currentTarget`, `preventDefault()`, `stopPropagation()`.

Example:

```js
const btn = document.querySelector('button');
function onClick(e) {
  console.log('clicked', e.target);
}
btn.addEventListener('click', onClick);
// later
btn.removeEventListener('click', onClick);
```

Options: `capture` (boolean) or `{capture: true, passive: true, once: true}`. `passive: true` helps with scroll performance.

## 12. Event delegation

Instead of attaching listeners to many child elements, attach one listener to a parent and detect the event target. Useful for dynamic children.

Example:

```html
<ul id="list"></ul>
```

```js
const list = document.getElementById('list');
list.addEventListener('click', function (e) {
  const li = e.target.closest('li');
  if (!li || !list.contains(li)) return;
  console.log('clicked item', li.dataset.id);
});

// dynamically add items
const item = document.createElement('li');
item.dataset.id = '42';
item.textContent = 'Hello';
list.appendChild(item);
```

## 13. Common events: mouse, keyboard, form

* Mouse: `click`, `dblclick`, `mousedown`, `mouseup`, `mouseenter`, `mouseleave`, `mousemove`.
* Keyboard: `keydown`, `keyup`, `keypress` (deprecated), `input` (for text changes), `compositionstart`/`compositionend` (IME composition).
* Form: `submit`, `change` (blur), `input` (live updates), `focus` and `blur` (do not bubble).

Example: prevent form submission and handle data via JS:

```html
<form id="f">
  <input name="name">
  <button type="submit">Send</button>
</form>
```

```js
const form = document.getElementById('f');
form.addEventListener('submit', function (e) {
  e.preventDefault();
  const data = new FormData(form);
  console.log(Object.fromEntries(data.entries()));
});
```

## 14. Forms and input handling

* `FormData` reads inputs including files.
* For controlled-like behavior, listen to `input` and `change` events.
* Use `input.value`, `checkbox.checked`, `select.value`.

Example: debounced input handler (avoid heavy operations on every keystroke):

```js
function debounce(fn, ms) {
  let t;
  return function (...args) {
    clearTimeout(t);
    t = setTimeout(() => fn.apply(this, args), ms);
  };
}

const input = document.querySelector('input');
input.addEventListener('input', debounce((e) => {
  console.log('search', e.target.value);
}, 300));
```

## 15. Handling asynchronous DOM updates

When you change the DOM and then immediately read layout-dependent properties (like `offsetHeight`), a forced layout (reflow) may occur.

Avoid this pattern in tight loops; batch writes and reads separately:

```js
// bad: interleaved reads and writes
for (let el of els) {
  el.style.width = (el.offsetWidth + 10) + 'px';
}

// better: read all, compute, then write
const widths = Array.from(els).map(el => el.offsetWidth);
widths.forEach((w, i) => {
  els[i].style.width = (w + 10) + 'px';
});
```

Also prefer `requestAnimationFrame` for visual updates and `setTimeout(..., 0)` to defer off the main execution if needed.

## 16. Templates and fragments

* `<template>` lets you store inert DOM that can be cloned and inserted.
* `DocumentFragment` helps with efficient insertion of multiple nodes.

Example template usage:

```html
<template id="row-template">
  <li class="row"><span class="label"></span></li>
</template>
```

```js
const tpl = document.getElementById('row-template');
const clone = tpl.content.cloneNode(true);
clone.querySelector('.label').textContent = 'Label';
document.querySelector('ul').appendChild(clone);
```

## 17. Performance tips and reflow/repain

* Minimize layout thrashing (batch reads and writes).
* Use `classList` for style changes rather than many inline style modifications.
* Use `requestAnimationFrame` for animation-driven DOM writes.
* Use `IntersectionObserver` instead of scroll events for lazy loading.
* Use `MutationObserver` carefully for observing DOM changes; it can be expensive if used incorrectly.

## 18. Accessibility considerations

* Keep semantic HTML (buttons for actions, anchors for navigation).
* Use `aria-*` attributes when necessary, but prefer native semantics.
* Manage focus for dynamic content (e.g., set `element.focus()` and use `aria-live` regions for announcements).
* Ensure keyboard navigability: `tabindex`, predictable focus order, and event handling that respects keyboard users.

Example: announce dynamic updates:

```html
<div aria-live="polite" id="announcer" style="position:absolute; left:-9999px"></div>
```

```js
document.getElementById('announcer').textContent = 'New item added';
```

## 19. Debugging techniques

* Use browser DevTools Elements panel to inspect DOM and live-edit.
* Set breakpoints in Sources panel and use `debugger` statement in code.
* Use `console.log`, `console.table`, and `console.dir` to inspect nodes.
* For performance, use the Performance tab and Lighthouse audits.

## 20. Browser compatibility and progressive enhancement

* Modern APIs: `classList`, `closest`, `matches`, `dataset` are widely supported in modern browsers. If you need older browser support, add polyfills or feature-detect.
* Feature-detect rather than user-agent sniffing:

```js
if ('IntersectionObserver' in window) {
  // use it
} else {
  // fallback
}
```

## 21. Common pitfalls and best practices

* **Avoid innerHTML with unsanitized input** — XSS risk.
* **Detach heavy event handlers** when removing nodes to avoid memory leaks.
* **Prefer event delegation** for lists or dynamic children.
* **Use semantic HTML** and CSS for presentation rather than heavy DOM manipulation.
* **Keep DOM updates minimal** and batch when possible.

## 22. Summary and quick cheatsheet

* Select: `querySelector`, `getElementById`.
* Create: `createElement`, `createTextNode`, `DocumentFragment`.
* Insert: `appendChild`, `insertBefore`, `replaceChild`, `element.append` (modern), `element.prepend`.
* Remove: `node.remove()` or `parent.removeChild(node)`.
* Attributes: `getAttribute`, `setAttribute`, `dataset`.
* Classes: `classList.add/remove/toggle`.
* Events: `addEventListener`, `removeEventListener`, event delegation.
* Forms: `FormData`, `input` vs `change`, `preventDefault()` on submit.
* Performance: batch reads/writes, use `requestAnimationFrame`.

---

### Example: small dynamic list app

```html
<body>
  <input id="new-item" placeholder="Item">
  <button id="add">Add</button>
  <ul id="items"></ul>
</body>
```

```js
const input = document.getElementById('new-item');
const btn = document.getElementById('add');
const ul = document.getElementById('items');

btn.addEventListener('click', () => {
  const value = input.value.trim();
  if (!value) return;

  const li = document.createElement('li');
  li.textContent = value;
  li.tabIndex = 0; // make focusable
  ul.appendChild(li);
  input.value = '';
});

// event delegation for removing on click
ul.addEventListener('click', (e) => {
  const li = e.target.closest('li');
  if (!li) return;
  li.remove();
});

// keyboard support: delete with Delete key when focused
ul.addEventListener('keydown', (e) => {
  if (e.key === 'Delete') {
    const li = e.target.closest('li');
    if (li) li.remove();
  }
});
```

---


> 📚 This is part of the JS DOM chapter.
