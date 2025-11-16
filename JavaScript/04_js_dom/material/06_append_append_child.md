# JavaScript DOM: `append()` and `appendChild()`

This document explains how `append()` and `appendChild()` work in the DOM, their differences, use cases, limitations, and examples. Both methods are used to insert new nodes into the DOM, but they behave differently.

---

## 1. `appendChild()`

`appendChild()` is a DOM method used to insert a **node** as the last child of a parent element.

### Key Characteristics

* Only accepts **Node objects** (e.g., elements, text nodes).
* Returns the inserted node.
* Moves the node if it already exists in the DOM.
* Cannot insert plain text directly (must create a text node).

### Example: Appending an Element

```javascript
const parent = document.querySelector("#container");
const newItem = document.createElement("p");
newItem.textContent = "This is a paragraph";

parent.appendChild(newItem);
```

### Example: Appending a Text Node

```javascript
const parent = document.querySelector("#box");
const textNode = document.createTextNode("Hello world");
parent.appendChild(textNode);
```

### Moving an Existing Node

If the node is already in the DOM, `appendChild()` will **move** it.

```javascript
const item = document.querySelector("#item1");
const list = document.querySelector("#list2");

list.appendChild(item); // moved from list1 to list2
```

---

## 2. `append()`

`append()` is more flexible than `appendChild()` because it can insert **nodes AND strings**.

### Key Characteristics

* Accepts **Node objects** *and* **strings**.
* Can append **multiple** items at once.
* Does **not** return a value.
* Supports adding text without creating a text node manually.

### Example: Appending an Element

```javascript
const parent = document.querySelector("#wrap");
const div = document.createElement("div");

div.textContent = "New div";
parent.append(div);
```

### Example: Appending Text Directly

```javascript
parent.append("Hello world");
```

### Example: Appending Multiple Items

```javascript
const p = document.createElement("p");
parent.append(p, " additional text", " and more text");
```

---

## 3. `append()` vs `appendChild()`

| Feature                   | `append()` | `appendChild()` |
| ------------------------- | ---------- | --------------- |
| Accepts elements          | ✔          | ✔               |
| Accepts strings           | ✔          | ✘               |
| Returns inserted node     | ✘          | ✔               |
| Append multiple arguments | ✔          | ✘               |
| Moves existing nodes      | ✔          | ✔               |
| More modern               | ✔          | ✘               |

### When to Use What

* Use **`appendChild()`** when:

  * You need to work strictly with nodes.
  * You need the returned node.

* Use **`append()`** when:

  * You want to append text easily.
  * You want to append multiple items.
  * You want simpler syntax.

---

## 4. Practical Examples

### Example: Building a List

```javascript
const list = document.querySelector("#todo");
const li = document.createElement("li");
li.textContent = "Study DOM";

list.appendChild(li);
```

### Example: Appending Strings and Elements

```javascript
const container = document.querySelector("#msg");
const strong = document.createElement("strong");
strong.textContent = "Important:";

container.append(strong, " Read the documentation.");
```

### Example: Mixing Both

```javascript
const parent = document.querySelector("#box");
const span = document.createElement("span");
span.textContent = "Updated";

parent.append("Status: ");
parent.appendChild(span);
```

---

## 5. Important Notes

* `append()` is newer and available in modern browsers.
* Both methods insert content at the **end** of the parent element.
* Neither method replaces existing content.
* If you need to insert **at the beginning**, use:

  * `.prepend()`
  * `.insertBefore()`

---

## Further Reading

* [MDN: ParentNode.append()](https://developer.mozilla.org/en-US/docs/Web/API/ParentNode/append)
* [MDN: Node.appendChild()](https://developer.mozilla.org/en-US/docs/Web/API/Node/appendChild)

> 📚 This is part of the JS DOM chapter.
