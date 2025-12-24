# JavaScript DOM: Event Bubbling

## Overview

Event bubbling is a fundamental concept in the JavaScript DOM event system. It describes how an event **propagates upward through the DOM tree** after being triggered on a target element.

When an event occurs on an element, it does not stop there. Instead, it travels through multiple phases, allowing parent elements to also react to the same event.

Understanding event bubbling is essential for:

* Event delegation
* Writing efficient event handlers
* Preventing unexpected side effects in complex UIs

---

## Event Propagation Phases

When an event is triggered, it goes through **three phases**:

1. **Capturing Phase** (trickling down)
2. **Target Phase**
3. **Bubbling Phase** (bubbling up)

This document focuses on the **bubbling phase**.

---

## What Is Event Bubbling?

Event bubbling means:

> After an event is triggered on the target element, it propagates upward from the target to its parent, then to the parent’s parent, and so on, until it reaches the `document` object.

Example DOM structure:

```
document
 └── div
     └── button
```

If a `click` event occurs on the `button`, the event flow will be:

1. `button` (target)
2. `div` (parent)
3. `document`

---

## Basic Example

```javascript
const parent = document.querySelector('.parent');
const child = document.querySelector('.child');

parent.addEventListener('click', function () {
  console.log('Parent clicked');
});

child.addEventListener('click', function () {
  console.log('Child clicked');
});
```

Clicking the child element will output:

```
Child clicked
Parent clicked
```

This happens because the event bubbles from the child to the parent.

---

## Bubbling Order

The bubbling order always follows:

1. Target element
2. Closest parent
3. Ancestors up to `document`

You can inspect the current element handling the event using:

```javascript
event.currentTarget;
```

---

## Events That Bubble

Most DOM events bubble by default, including:

* `click`
* `dblclick`
* `keydown`, `keyup`
* `input`, `change`
* `submit`

---

## Events That Do NOT Bubble

Some events do not bubble:

* `focus`
* `blur`
* `mouseenter`
* `mouseleave`

Alternatives that do bubble:

* `focusin`
* `focusout`
* `mouseover`
* `mouseout`

---

## Stopping Event Bubbling

You can stop bubbling using `event.stopPropagation()`.

```javascript
child.addEventListener('click', function (event) {
  event.stopPropagation();
  console.log('Child clicked only');
});
```

With this, clicking the child will not trigger the parent’s handler.

---

## Bubbling vs Capturing

| Aspect           | Bubbling         | Capturing            |
| ---------------- | ---------------- | -------------------- |
| Direction        | Bottom → Top     | Top → Bottom         |
| Default behavior | Yes              | No                   |
| Common usage     | Event delegation | Rare, specific cases |

To listen during capturing phase:

```javascript
element.addEventListener('click', handler, true);
```

---

## Event Delegation (Powered by Bubbling)

Event bubbling enables **event delegation**, where a parent element handles events for its children.

```javascript
const list = document.querySelector('ul');

list.addEventListener('click', function (event) {
  if (event.target.tagName === 'LI') {
    console.log(event.target.textContent);
  }
});
```

Benefits:

* Fewer event listeners
* Better performance
* Works with dynamically added elements

---

## Common Mistakes

* Assuming all events bubble
* Using `event.target` instead of `event.currentTarget` incorrectly
* Overusing `stopPropagation()` and breaking delegation

---

## Best Practices

* Leverage bubbling for event delegation
* Use `stopPropagation()` sparingly
* Always understand the propagation path
* Prefer delegation for large or dynamic DOM structures

---

## Further Reading

* [MDN: Event bubbling and capturing](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Building_blocks/Events#event_bubbling_and_capture)
* [MDN: Event.stopPropagation()](https://developer.mozilla.org/en-US/docs/Web/API/Event/stopPropagation)
* [MDN: Event.currentTarget](https://developer.mozilla.org/en-US/docs/Web/API/Event/currentTarget)

> 📚 This is part of the JS DOM chapter.
