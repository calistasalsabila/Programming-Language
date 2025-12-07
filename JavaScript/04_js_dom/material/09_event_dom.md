# JavaScript DOM Events

This document provides a comprehensive explanation of DOM (Document Object Model) events in JavaScript, including how events work, how to handle them, event propagation, event object properties, event types, and best practices.

## 1. What Are DOM Events?

DOM events are notifications sent by the browser when something happens to an element. These actions may come from user interaction (clicking, typing, scrolling), the browser itself (loading, resizing), or scripts.

Examples of events:

* Mouse events: `click`, `dblclick`, `mousedown`, `mouseup`, `mousemove`
* Keyboard events: `keydown`, `keyup`, `keypress`
* Form events: `submit`, `change`, `input`
* Window events: `load`, `resize`, `scroll`

Events allow developers to respond to user interaction and create dynamic web experiences.

---

## 2. Event Handlers

There are three main ways to attach event handlers to DOM elements.

### 2.1 Inline Event Handlers (Not Recommended)

```html
<button onclick="handleClick()">Click Me</button>
```

This method is discouraged because it mixes HTML and JavaScript and becomes hard to maintain.

### 2.2 DOM Element Properties

```javascript
const btn = document.querySelector("button");
btn.onclick = function() {
  console.log("Button clicked");
};
```

Assigns a function to an event property. Only one handler per event type is supported.

### 2.3 `addEventListener()` (Recommended)

```javascript
const btn = document.querySelector("button");
btn.addEventListener("click", function() {
  console.log("Clicked");
});
```

Advantages:

* Multiple listeners on the same event
* Supports event capturing vs bubbling
* Supports removal using `removeEventListener()`

---

## 3. Removing Event Listeners

To remove an event listener, the handler function must be referenced.

```javascript
function handleClick() {
  console.log("clicked");
}

btn.addEventListener("click", handleClick);
btn.removeEventListener("click", handleClick);
```

Anonymous functions cannot be removed.

---

## 4. Event Object

When an event occurs, JavaScript passes an event object containing details about the event.

Example:

```javascript
button.addEventListener("click", function(e) {
  console.log(e.type);       // event type
  console.log(e.target);     // the element that triggered the event
  console.log(e.currentTarget); // the element handling the event
});
```

### Common Event Object Properties

* `type` → event type
* `target` → the original element where the event happened
* `currentTarget` → the element processing the event
* `key` (keyboard events)
* `clientX`, `clientY` (mouse coordinates)
* `preventDefault()` → prevent default browser behavior
* `stopPropagation()` → stop the event from bubbling or capturing

---

## 5. Event Propagation

Propagation is how events travel through the DOM. There are three phases:

### 5.1 Capturing Phase

The event travels from the `window` down to the target.

### 5.2 Target Phase

The event reaches the element that triggered it.

### 5.3 Bubbling Phase

The event bubbles up from the target back to the `window`.

### Example

```html
<div id="parent">
  <button id="child">Click</button>
</div>
```

```javascript
parent.addEventListener("click", () => console.log("parent"));
child.addEventListener("click", () => console.log("child"));
```

Clicking the button prints:

```
child
parent
```

Because bubbling is the default.

### Capturing Mode

```javascript
parent.addEventListener("click", () => console.log("parent capturing"), true);
```

Adding `true` makes the listener run during the capturing phase.

---

## 6. Event Delegation

Event delegation leverages event bubbling to handle events for multiple child elements using a single parent listener.

### Example

```html
<ul id="menu">
  <li data-item="Home">Home</li>
  <li data-item="About">About</li>
  <li data-item="Contact">Contact</li>
</ul>
```

```javascript
menu.addEventListener("click", function(e) {
  if (e.target.tagName === "LI") {
    console.log("Clicked:", e.target.dataset.item);
  }
});
```

Benefits:

* Efficient for lists or dynamic elements
* Only one listener required

---

## 7. Common DOM Event Types

### 7.1 Mouse Events

* `click`
* `dblclick`
* `mousedown`
* `mouseup`
* `mouseenter`
* `mouseleave`
* `mousemove`

### 7.2 Keyboard Events

* `keydown`
* `keyup`
* `keypress` (deprecated)

### 7.3 Form Events

* `submit`
* `input`
* `change`
* `focus`
* `blur`

### 7.4 Window Events

* `load`
* `resize`
* `scroll`
* `beforeunload`

### 7.5 Clipboard Events

* `copy`
* `cut`
* `paste`

---

## 8. Preventing Default Behavior

Some events trigger browser actions. To override them, use `preventDefault()`.

Example:

```javascript
form.addEventListener("submit", function(e) {
  e.preventDefault();
  console.log("Form prevented");
});
```

---

## 9. Stopping Event Propagation

### 9.1 `stopPropagation()`

Stops further bubbling.

### 9.2 `stopImmediatePropagation()`

Also prevents other listeners on the same element from firing.

Example:

```javascript
btn.addEventListener("click", e => {
  e.stopPropagation();
});
```

---

## 10. Best Practices

* Prefer `addEventListener()` for flexibility
* Use event delegation for repeated/dynamic elements
* Avoid inline event handlers
* Always clean up listeners in long-lived apps (SPA)
* Use named functions when removal is needed
* Avoid heavy logic inside event listeners

---

## Further Reading

* [MDN: Introduction to Events](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Building_blocks/Events)
* [MDN: addEventListener()](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/addEventListener)
* [MDN: Event Object](https://developer.mozilla.org/en-US/docs/Web/API/Event)

> 📚 This is part of the JS DOM chapter.
