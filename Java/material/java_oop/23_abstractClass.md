# Abstract Class in Java

## What is an Abstract Class?

An **abstract class** in Java is a class that **cannot be instantiated** on its own. It is meant to be **inherited by other classes** and often includes **abstract methods**—methods without a body—that **must be implemented by subclasses**.

> Think of an abstract class as a **blueprint** for other classes.

---

## Key Characteristics

- Declared using the `abstract` keyword.
- May contain **abstract methods** (without body) and **non-abstract methods** (with body).
- Can have **constructors**, **fields**, and **methods**.
- Subclasses **must** implement all abstract methods unless they are also abstract.
- Can extend **another class** and be extended by **another abstract or concrete class**.

```java
abstract class Animal {
    String name;

    // Abstract method (no body)
    abstract void makeSound();

    // Regular method
    void eat() {
        System.out.println(name + " is eating");
    }
}
```

---

## Can We Create an Object from an Abstract Class?

No, we **cannot instantiate** (create an object of) an abstract class directly. It will cause a **compilation error**. You must create a **subclass** and instantiate that instead.

```java
Animal a = new Animal(); // ❌ Error: Animal is abstract; cannot be instantiated
```

### Why Can't We Instantiate It?
Because an abstract class may have **incomplete methods** (abstract methods without body). Java prevents creating an object from a class that might not fully define behavior.

---

## Must Abstract Classes Be Inherited?

While **not strictly required**, abstract classes are **designed to be inherited**. If you define an abstract class and never create a subclass, then it has no functional use in your program.

### What if No One Inherits It?
- The class cannot be used to create objects.
- Its methods cannot be executed.
- It just exists in your codebase without functionality.

### Abstract Methods Must Be Implemented
When a subclass inherits an abstract class, it **must implement all abstract methods** unless:
- The subclass is also marked `abstract`, or
- The abstract class provides concrete (implemented) methods that don't require overriding.

```java
abstract class Bird extends Animal {
    // Still abstract because makeSound() is not implemented
}

class Sparrow extends Bird {
    void makeSound() {
        System.out.println("Chirp chirp 🐦");
    }
}
```

---

## Example with Input and Output

### Abstract Class and Concrete Subclass

```java
abstract class Animal {
    String name;

    Animal(String name) {
        this.name = name;
    }

    abstract void makeSound();

    void eat() {
        System.out.println(name + " is eating.");
    }
}

class Dog extends Animal {
    Dog(String name) {
        super(name);
    }

    void makeSound() {
        System.out.println(name + " says Woof! ");
    }
}

public class Main {
    public static void main(String[] args) {
        Dog myDog = new Dog("Buddy");
        myDog.eat();
        myDog.makeSound();
    }
}
```

### 💻 Output:
```
Buddy is eating.
Buddy says Woof! 
```

---

## Abstract Class vs Interface

| Feature                  | Abstract Class                | Interface                      |
|--------------------------|-------------------------------|--------------------------------|
| Methods with body        | ✅ Yes                        | ✅ (Since Java 8, default/static) |
| Constructor              | ✅ Yes                        | ❌ No                          |
| Fields                   | ✅ Yes (any type)             | ✅ Constants only (public static final) |
| Multiple inheritance     | ❌ No                         | ✅ Yes (can implement multiple) |
| Use-case                 | Base class with default impl  | Contract for capabilities       |

---

## When to Use Abstract Class?

- When you have **shared code** across related classes.
- When you want to **define a common base** with partial implementation.
- When you want to **enforce a structure**, but allow some flexibility.
- When subclassing a general parent class makes more sense semantically.

---

## Access Modifiers in Abstract Class

- Abstract classes and methods can have `public`, `protected`, or `default` (package-private) access.
- Cannot be `private` because abstract methods are meant to be overridden.

```java
abstract class Shape {
    protected abstract double area();
    public void print() {
        System.out.println("Calculating area...");
    }
}
```

---

## Notes

- You **cannot** create an instance of an abstract class:
```java
Animal a = new Animal(); // ❌ Error
```
- Abstract methods **must not** have a body.
- A class becomes abstract if **at least one** method is abstract.
- A class can be declared abstract even if it has **no abstract method**. This prevents instantiation and is useful for base class design.

```java
abstract class BaseLogger {
    void log(String message) {
        System.out.println("Log: " + message);
    }
}
```

---

## Can Abstract Classes Have Multiple Inheritance?

In Java, **abstract classes do not support multiple inheritance**. This means a **class cannot extend more than one class**, including abstract classes.

### Why No Multiple Inheritance for Classes?
- **Ambiguity**: If two base classes have the same method, Java doesn't know which one to use.
- **Diamond Problem**: A conflict when two classes share a method signature but different behaviors.

> For example, consider this code (it would cause a compilation error):
```java
abstract class Animal {
    abstract void makeSound();
}

abstract class Machine {
    abstract void start();
}

// ❌ Error: Cannot extend both Animal and Machine
class RoboDog extends Animal, Machine {
    void makeSound() {
        System.out.println("Bark!");
    }
    void start() {
        System.out.println("Starting robot dog...");
    }
}
```

### Solution with Interfaces:
Java allows **multiple inheritance via interfaces**. Interfaces can be implemented by a class, and the class must implement all the methods declared in the interfaces.

```java
interface Animal {
    void makeSound();
}

interface Machine {
    void start();
}

class RoboDog implements Animal, Machine {
    public void makeSound() {
        System.out.println("Bark!");
    }
    public void start() {
        System.out.println("Starting robot dog...");
    }
}
```

---

## Summary

| Point | Detail |
|-------|--------|
| Purpose | Provide a base class with optional partial implementation |
| Instantiation | Cannot create object directly |
| Method Types | Abstract + Concrete |
| Inheritance | Must be extended |
| Use-case | When shared code logic is needed among related classes |
| Optionality | Can be created without abstract methods |

---

## 🏁 Conclusion

Abstract classes in Java provide a **powerful mechanism for code reuse** and **design abstraction**. They allow you to write flexible and extensible applications by enforcing a **contract** on subclasses while still offering **default behavior**. Perfect for when you want to define a **family of classes** with common functionality but unique behaviors.

> Use abstract classes wisely for **organized, modular, and maintainable code**.

> 📚 This is part of the Java OOP chapter.

