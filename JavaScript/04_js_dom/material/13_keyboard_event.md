# DOM Keyboard Events: `keydown`, `keyup`, `keypress`, `e.key`, `e.code`

This document explains how keyboard events work in the DOM, focusing on `keydown`, `keyup`, and properties such as `e.key`, `e.code`, `e.repeat`, and modifier keys.

---

## 1. Introduction to Keyboard Events

The DOM provides several keyboard-related events that fire when the user interacts with the keyboard. They are commonly used for shortcuts, real-time validation, navigation, games, and accessibility.

### Main Keyboard Events

| Event                       | Fired When                                            |
| --------------------------- | ----------------------------------------------------- |
| **`keydown`**               | When a key is pressed down (fires repeatedly if held) |
| **`keyup`**                 | When a key is released                                |
| **`keypress`** (deprecated) | When a key that produces a character is pressed       |

**Note**: `keypress` is deprecated and should not be used.

---

## 2. `keydown` Event

`keydown` fires when a key is pressed. If a key is held, it fires repeatedly due to auto-repeat.

### Example

```javascript
document.addEventListener("keydown", function (e) {
  console.log("Key down:", e.key);
});
```

### When to Use

* Detecting shortcuts (Ctrl + S)
* Real-time input handling
* Game controls
* Preventing default actions (e.g., blocking F5 refresh)

---

## 3. `keyup` Event

`keyup` fires when a key is released.

### Example

```javascript
document.addEventListener("keyup", function (e) {
  console.log("Key up:", e.key);
});
```

### When to Use

* Enter key submissions
* Stopping movement in games
* Final value of an input field after the user stops pressing keys

---

## 4. Event Object: `e.key` vs `e.code`

When a keyboard event fires, the listener receives an event object containing detailed information about the pressed key.

### `e.key`

Represents the actual value of the key pressed.

* Case-sensitive (`a` vs `A`)
* Language-dependent
* Reflects the character produced

Example:

```javascript
window.addEventListener("keydown", (e) => {
  console.log("e.key:", e.key);
});
```

Example outputs:

* Press A → `"a"` (or `"A"` if Shift is held)
* Press Enter → `"Enter"`
* Press ArrowUp → `"ArrowUp"`

### `e.code`

Represents the physical key location on the keyboard.

* Not affected by keyboard layout
* Not affected by Shift or Caps Lock
* Useful for games and directional controls

Example outputs:

* Press A → `"KeyA"`
* Press semicolon on US keyboard → `"Semicolon"`
* Press ArrowUp → `"ArrowUp"`

### Comparison Table

| Key Pressed    | e.key          | e.code        |
| -------------- | -------------- | ------------- |
| A              | `"a"` or `"A"` | `"KeyA"`      |
| Shift + A      | `"A"`          | `"KeyA"`      |
| Semicolon (US) | `";"`          | `"Semicolon"` |
| ArrowLeft      | `"ArrowLeft"`  | `"ArrowLeft"` |

---

## 5. Other Useful Keyboard Event Properties

### 5.1 `e.repeat`

True if the user holds the key and the event auto-repeats.

```javascript
document.addEventListener("keydown", (e) => {
  if (e.repeat) {
    console.log("Repeated:", e.key);
  }
});
```

### 5.2 Modifier Keys

Properties:

* `e.shiftKey`
* `e.ctrlKey`
* `e.altKey`
* `e.metaKey` (Cmd on macOS)

Example:

```javascript
document.addEventListener("keydown", (e) => {
  if (e.ctrlKey && e.key === "s") {
    e.preventDefault();
    console.log("Ctrl+S pressed");
  }
});
```

---

## 6. Detecting Specific Keys

### Example: Detect Enter

```javascript
input.addEventListener("keydown", (e) => {
  if (e.key === "Enter") {
    console.log("Submitting...");
  }
});
```

### Example: Arrow Keys

```javascript
window.addEventListener("keydown", (e) => {
  if (e.code === "ArrowUp") console.log("Move up");
});
```

---

## 7. Preventing Default Behavior

Some keys trigger browser actions (F5, Ctrl+R, Space, Arrow keys in scrollable areas). You can disable them:

```javascript
document.addEventListener("keydown", (e) => {
  if (e.key === " " || e.key === "ArrowDown") {
    e.preventDefault();
  }
});
```

Use carefully to avoid harming accessibility.

---

## 8. Example: Displaying Key Information

```javascript
document.addEventListener("keydown", (e) => {
  console.log("Key:", e.key);
  console.log("Code:", e.code);
  console.log("Shift:", e.shiftKey);
  console.log("Repeated:", e.repeat);
});
```

---

## 9. Deprecated: `keypress`

`keypress` was used for character-producing keys only.

Why deprecated:

* Inconsistent across browsers
* Does not fire for non-character keys (Arrow keys, Escape)
* Modern web uses `keydown` + `e.key`

Avoid using it.

---

## Further Reading

* [MDN: KeyboardEvent](https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent)
* [MDN: Document: keydown event](https://developer.mozilla.org/en-US/docs/Web/API/Document/keydown_event)
* [MDN: Document: keyup event](https://developer.mozilla.org/en-US/docs/Web/API/Document/keyup_event)
* [MDN: KeyboardEvent.key](https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent/key)
* [MDN: KeyboardEvent.code](https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent/code)


> 📚 This is part of the JS DOM chapter.


