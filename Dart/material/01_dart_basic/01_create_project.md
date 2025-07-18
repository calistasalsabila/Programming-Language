# 🐋 How to Create a Dart Project

## 🎯 Purpose
This document explains how to properly create a new Dart project using the `dart create` command, including naming rules, project structure, and common issues.

---

## 🧱 Requirements for Project Names

### ✅ Allowed:
- Lowercase letters (`a-z`)
- Numbers (`0-9`) — not at the beginning
- Underscores (`_`) to separate words

### ❌ Not Allowed:
- Uppercase letters (`A-Z`)
- Spaces
- Hyphens (`-`)
- Special characters or symbols
- Dart reserved keywords (e.g. `try`, `if`, `else`, etc)

### ℹ️ Important Notes:
- The project name must contain at least two words separated by underscores (`_`).
- Single-word names like `try`, `app`, or `myproject` may be rejected for being too generic or reserved.

---

## 🧪 Examples of Valid and Invalid Names

| Project Name   | Valid? | Reason |
|----------------|--------|--------|
| `my_project`   | ✅     | Two words, lowercase, underscore |
| `flutter_app`  | ✅     | Common and valid format |
| `MyProject`    | ❌     | Contains uppercase letters |
| `myproject`    | ❌     | Single word, likely to be rejected |
| `try`          | ❌     | Reserved keyword in Dart |
| `my-project`   | ❌     | Contains hyphen (-) |
| `t_ry`         | ✅     | Two words with underscore |

---

## 🛠️ How to Create a Dart Project

Use the following command in your terminal:

```bash
$ dart create your_project_name
```

### ✅ Valid Examples:
```bash
$ dart create hello_world
$ dart create flutter_scanner
```

### ❌ Invalid Examples:
```bash
$ dart create myproject     # ❌ Rejected for being one word
$ dart create try           # ❌ Rejected as a keyword
$ dart create MyProject     # ❌ Rejected for uppercase letters
```

If you try to use an invalid name, you'll see an error like:

```txt
"myproject" is not a valid Dart project name.
Project names should be all lowercase, with underscores to separate words.
```

---

## 🗂️ Default Project Structure (Console Project)

When you run `dart create` (console project), the folder structure looks like this:

```
your_project_name/
├── .dart_tool/               # Internal Dart tooling
├── bin/
│   └── your_project_name.dart   # Main entry point
├── lib/                      # (Optional for library code)
├── test/                     # Unit tests
├── .gitignore                # Git exclusions
├── analysis_options.yaml     # Linter rules & analysis settings
├── CHANGELOG.md              # Project changelog
├── pubspec.yaml              # Project metadata & dependencies
├── pubspec.lock              # Locked dependency versions
└── README.md                 # Project overview
```

### 🔍 File/Folder Descriptions:
- **`.dart_tool/`**: Internal Dart tooling info, auto-managed.
- **`bin/`**: Contains the main executable Dart file (`your_project_name.dart`).
- **`lib/`**: Place for shared libraries or reusable logic (may be empty).
- **`test/`**: Unit tests go here using `package:test`.
- **`.gitignore`**: Excludes files/folders from Git tracking.
- **`analysis_options.yaml`**: Define linting rules and static analysis config.
- **`CHANGELOG.md`**: Describes changes per version.
- **`pubspec.yaml`**: The core config — name, dependencies, metadata.
- **`pubspec.lock`**: Generated after running `dart pub get`; locks exact versions.
- **`README.md`**: A Markdown file explaining the project.

---

## 🔍 Official References
- [Dart Package Layout & Naming](https://dart.dev/tools/pub/package-layout#name)
- [Flutter CLI `create` Command](https://docs.flutter.dev/development/tools/sdk/releases)

---

## 📝 Summary
- Use a project name with at least two lowercase words separated by underscores.
- Avoid using Dart keywords and capital letters.
- Follow the official naming conventions for full compatibility with Dart and Flutter tools.
- Understand the default folder structure to navigate your project confidently.

> "A clean project name is the first step to a clean project. 🐋"
