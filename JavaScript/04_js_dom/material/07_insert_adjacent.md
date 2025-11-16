# JavaScript DOM: `insertAdjacent*()` Methods

This document explains the `insertAdjacent*()` methods in JavaScript, including `insertAdjacentElement()`, `insertAdjacentHTML()`, and `insertAdjacentText()`. These methods allow inserting content relative to an existing element without removing the element's current content.

---

## 1. `insertAdjacentElement(position, element)`

Inserts a **Node element** relative to a reference element.

### Positions

* `'beforebegin'` - before the element itself.
* `'afterbegin'` - as the first child.
* `'beforeend'` - as the last child.
* `'afterend'` - after the element itself.

### Example

```javascript
const reference = document.querySelector("#ref");
const newDiv = document.createElement("div");
newDiv.textContent = "Inserted Div";

reference.insertAdjacentElement('beforebegin', newDiv); // Insert before reference
reference.insertAdjacentElement('afterend', newDiv);    // Insert after reference
```

### Key Points

* Only accepts **Element nodes**.
* Moves the node if it already exists in the DOM.
* Does not overwrite existing content.

---

## 2. `insertAdjacentHTML(position, htmlString)`

Inserts **HTML content** as a string relative to a reference element.

### Example

```javascript
const container = document.querySelector("#container");
container.insertAdjacentHTML('beforeend', '<p>Appended HTML</p>');
container.insertAdjacentHTML('afterbegin', '<p>Prepended HTML</p>');
```

### Key Points

* Accepts **HTML strings**.
* Does not return a value.
* Adds content without removing existing elements.

---

## 3. `insertAdjacentText(position, text)`

Inserts **plain text** relative to a reference element.

### Example

```javascript
const container = document.querySelector("#container");
container.insertAdjacentText('beforeend', ' Appended text');
container.insertAdjacentText('afterbegin', 'Prepended text ');
```

### Key Points

* Accepts **plain text**.
* Does not parse HTML.
* Preserves existing content.

---

## 4. Comparison Table

| Method                  | Accepts Elements | Accepts HTML | Accepts Text | Returns | Moves Existing Nodes |
| ----------------------- | ---------------- | ------------ | ------------ | ------- | -------------------- |
| `insertAdjacentElement` | ✔                | ✘            | ✘            | ✔       | ✔                    |
| `insertAdjacentHTML`    | ✘                | ✔            | ✘            | ✘       | ✘                    |
| `insertAdjacentText`    | ✘                | ✘            | ✔            | ✘       | ✘                    |

---

## Further Reading

* [MDN: Element.insertAdjacentElement()](https://developer.mozilla.org/en-US/docs/Web/API/Element/insertAdjacentElement)
* [MDN: Element.insertAdjacentHTML()](https://developer.mozilla.org/en-US/docs/Web/API/Element/insertAdjacentHTML)
* [MDN: Element.insertAdjacentText()](https://developer.mozilla.org/en-US/docs/Web/API/Element/insertAdjacentText)

> 📚 This is part of the JS DOM chapter.
