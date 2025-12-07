# DOM Inline Event Handlers

This document explains **inline event handlers in the DOM**, how they work, their limitations, security concerns, differences from external event handling methods, and why they are generally discouraged.

Inline events are not the same as HTML inline elements. Here, "inline" refers to **inline event attributes** placed directly in HTML markup.

---

## 1. What Are Inline Event Handlers?

Inline event handlers are event attributes written directly inside an HTML element to run JavaScript code when a specific event occurs.

Example:

```html
<button onclick="alert('Clicked')">Click</button>
```

When the button is clicked, the JavaScript inside `onclick` runs.

These event attributes become part of the DOM as properties like:

* `onclick`
* `onchange`
* `oninput`
* `onmouseover`
* `onkeydown`

---

## 2. How Inline Events Work in the DOM

When the browser parses HTML, inline event attributes are converted into event handler properties on the DOM element.

Example:

```html
<button onclick="console.log('btn')">Log</button>
```

DOM equivalent:

```javascript
button.onclick = function() {
  console.log('btn');
};
```

Thus, the code inside the attribute becomes a function body.

---

## 3. Syntax of Inline Event Attributes

Inline event attributes always:

* Start with `on`
* Accept JavaScript code as a string

Examples:

```html
<div onmouseover="highlight()"></div>
<input oninput="validate(this.value)">
```

You can also reference `this` (the element itself):

```html
<button onclick="this.style.background='red'">Change</button>
```

---

## 4. Limitations of Inline Events

Inline event handlers have several major drawbacks:

### 4.1 Only One Handler Per Event

Using inline events overwrites any previous inline handler for the same event.

```html
<button onclick="first()" onclick="second()"></button>
```

Only the last one is used.

### 4.2 Mixed Markup and Logic

HTML and JavaScript are combined in one place, reducing code organization.

### 4.3 Hard to Maintain

Large projects quickly become unmanageable.

### 4.4 Cannot Use `addEventListener()` Features

Inline events do not support:

* Capturing phase
* Multiple listeners
* Passive listeners

### 4.5 Limited Access to Event Object

You must manually include it:

```html
<button onclick="handler(event)"></button>
```

### 4.6 Security Risk (XSS)

Inline JavaScript is prone to injection attacks.

---

## 5. Recommended Alternatives

Instead of inline events, use DOM-based event listeners.

### 5.1 Element Property Event Handling

```javascript
button.onclick = function() {
  console.log("clicked");
};
```

### 5.2 addEventListener() (Best Practice)

```javascript
button.addEventListener('click', function() {
  console.log('clicked');
});
```

Advantages:

* Multiple listeners allowed
* Supports capturing and bubbling
* Cleaner separation of HTML and JS
* Safer and more maintainable

---

## 6. Inline Event Attribute List (Common)

Some frequently used inline event attributes are:

### Mouse Events

* `onclick`
* `ondblclick`
* `onmousedown`
* `onmouseup`
* `onmouseenter`
* `onmouseleave`
* `onmousemove`

### Keyboard Events

* `onkeydown`
* `onkeyup`
* `onkeypress` (deprecated)

### Input/Form Events

* `oninput`
* `onchange`
* `onfocus`
* `onblur`
* `onsubmit`

### Window Events

* `onload`
* `onresize`
* `onscroll`

---

## 7. Example: Inline vs DOM Event Approaches

### Inline Approach

```html
<button onclick="greet()">Hello</button>
```

### DOM Property

```javascript
button.onclick = greet;
```

### addEventListener

```javascript
button.addEventListener('click', greet);
```

---

## 8. When Are Inline Events Acceptable?

Inline events may be acceptable when:

* Prototyping quickly
* Very small demos
* No complex logic involved

But for production, they should be avoided.

---

## Further Reading

* [MDN: Event handlers](https://developer.mozilla.org/en-US/docs/Web/Guide/Events/Event_handlers)
* [MDN: Global event handlers](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes#event_handler_content_attributes)
* [MDN: HTML event attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes#events)
* [MDN: EventTarget.addEventListener()](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/addEventListener)

> 📚 This is part of the JS DOM chapter.
