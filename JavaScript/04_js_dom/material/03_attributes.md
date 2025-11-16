# Accessing HTML Element Attributes in JavaScript

This document explains how to inspect and work with HTML element attributes using the `.attributes` property in JavaScript. It is intended as a simple and clear reference for GitHub documentation.

## 1. What Is `element.attributes`?

`element.attributes` is a NamedNodeMap containing all attributes of an HTML element.

It is **not** an array, but it is array‑like (indexed, has length). Each item inside it is an **Attr node** with `name` and `value`.

Example element:

```html
<button id="btn" class="primary" data-info="sample"></button>
```

Access in JavaScript:

```javascript
const btn = document.getElementById("btn");
console.log(btn.attributes);
```

This prints a list of attributes: `id`, `class`, `data-info`, etc.

## 2. Accessing Attribute by Index

```javascript
btn.attributes[0];
btn.attributes[1];
```

Each item has:

* `name`
* `value`

Example:

```javascript
console.dir(btn.attributes[0].name);   // "id"
console.dir(btn.attributes[0].value);  // "btn"
```

## 3. Looping Through All Attributes

```javascript
for (let attr of btn.attributes) {
  console.log(attr.name, attr.value);
}
```

Output example:

```
id btn
class primary
data-info sample
```

## 4. Accessing Attributes by Name (without `.attributes`)

Although `.attributes` works, the more common approach is:

```javascript
btn.getAttribute("class");
btn.setAttribute("data-info", "updated");
```

## 5. Modifying Attribute Values via `.attributes`

You can modify attributes directly:

```javascript
btn.attributes[1].value = "updated-class";
```

But best practice still uses:

```javascript
btn.setAttribute("class", "updated-class");
```

## 6. Checking the Number of Attributes

```javascript
console.log(btn.attributes.length);
```

## 7. Converting Attributes to an Array

Because it is not a real array:

```javascript
const arr = Array.from(btn.attributes).map(attr => ({ name: attr.name, value: attr.value }));
console.log(arr);
```

## 8. Removing Attributes

```javascript
btn.removeAttribute("data-info");
```

## Further Reading

* MDN – Element.attributes: [https://developer.mozilla.org/en-US/docs/Web/API/Element/attributes](https://developer.mozilla.org/en-US/docs/Web/API/Element/attributes)
* MDN – getAttribute(): [https://developer.mozilla.org/en-US/docs/Web/API/Element/getAttribute](https://developer.mozilla.org/en-US/docs/Web/API/Element/getAttribute)
* MDN – setAttribute(): [https://developer.mozilla.org/en-US/docs/Web/API/Element/setAttribute](https://developer.mozilla.org/en-US/docs/Web/API/Element/setAttribute)

> 📚 This is part of the JS DOM chapter.
