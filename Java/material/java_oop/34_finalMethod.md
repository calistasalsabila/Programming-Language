# `final method` in Java

## Definition

A `final method` in Java is a method that **cannot be overridden** by any subclass. It is declared using the `final` keyword.

---

## Purpose

* To **prevent modification** of core behavior in subclasses.
* To ensure **consistent implementation** of a method in inheritance chains.
* Used when a method provides **essential logic** that should not be changed.

---

## Syntax

```java
class ClassName {
    final returnType methodName() {
        // method body
    }
}
```

> A `final` method can be called and inherited, but **not overridden**.

---

## Example

```java
class Dokja {
    final void greet() {
        System.out.println("Hello from Dokja!");
    }
}

class Jeha extends Dokja {
    void greet() { // ❌ Error!
        System.out.println("Hi!");
    }
}
```

### Output / Compilation

```
Error: cannot override the final method from Dokja
```

---

## Valid Use Case Example

```java
class Hamin {
    final void importantRule() {
        System.out.println("This must not be changed.");
    }

    void normalRule() {
        System.out.println("This can be overridden.");
    }
}

class Dazai extends Hamin {
    // void importantRule() { } // ❌ Not allowed

    void normalRule() { // ✅ Allowed
        System.out.println("Overridden rule.");
    }
}

public class Main {
    public static void main(String[] args) {
        Dazai d = new Dazai();
        d.importantRule();
        d.normalRule();
    }
}
```

### Output:

```
This must not be changed.
Overridden rule.
```

---

## Notes

* A `final method` cannot be overridden, **but it can be overloaded**.
* Constructors **cannot** be `final` (they are not inherited anyway).
* Declaring a method `final` enhances **security and design clarity**.

---

## Summary

| Feature            | Description                                   |
| ------------------ | --------------------------------------------- |
| Can be overridden? | ❌ No                                          |
| Can be overloaded? | ✅ Yes                                         |
| Purpose            | Lock behavior in inheritance                  |
| Common use         | Secure logic, template methods, base behavior |

---

## Tips

* Combine with `final class` or `abstract class` depending on your design needs.
* Helpful in large-scale applications to **avoid accidental overrides**.

---

> 📚 This is part of the Java OOP chapter.

