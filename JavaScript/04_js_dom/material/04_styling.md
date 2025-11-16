# JavaScript DOM: Styling Elements

This document explains how to style HTML elements using JavaScript, including modifying inline styles, working with CSS classes, and accessing computed styles.

---

## 1. Styling Using `element.style`

The `element.style` property lets you modify inline CSS directly from JavaScript. It is useful when you need to change a single element's style dynamically without editing external stylesheets.
The `style` property allows you to set inline CSS directly on an element.

```javascript
const box = document.getElementById("box");
box.style.backgroundColor = "lightblue";
box.style.width = "200px";
box.style.height = "100px";
```

Notes:

* Property names use **camelCase**, not hyphens.

  * Example: `backgroundColor` instead of `background-color`
* Values must be strings.

---

## 2. Adding Multiple Styles at Once

Sometimes you need to apply several inline styles at once. The `cssText` property allows you to assign a full block of CSS rules in a single operation.
You can apply several styles in one assignment using `cssText`.

```javascript
box.style.cssText = "color: white; background: black; padding: 10px;";
```

---

## 3. Using `classList` to Manage CSS Classes

Instead of modifying inline styles, you can let CSS handle the appearance while JavaScript switches classes on and off. `classList` provides clean methods for managing an element’s classes.
Working with classes is the recommended way to style elements.

### Add a class

```javascript
box.classList.add("active");
```

### Remove a class

```javascript
box.classList.remove("active");
```

### Toggle a class

```javascript
box.classList.toggle("hidden");
```

### Check if a class exists

```javascript
box.classList.contains("active");
```

---

## 4. Replacing Classes

If you want to substitute one class for another without removing and adding manually, `classList.replace()` provides a direct and efficient way to update class names.

```javascript
box.classList.replace("old-class", "new-class");
```

---

## 5. Reading Computed Styles

`getComputedStyle()` allows you to read the final style applied to an element (including external CSS).

```javascript
const styles = getComputedStyle(box);
console.log(styles.backgroundColor);
console.log(styles.margin);
```

This is read-only — you cannot change styles through computed values.

---

## 6. Changing CSS Variables (Custom Properties)

JavaScript can modify CSS variables defined in `:root` or any element.

### CSS

```css
:root {
  --main-color: blue;
}
```

### JavaScript

```javascript
document.documentElement.style.setProperty("--main-color", "crimson");
```

---

## 7. Styling Multiple Elements

Use a loop when selecting multiple elements.

```javascript
const items = document.querySelectorAll(".item");
items.forEach(el => {
  el.style.border = "1px solid black";
});
```

---

## 8. Removing Inline Styles

You can clear specific properties or all inline styles.

### Remove one style

```javascript
box.style.backgroundColor = "";
```

### Remove all inline styles

```javascript
box.removeAttribute("style");
```

---

## 9. Deep Explanation of Each Styling Method

### 9.1 How `element.style` Actually Works

When you modify styling through `element.style`, you are setting **inline styles** directly onto the HTML element. Inline styles have higher specificity than styles defined in external or internal CSS, meaning:

* Inline style > internal stylesheet > external CSS > browser defaults.

Every property must be written in camelCase. When JavaScript runs:

```javascript
box.style.backgroundColor = "red";
```

The browser converts this to HTML:

```html
<div id="box" style="background-color: red;"></div>
```

This affects only that element, not others sharing the same class.

---

### 9.2 Why Use `cssText`?

`cssText` lets you apply multiple inline styles at once:

```javascript
box.style.cssText = "width: 100px; height: 100px; background: blue;";
```

But take note:

* **It replaces all existing inline styles.**
* Useful for resetting or applying a full styling block.
* Not recommended for small isolated changes.

---

### 9.3 Why `classList` Is Usually Better Than `.style`

Using classes keeps your styling clean and maintains separation between **structure (HTML)**, **presentation (CSS)**, and **behavior (JS)**.

Example:

```css
.active {
  background: green;
  color: white;
}
```

```javascript
box.classList.add("active");
```

Advantages:

* Easy to maintain.
* Reusable rules.
* Cleaner HTML.
* More scalable for big projects.

---

### 9.4 `classList` Methods Explained

* **`.add()`** → Adds one or more classes.
* **`.remove()`** → Removes classes.
* **`.toggle()`** → Adds class if missing, removes if present.
* **`.contains()`** → Checks if element has a class.
* **`.replace()`** → Replaces an existing class with another.

