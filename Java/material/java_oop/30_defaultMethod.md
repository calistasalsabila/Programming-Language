# Default Methods in Interfaces in Java

Learn how Java's default methods bring flexibility and backward compatibility to interfaces. Super useful when evolving APIs or providing reusable logic! 

---

## What is a Default Method?

A **default method** is a method defined in an interface with a **default implementation**. This allows an interface to provide method behavior without forcing all implementing classes to override it.

Introduced in **Java 8** to support **interface evolution** without breaking existing code.

---

## Purpose of Default Methods

* Avoid breaking code when interfaces are extended.
* Enable code reuse in interfaces.
* Allow interfaces to act a little more like abstract classes, while still supporting multiple inheritance.

---

## Syntax

```java
public interface InterfaceName {
    default void methodName() {
        // default implementation
    }
}
```

---

## Example with Characters: Dokja, Jeha, and Hamin

### Interface with Default Method:

```java
interface Greeting {
    default void sayHello() {
        System.out.println("Hello from the interface!");
    }
}
```

### Class Implementing the Interface:

```java
class Dokja implements Greeting {
    // Inherits default implementation
}

class Jeha implements Greeting {
    @Override
    public void sayHello() {
        System.out.println("Hi, I'm Jeha!");
    }
}
```

### Main Method:

```java
public class Main {
    public static void main(String[] args) {
        Greeting dokja = new Dokja();
        Greeting jeha = new Jeha();

        dokja.sayHello(); // Hello from the interface!
        jeha.sayHello();  // Hi, I'm Jeha!
    }
}
```

---

## Key Points

* You **can override** default methods in implementing classes.
* Default methods help evolve interfaces without affecting old implementations.
* Use with care: avoid conflicts when multiple interfaces have same default method.

---

## Multiple Inheritance Conflict

```java
interface A {
    default void greet() {
        System.out.println("Hello from A");
    }
}

interface B {
    default void greet() {
        System.out.println("Hello from B");
    }
}

class Hamin implements A, B {
    // Must resolve ambiguity
    public void greet() {
        A.super.greet(); // or B.super.greet()
    }
}
```

---

## Mini Summary

| Feature          | Available Since | Overridable | Supports Super Call |
| ---------------- | --------------- | ----------- | ------------------- |
| `default` method | Java 8          | ✅ Yes       | ✅ Yes (via `super`) |

---

## Conclusion

Default methods make interfaces more powerful by combining the flexibility of abstract classes with the multiple inheritance of interfaces. Use them wisely to write cleaner, more maintainable Java code! 

> 📚 This is part of the Java OOP chapter.

