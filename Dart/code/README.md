# 🐋 Dart Project Folder Structure

This file explains how the folder structure works in my Dart projects, especially regarding the locations of the actual code files.

## 📁 Main Code Folders

In Dart projects created using `dart create`, you will typically see several folders. The two most important ones where *my own Dart code* lives are:

### 1. `bin/` — The Main App Launcher 🚀

* This is the folder for **executable Dart files**, especially your `main()` function — the starting point of your app.
* You can imagine it as the `mainApp` entry, like `public static void main()` in Java.
* Ideal for CLI apps, demos, or testing logic during learning.
* This is where I usually put learning files like `variable.dart`, `number.dart`, and `string.dart`.

> Example:

```bash
/bin
  ├── main.dart       # Entry point
  ├── variable.dart   # Dart basic - variables
  ├── number.dart     # Dart basic - numbers
  └── string.dart     # Dart basic - strings
```

### 2. `lib/` — Like Java Classes 🧩

* This folder contains the **modular code** — think of it like your `class` files in Java.
* It’s where you write reusable components, logic, helpers, and other supporting Dart files.
* You can structure this folder with subfolders like `models/`, `services/`, or `utils/`, depending on your project.

> Example:

```bash
/lib
  ├── models/
  │   └── user.dart
  └── my_library.dart
```

## ℹ️ Why Explain This?

Because when you open the project, you might see other folders like `.dart_tool/`, `test/`, or even `build/`. But only `bin/` and `lib/` contain **the Dart code I actually wrote**.
The rest are auto-generated or meant for testing/config.

So if you're browsing my GitHub repo and wondering:

> **"Where’s the Dart code?"**
> 👉 Check inside `bin/` and `lib/`!

## ✅ TL;DR

| Folder | Description                                                   |
| ------ | ------------------------------------------------------------- |
| `bin/` | Where the `main()` functions and learning files live          |
| `lib/` | Where I put the *modular class-like code*                     |
| others | Tooling/testing/generated — ignore unless you're contributing |

---

Happy hacking with Dart 🐋!
