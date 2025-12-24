# JavaScript DOM: Event Delegation

## Overview

Event delegation is a DOM event-handling pattern where a **single event listener** is attached to a parent element to handle events triggered by its child elements. This pattern relies on **event bubbling**, allowing the parent to respond to events originating from descendants.

Event delegation is widely used to improve performance, simplify code, and correctly handle **dynamic elements** that are added or removed from the DOM after initial load.

---

## Why Event Delegation?

### Problems with Direct Event Listeners

Attaching listeners directly to each child element can cause:

* Performance issues (many listeners)
* Complex cleanup when elements are removed
* Failure to handle dynamically added elements

```javascript
const items = document.querySelectorAll('li');
items.forEach(item => {
  item.addEventListener('click', handler);
});
```

If new `<li>` elements are added later, they will **not** have the listener.

---

### The Delegation Solution

Attach **one listener** to a common ancestor.

```javascript
const list = document.querySelector('ul');

list.addEventListener('click', function (event) {
  console.log(event.target.textContent);
});
```

This works because the click event bubbles from the child to the parent.

---

## How Event Delegation Works

1. An event is triggered on a child element
2. The event bubbles up through its ancestors
3. The parent listener intercepts the event
4. The handler determines **which child** triggered it

Key properties involved:

* `event.target`
* `event.currentTarget`

---

## `event.target` vs `event.currentTarget`

| Property              | Description                                     |
| --------------------- | ----------------------------------------------- |
| `event.target`        | The element that originally triggered the event |
| `event.currentTarget` | The element where the listener is attached      |

```javascript
container.addEventListener('click', function (event) {
  console.log(event.target);        // clicked child
  console.log(event.currentTarget); // container
});
```

---

## Filtering Target Elements

In delegation, it is important to **filter events** so only intended elements are handled.

### Using `tagName`

```javascript
list.addEventListener('click', function (event) {
  if (event.target.tagName === 'LI') {
    console.log(event.target.textContent);
  }
});
```

### Using `classList`

```javascript
container.addEventListener('click', function (event) {
  if (event.target.classList.contains('btn-delete')) {
    deleteItem(event.target);
  }
});
```

---

## Handling Nested Elements

Sometimes the clicked element is a child of the intended target.

```html
<button class="btn">
  <span>Delete</span>
</button>
```

Clicking `<span>` sets `event.target` to `span`, not `button`.

### Solution: `closest()`

```javascript
container.addEventListener('click', function (event) {
  const button = event.target.closest('.btn');
  if (!button) return;

  console.log('Button clicked');
});
```

`closest()` walks up the DOM tree until it finds a matching ancestor.

---

## Event Delegation with Dynamic Elements

Event delegation naturally supports elements added later.

```javascript
list.addEventListener('click', function (event) {
  if (event.target.matches('li')) {
    console.log(event.target.textContent);
  }
});

const newItem = document.createElement('li');
newItem.textContent = 'New Item';
list.appendChild(newItem);
```

No additional listener is required.

---

## Events Suitable for Delegation

Most bubbling events can be delegated:

* `click`
* `input`
* `change`
* `keydown`, `keyup`
* `submit`

Events that do **not** bubble are not suitable:

* `focus`, `blur`
* `mouseenter`, `mouseleave`

Bubbling alternatives:

* `focusin`, `focusout`
* `mouseover`, `mouseout`

---

## Delegation with Forms

```javascript
document.addEventListener('input', function (event) {
  if (event.target.matches('input[type="text"]')) {
    console.log(event.target.value);
  }
});
```

This allows centralized handling of form inputs.

---

## Common Mistakes

* Forgetting to filter `event.target`
* Using delegation on non-bubbling events
* Calling `stopPropagation()` and breaking delegation
* Attaching the listener too high in the DOM unnecessarily

---

## Best Practices

* Attach the listener to the **closest common ancestor**
* Always filter targets explicitly
* Prefer `closest()` for nested structures
* Avoid excessive use of `stopPropagation()`

---

## Summary

Event delegation:

* Uses event bubbling
* Reduces the number of listeners
* Works with dynamic content
* Improves performance and maintainability

It is a core pattern for scalable DOM event handling.

---

## Further Reading

* [MDN: Event delegation](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Building_blocks/Events#event_delegation)
* [MDN: Event.target](https://developer.mozilla.org/en-US/docs/Web/API/Event/target)
* [MDN: Element.closest()](https://developer.mozilla.org/en-US/docs/Web/API/Element/closest)
* [MDN: Event bubbling](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Building_blocks/Events#event_bubbling_and_capture)

> 📚 This is part of the JS DOM chapter.
