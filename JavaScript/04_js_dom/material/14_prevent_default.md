# JavaScript DOM: `event.preventDefault()`

## Overview

`event.preventDefault()` is a method used in JavaScript to stop the **default behavior** of an event from occurring. It is commonly used when handling DOM events such as form submissions, link clicks, keyboard events, and drag-and-drop interactions.

Default behavior depends on the event type. For example:

* Clicking a link (`<a>`) navigates to another page
* Submitting a form reloads or navigates the page
* Pressing certain keys triggers browser shortcuts

By calling `event.preventDefault()`, you can take full control over what happens when an event occurs.

---

## Syntax

```javascript
event.preventDefault();
```

* `event` refers to the event object passed to the event handler
* The method does **not** stop event propagation (bubbling or capturing)

---

## Common Use Cases

### 1. Preventing Form Submission

By default, submitting a form reloads the page.

```javascript
document.querySelector('form').addEventListener('submit', function (event) {
  event.preventDefault();
  console.log('Form submission prevented');
});
```

Use this when:

* Validating input before sending data
* Submitting data via AJAX / Fetch API
* Building single-page applications (SPA)

---

### 2. Preventing Link Navigation

Clicking an anchor tag navigates to the URL in `href`.

```javascript
document.querySelector('a').addEventListener('click', function (event) {
  event.preventDefault();
  console.log('Navigation prevented');
});
```

This is useful for:

* Custom navigation logic
* Buttons styled as links
* SPA routing

---

### 3. Preventing Keyboard Default Actions

Certain keys have default browser behaviors.

```javascript
document.addEventListener('keydown', function (event) {
  if (event.key === 'Tab') {
    event.preventDefault();
    console.log('Tab key default behavior prevented');
  }
});
```

Examples of default keyboard actions:

* `Tab`: move focus
* `Space`: scroll page
* `Ctrl + S`: save page

---

### 4. Preventing Context Menu (Right Click)

```javascript
document.addEventListener('contextmenu', function (event) {
  event.preventDefault();
});
```

Commonly used to:

* Disable right-click actions
* Implement custom context menus

---

### 5. Preventing Drag-and-Drop Defaults

Some drag-and-drop behaviors require preventing defaults.

```javascript
document.addEventListener('dragover', function (event) {
  event.preventDefault();
});
```

Without this, dropping elements may not work as expected.

---

## `preventDefault()` vs `stopPropagation()`

| Method              | Purpose                        |
| ------------------- | ------------------------------ |
| `preventDefault()`  | Stops default browser behavior |
| `stopPropagation()` | Stops event bubbling/capturing |

They solve **different problems** and are often used together:

```javascript
element.addEventListener('click', function (event) {
  event.preventDefault();
  event.stopPropagation();
});
```

---

## Important Notes

* `preventDefault()` only works on **cancelable events**
* You can check if an event is cancelable using:

```javascript
console.log(event.cancelable);
```

* If an event listener is marked as `passive: true`, `preventDefault()` will not work

```javascript
document.addEventListener('touchmove', handler, { passive: true });
```

---

## When Not to Use `preventDefault()`

Avoid using it when:

* Default behavior improves accessibility
* You do not provide a proper replacement behavior
* It breaks expected browser interactions

Misuse can lead to poor user experience.

---

## Best Practices

* Use only when necessary
* Always replace the prevented behavior with a clear alternative
* Be cautious with keyboard and accessibility-related events
* Combine with proper event delegation when needed

---

## Further Reading

* [MDN: Event.preventDefault()](https://developer.mozilla.org/en-US/docs/Web/API/Event/preventDefault)
* [MDN: Event Object](https://developer.mozilla.org/en-US/docs/Web/API/Event)
* [MDN: Cancelable Events](https://developer.mozilla.org/en-US/docs/Web/API/Event/cancelable)

> 📚 This is part of the JS DOM chapter.
