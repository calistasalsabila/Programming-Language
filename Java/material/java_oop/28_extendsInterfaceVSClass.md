## Comparison: `extends` in Interface vs Class in Java

### Purpose

In Java, the keyword `extends` is used in different ways depending on the context:

* When **an interface extends another interface**, it's used to **inherit contracts**.
* When **a class extends another class or abstract class**, it's used to **inherit behavior and structure**.

Let's break down the differences, use cases, and examples 

---

### 1. `interface extends interface`

* Used for: Inheriting abstract method declarations from one or more interfaces
* Supports **multiple inheritance**
* Cannot have constructors
* Can have: abstract, default, and static methods

```java
interface Movable {
    void move();
}

interface Flyable extends Movable {
    void fly();
}

class Dokja implements Flyable {
    public void move() {
        System.out.println("Dokja moves.");
    }
    public void fly() {
        System.out.println("Dokja flies.");
    }
}
```

---

### 2. `class extends class`

* Used for: Inheriting **methods, variables, and constructors** from another concrete class
* Cannot extend multiple classes
* All inherited methods can be overridden (unless `final`)

```java
class Jeha {
    void greet() {
        System.out.println("Hi from Jeha");
    }
}

class Hamin extends Jeha {
    void greet() {
        System.out.println("Hi from Hamin");
    }
}

// Usage
Hamin h = new Hamin();
h.greet(); // Output: Hi from Hamin
```

---

### 3. `class extends abstract class`

* Used for: Inheriting both abstract (must implement) and concrete methods (can use directly)
* Supports **partial implementation reuse**

```java
abstract class Character {
    abstract void skill();
    void intro() {
        System.out.println("I am a character.");
    }
}

class Dazai extends Character {
    void skill() {
        System.out.println("Using passive nullification");
    }
}
```

---

### Summary Table

| Feature / Behavior              | `interface extends interface`    | `class extends class`             | `class extends abstract class`    |
| ------------------------------- | -------------------------------- | --------------------------------- | --------------------------------- |
| Inheritance Type                | Contract only                    | Behavior & Structure              | Mixed (Contract + Behavior)       |
| Multiple Inheritance            | ✅ Yes                            | ❌ No                              | ❌ No                              |
| Contains Method Implementations | ❌ (only default/static optional) | ✅ Yes                             | ✅ Partially                       |
| Can have Constructors           | ❌ No                             | ✅ Yes                             | ✅ Yes                             |
| Access Modifiers for Methods    | Public by default                | Any (`private`, `protected`, etc) | Any (`private`, `protected`, etc) |
| Implementation by               | Another interface or class       | Concrete subclass                 | Concrete subclass                 |

---

### Analogy

| Type           | Analogy                                                        |
| -------------- | -------------------------------------------------------------- |
| Interface      | "You *must* do this, but I won't tell you how."                |
| Abstract Class | "You *must* do this, but here are some default tools to help." |
| Concrete Class | "Everything is ready. You just use or override if you like."   |

---

### Conclusion

* Use `interface extends interface` when you're designing **capabilities or roles** (what something *can* do)
* Use `class extends abstract class` when you want to provide a **base template** with partial implementation
* Use `class extends class` for **real-world inheritance** where one class is a true subtype of another

> Design tip: Favor **interface inheritance** for flexibility. Use **abstract classes** when you want to share reusable logic. Use **concrete classes** when behavior is fully defined.

---

### Quick Mnemonic 

>  `interface extends interface`: Like blueprint stacking 
> `class extends abstract class`: Like building on a foundation 
>  `class extends class`: Like child inherits parent DNA 

---
> 📚 This is part of the Java OOP chapter.

