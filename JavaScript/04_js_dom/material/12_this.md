# `this` in DOM Events

This document explains how the keyword `this` behaves inside DOM event handlers, differences between handler types, the relationship with `event.currentTarget`, and caveats when using arrow functions.

---

## 1. What Is `this` in DOM Event Handlers?

In DOM events, `this` refers to the **element that the event listener is attached to**.

Example:

```javascript
button.onclick = function() {
  console.log(this); // the button element
};
```

`this` represents the **event handler's context**, not necessarily the element that triggered the event.

---

## 2. `this` in Different Handler Types

There are three main ways to register event handlers in the DOM. Each affects the value of `this`.

### 2.1 Inline Event Handlers

```html
<button onclick="console.log(this)">Click</button>
```

**`this` refers to the element itself** (`<button>`).

Inline handlers also receive a global scope context, but `this` is correctly bound.

---

### 2.2 DOM Property Handlers (`element.onclick`)

```javascript
button.onclick = function() {
  console.log(this); // button element
};
```

Here, `this` is the **element the handler is assigned to**.

---

### 2.3 `addEventListener()`

```javascript
button.addEventListener("click", function() {
  console.log(this); // button element
});
```

Again, for **regular functions**, `this` refers to the element.

---

## 3. `this` vs `event.target` vs `event.currentTarget`

These three values often confuse beginners.

### 3.1 `this`

Refers to the element the handler is **attached to**.

### 3.2 `event.target`

Refers to the element that **actually triggered** the event.

### 3.3 `event.currentTarget`

Same as `this`: the element currently handling the event.

Example:

```html
<div id="parent">
  <button id="child">Click</button>
</div>
```

```javascript
parent.addEventListener("click", function(event) {
  console.log(this);               // #parent
  console.log(event.target);       // #child (clicked element)
  console.log(event.currentTarget); // #parent
});
```

---

## 4. `this` in Arrow Functions (Important)

Arrow functions **do not bind their own `this`**. They inherit it from the surrounding lexical scope.

Example:

```javascript
button.addEventListener("click", () => {
  console.log(this); // NOT the button
});
```

If this runs in global scope, `this` may be `window` (or `undefined` in strict mode).

Because of this, arrow functions are usually **not recommended** when you need to reference `this`.

To access the element, use `event.currentTarget`:

```javascript
button.addEventListener("click", (event) => {
  console.log(event.currentTarget); // button element
});
```

---

## 5. `this` in Event Delegation

When using event delegation, `this` refers to **the element with the listener**, not the clicked element.

Example:

```javascript
document.body.addEventListener("click", function(e) {
  console.log(this); // document.body
  console.log(e.target); // element that was clicked
});
```

Use `event.target` to inspect the clicked element.

---

## 6. When Not to Use `this`

Avoid `this` when:

* Using arrow functions
* Using event delegation where `target` is more relevant
* Working in modules or strict mode where `this` may be `undefined`

Prefer:

* `event.currentTarget` (equivalent and safer)
* `event.target` (when dealing with delegated events)

---

## 7. Summary

| Concept               | Meaning                                |
| --------------------- | -------------------------------------- |
| `this`                | Element where the listener is attached |
| `event.target`        | Element that triggered the event       |
| `event.currentTarget` | Same as `this`                         |
| Arrow functions       | Do not bind `this`                     |

---

## Further Reading

* [MDN: this keyword](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/this)
* [MDN: Event object](https://developer.mozilla.org/en-US/docs/Web/API/Event)
* [MDN: event.currentTarget](https://developer.mozilla.org/en-US/docs/Web/API/Event/currentTarget)
* [MDN: event.target](https://developer.mozilla.org/en-US/docs/Web/API/Event/target)

> 📚 This is part of the JS DOM chapter.
