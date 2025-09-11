# Introduction to Dart Programming Language

Welcome to your journey with **Dart**, a modern programming language optimized for building fast apps on any platform. Dart is the primary language used for Flutter, but it also works well for server, desktop, and web development.

---

## What is Dart?

**Dart** is an object-oriented, class-based programming language developed by Google. It’s designed for:

**Client-side development** (web, mobile, desktop)
**Fast performance** with Ahead-of-Time (AOT) compilation
**Productivity** with features like hot reload (in Flutter)
**Cross-platform capabilities**

---

## Why Learn Dart?

* Used in Flutter — one of the most popular frameworks for building mobile apps
* Clean and familiar syntax (similar to Java, JavaScript, and C#)
* Strongly typed with null safety
* Great tooling support with IDEs like VS Code and Android Studio
* Easy to learn for beginners

---

## Installation Guide

### Prerequisites

* OS: Windows, macOS, or Linux
* Internet connection

### Install Dart SDK

#### **Using Dart’s Official Installer**

1. Visit: [https://dart.dev/get-dart](https://dart.dev/get-dart)
2. Choose your OS and follow the installation steps.

#### **Using Homebrew (macOS)**

```bash
brew tap dart-lang/dart
brew install dart
```

#### **Using Chocolatey (Windows)**

```bash
choco install dart-sdk
```

#### **Using APT (Ubuntu/Linux)**

```bash
sudo apt update -y
sudo apt install apt-transport-https
sudo sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
sudo sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
sudo apt update -y
sudo apt install dart
```

---

## Verifying Installation

```bash
dart --version
```

You should see something like:

```
Dart SDK version: 3.x.x (stable) on "windows_x64"
```

---

## Creating Your First Dart File

### 1. Create a new Dart file

Create a file named `hello.dart`:

```dart
void main() {
  print('Hello, world!');
}
```

### 2. Run the Dart file

```bash
dart hello.dart
```

### Output:

```
Hello, world!
```

---

## Basic Syntax Overview

### Variables

```dart
var name = 'Dokja';
String friend = 'Jeha';
int age = 21;
double height = 170.5;
bool isSmart = true;
```

### Functions

```dart
void greet(String name) {
  print('Hello, $name!');
}

void main() {
  greet('Hamin');
}
```

### Conditionals

```dart
if (age >= 18) {
  print('Adult');
} else {
  print('Minor');
}
```

### Loops

```dart
for (int i = 0; i < 5; i++) {
  print('Count: \$i');
}
```

### Classes

```dart
class Character {
  String name;
  int level;

  Character(this.name, this.level);

  void introduce() {
    print('I am \$name, level \$level.');
  }
}

void main() {
  var dazai = Character('Dazai', 99);
  dazai.introduce();
}
```

---

## Resources

* [Official Dart Website](https://dart.dev)
* [Dart Language Tour](https://dart.dev/guides/language/language-tour)
* [DartPad](https://dartpad.dev/) — try Dart in the browser!

---

> 📚 This is part of the Dart basic chapter.

