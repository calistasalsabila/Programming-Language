# JavaScript DOM: Console Methods, `document.all`, and Text/HTML Manipulation

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

This prints the element in an HTML-like format.

---

## 3. `document.all`

`document.all` is an old, deprecated collection of all elements in the document. It behaves like an array but should **not** be used in modern JavaScript.

**Example:**

```javascript
console.log(document.all);
```

This shows every element in the DOM in order.

### Accessing an element using index

You can access elements by index, though this practice is outdated.

**Example:**

```javascript
console.log(document.all[10]);
```

This returns the 11th DOM element.

### Getting `innerText` from `document.all`

**Example:**

```javascript
console.log(document.all[10].innerText);
```

This shows the text content of that element (if it has text).

---

## 4. `innerText`

`innerText` retrieves or sets the **visible text** of an element.

### Get text

```javascript
const title = document.querySelector("h1");
console.log(title.innerText);
```

### Set / manipulate text

```javascript
const title = document.querySelector("h1");
title.innerText = "New Title";
```

### Append text

```javascript
title.innerText += " (Updated)";
```

---

## 5. `innerHTML`

`innerHTML` retrieves or sets the **HTML markup inside** an element.

### Get HTML content

```javascript
const container = document.querySelector("#box");
console.log(container.innerHTML);
```

### Set HTML content

```javascript
container.innerHTML = "<p>Inserted paragraph</p>";
```

This replaces all inner content.

### Add new HTML

```javascript
container.innerHTML += "<span>Additional text</span>";
```

---

## 6. Manipulating Elements with `innerText` vs `innerHTML`

| Property    | Reads Text | Reads HTML | Writes Text   | Writes HTML |
| ----------- | ---------- | ---------- | ------------- | ----------- |
| `innerText` | Yes        | No         | Yes (as text) | No          |
| `innerHTML` | No         | Yes        | Yes           | Yes         |

### Example comparison

```javascript
const box = document.querySelector("#box");

box.innerText = "<p>Hello</p>"; // Displays literally: <p>Hello</p>
box.innerHTML = "<p>Hello</p>"; // Renders a paragraph
```

---

## 7. Simple DOM Manipulation Examples

### Create a heading using `innerHTML`

```javascript
const app = document.querySelector("#app");
app.innerHTML = "<h2>Welcome</h2>";
```

### Update message using `innerText`

```javascript
const msg = document.querySelector("#msg");
msg.innerText = "Processing...";
```

### Mix both appropriately

```javascript
msg.innerText = "Done";
app.innerHTML += "<p>Task completed.</p>";
```

> 📚 This is part of the JS DOM chapter.
