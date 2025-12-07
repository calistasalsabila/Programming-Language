# `addEventListener()` in the DOM

This document explains the JavaScript DOM method `addEventListener()`, how it works, its parameters, event propagation behavior, advanced options, removal of listeners, best practices, and examples.

---

## 1. What Is `addEventListener()`?

`addEventListener()` is a DOM method used to register a function as an event listener on an element. It is the standard and recommended way to attach events.

Example:

```javascript
element.addEventListener("click", function() {
  console.log("clicked");
});
```

---

## 2. Syntax

```javascript
target.addEventListener(type, listener, options);
```

### Parameters

1. **type** (string)
   The event type, such as:

   * "click"
   * "input"
   * "keyup"
   * "scroll"

2. **listener** (function)
   The function to run when the event occurs.

3. **options** (optional)
   Can be a boolean or an object.

---

## 3. Options Parameter

The third parameter supports several advanced controls.

### 3.1 `capture`

Runs the listener in the **capturing phase** instead of bubbling.

```javascript
element.addEventListener("click", handler, { capture: true });
```

### 3.2 `once`

Listener is removed automatically after it fires once.

```javascript
element.addEventListener("click", handler, { once: true });
```

### 3.3 `passive`

Indicates the listener **will not** call `preventDefault()`.
Common for `scroll` and `touch` events to improve performance.

```javascript
document.addEventListener("scroll", handler, { passive: true });
```

---

## 4. Event Propagation

`addEventListener()` allows you to choose which phase the listener should run in.

### 4.1 Capturing Phase

Event flows from `window` → `document` → parent → target.

### 4.2 Bubbling Phase (default)

Event flows from target → parent → document → window.

Example demonstrating order:

```javascript
parent.addEventListener("click", () => console.log("parent bubble"));
parent.addEventListener("click", () => console.log("parent capture"), true);
```

---

## 5. Removing Event Listeners

To remove a listener, the function reference must match exactly.

### 5.1 Using `removeEventListener()`

```javascript
function handleClick() {
  console.log("clicked");
}

button.addEventListener("click", handleClick);
button.removeEventListener("click", handleClick);
```

Anonymous functions cannot be removed because they have no reference.

---

## 6. Using Arrow Functions

```javascript
button.addEventListener("click", () => {
  console.log("Arrow function event");
});
```

Note: Cannot remove an arrow function listener unless stored in a variable.

---

## 7. Event Object

Listeners receive an event object automatically.

Example:

```javascript
button.addEventListener("click", function(event) {
  console.log(event.type);
  console.log(event.target);
});
```

Common event object properties:

* `type`
* `target`
* `currentTarget`
* `clientX`, `clientY`
* `key` (keyboard events)
* `preventDefault()`
* `stopPropagation()`

---

## 8. Multiple Event Listeners

A major advantage of `addEventListener()` is support for **multiple listeners**.

```javascript
button.addEventListener("click", firstHandler);
button.addEventListener("click", secondHandler);
```

Both will run.

---

## 9. Event Delegation with `addEventListener()`

Efficient technique for handling events on many elements.

Example:

```javascript
document.body.addEventListener("click", function(e) {
  if (e.target.matches("button")) {
    console.log("A button was clicked");
  }
});
```

---

## 10. Best Practices

* Prefer `addEventListener()` over inline events.
* Store listener functions if you need to remove them.
* Use `passive: true` for scroll/touch performance.
* Use event delegation for lists or dynamic content.
* Avoid attaching too many listeners directly to many elements.

---

## 11. Examples

### 11.1 Basic Click Listener

```javascript
button.addEventListener("click", () => console.log("clicked"));
```

### 11.2 Keyboard Listener

```javascript
document.addEventListener("keydown", e => {
  console.log("Key pressed:", e.key);
});
```

### 11.3 Listener That Runs Once

```javascript
button.addEventListener("click", () => console.log("once"), { once: true });
```

### 11.4 Capturing Example

```javascript
container.addEventListener("click", handler, { capture: true });
```

---

## Further Reading

* [MDN: addEventListener()](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/addEventListener)
* [MDN: removeEventListener()](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/removeEventListener)
* [MDN: EventTarget](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget)
* [MDN: Event object](https://developer.mozilla.org/en-US/docs/Web/API/Event)

> 📚 This is part of the JS DOM chapter.
