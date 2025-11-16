# JavaScript DOM: Console Methods, `document.all`, and Text/HTML/TextContent Manipulation

## 1. `console.dir()`

`console.dir()` displays an interactive list of an object's properties. It is useful for inspecting DOM elements because it shows them as JavaScript objects.

**Example:**

```javascript
document.body;
console.dir(document.body);
```

This exposes all properties and methods of the selected DOM element.

---

## 2. `console.log()`

`console.log()` prints values to the console in a more readable, non-interactive format compared to `console.dir()`.

**Example:**

```javascript
console.log(document.body);
```

This prints the element in an HTML‑like structure.

---

## 3. `document.all`

`document.all` is an old, deprecated collection of all elements in the document. It behaves like an array but should **not** be used in modern JavaScript.

**Example:**

```javascript
console.log(document.all);
```

This prints all elements in the DOM.

### Accessing an element using index

```javascript
console.log(document.all[10]);
```

Returns the 11th element in the DOM.

### Getting `innerText` via index

```javascript
console.log(document.all[10].innerText);
```

Shows the visible text of that element.

---

## 4. `innerText`

`innerText` retrieves or sets the **visible** text inside an element.

### Get text

```javascript
const title = document.querySelector("h1");
console.log(title.innerText);
```

### Set text

```javascript
title.innerText = "New Title";
```

### Append text

```javascript
title.innerText += " (Updated)";
```

---

## 5. `innerHTML`

`innerHTML` retrieves or sets the **HTML markup** inside an element.

### Get HTML

```javascript
const box = document.querySelector("#box");
console.log(box.innerHTML);
```

### Set HTML

```javascript
box.innerHTML = "<p>Inserted paragraph</p>";
```

### Append HTML

```javascript
box.innerHTML += "<span>More content</span>";
```

---

## 6. `textContent`

`textContent` retrieves all text inside an element, including hidden text. It does **not** render HTML.

### Get text

```javascript
const el = document.querySelector("#box");
console.log(el.textContent);
```

### Set text

```javascript
el.textContent = "Hello World";
```

### Append text

```javascript
el.textContent += " - Updated";
```

### Difference vs `innerText`

* `textContent`: returns **all** text, including hidden text.
* `innerText`: returns **visible** text only.
* `innerText` triggers layout reflow; `textContent` does not.

Example:

```javascript
console.log(el.textContent); // includes hidden
console.log(el.innerText);   // visible only
```

---

## 7. `innerText` vs `innerHTML` vs `textContent`

| Property      | Reads Text | Reads HTML | Writes Text | Writes HTML | Includes Hidden Text |
| ------------- | ---------- | ---------- | ----------- | ----------- | -------------------- |
| `innerText`   | Yes        | No         | Yes         | No          | No                   |
| `innerHTML`   | No         | Yes        | Yes         | Yes         | No                   |
| `textContent` | Yes        | No         | Yes         | No          | Yes                  |

---

## 8. Simple DOM Manipulation Examples

### Using `innerHTML`

```javascript
const app = document.querySelector("#app");
app.innerHTML = "<h2>Welcome</h2>";
```

### Using `innerText`

```javascript
const msg = document.querySelector("#msg");
msg.innerText = "Processing...";
```

### Using `textContent`

```javascript
msg.textContent = "Loading...";
```

### Mix appropriately

```javascript
msg.innerText = "Done";
app.innerHTML += "<p>Task completed.</p>";
```

---

## 9. Further Reading

* MDN Web Docs: DOM Introduction
* MDN Web Docs: `innerText`
* MDN Web Docs: `innerHTML`
* MDN Web Docs: `textContent`
* HTML Living Standard

## Further Reading

* MDN Web Docs – DOM Introduction: [https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model/Introduction](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model/Introduction)
* MDN – Selecting DOM Elements: [https://developer.mozilla.org/en-US/docs/Web/API/Document/querySelector](https://developer.mozilla.org/en-US/docs/Web/API/Document/querySelector)
* MDN – DOM Events Guide: [https://developer.mozilla.org/en-US/docs/Web/API/Event](https://developer.mozilla.org/en-US/docs/Web/API/Event)
* JavaScript Info – DOM Basics: [https://javascript.info/dom-nodes](https://javascript.info/dom-nodes)

> 📚 This is part of the JS DOM chapter.