Example:

```javascript
if (!box.classList.contains("highlight")) {
  box.classList.add("highlight");
}
```

---

### 9.5 Understanding `getComputedStyle()`

This method returns the **final calculated style** after:

* external CSS
* internal CSS
* inline styles
* browser default styles
* inherited styles

Computed styles are useful when you need to *read* an element’s visual properties.

Example:

```javascript
const styles = getComputedStyle(box);
console.log(styles.fontSize); // always returns pixel value
```

Important notes:

* Computed values are **read-only**.
* Useful for animations or layout calculations.
* Always returns absolute pixel values, not percentages.

---

### 9.6 How CSS Variables Interact With JavaScript

CSS variables live in the DOM’s style tree and can be modified dynamically.

Example:

```css
:root {
  --theme-bg: white;
}
```

```javascript
document.documentElement.style.setProperty("--theme-bg", "black");
```

This allows theme switching without rewriting multiple CSS rules.

---

### 9.7 Styling Multiple Elements Properly

`querySelectorAll()` returns a NodeList that supports `forEach`, making group styling easy.

```javascript
document.querySelectorAll(".item").forEach(item => {
  item.style.border = "1px solid #444";
});
```

Useful when applying styles like:

* list formatting
* row highlighting
* responsive components

---

### 9.8 Removing Styles Safely

Instead of wiping all styles, prefer removing classes:

```javascript
box.classList.remove("active");
```

If you must remove inline styles:

```javascript
box.style.backgroundColor = "";
```

This removes the inline override and allows external CSS to take effect.

---

### 9.9 Understanding Specificity When Styling With JS

Specificity rules affect how browser decides which style wins:

1. Inline style (from JS)
2. `#id` selectors
3. `.class` selectors
4. `tag` selectors

Example:

```css
#box { background: green; }
.box { background: blue; }
div { background: yellow; }
```

```javascript
box.style.background = "red"; // always wins
```

---

## Summary

* Use `.style` for inline styles.
* Use `.classList` for cleaner and maintainable styling.
* Use `getComputedStyle()` to read visual values.
* CSS variables can be updated via JavaScript.

---

## Further Reading

* [MDN: HTMLElement.style](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/style)
* [MDN: Element.classList](https://developer.mozilla.org/en-US/docs/Web/API/Element/classList)
* [MDN: getComputedStyle()](https://developer.mozilla.org/en-US/docs/Web/API/Window/getComputedStyle)
* [JavaScript Info: Styles and Classes](https://javascript.info/styles-and-classes)

## Additional Details

### How Inline Styling Works

When you access `element.style`, you are modifying the inline styles of that element. These override stylesheet rules but can be overridden by `!important` rules.

### CamelCase Conversion

In JavaScript, CSS properties using hyphens are converted to camelCase when accessed via `style`:

* `background-color` → `backgroundColor`
* `font-size` → `fontSize`
* `text-align` → `textAlign`

### Reading Computed Styles

Inline styles only show properties explicitly set using JavaScript or in the HTML element. To read actual applied styles:

```javascript
const box = document.querySelector("#box");
const styles = window.getComputedStyle(box);
console.log(styles.backgroundColor);
console.log(styles.margin);
```

### Removing Styles

You can remove inline styling by assigning an empty string:

```javascript
box.style.backgroundColor = "";
box.style.margin = "";
```

### Setting Multiple Styles at Once

Use `cssText`:

```javascript
box.style.cssText = "background: red; padding: 20px; color: white;";
```

This overwrites all existing inline styles.

### Editing CSS Classes Instead of Inline Styles

Sometimes better to update classes:

```javascript
box.classList.add("active");
box.classList.remove("hidden");
box.classList.toggle("dark-mode");
```

This avoids cluttering HTML with inline styles.

### Example: Dynamic Theme Toggling

```javascript
const body = document.body;
const btn = document.querySelector("#toggleTheme");

btn.addEventListener("click", () => {
  body.classList.toggle("dark");
});
```

### Using Style Objects with `Object.assign`

```javascript
Object.assign(box.style, {
  backgroundColor: "#333",
  padding: "15px",
  borderRadius: "8px",
});
```

> 📚 This is part of the JS DOM chapter.
