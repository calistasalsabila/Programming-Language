# Abstract Class vs Interface in Java

## Overview
In Java, **abstract classes (`extends`)** and **interfaces (`implements`)** are two different ways to achieve abstraction and inheritance. This document explains their differences, multiple interface implementation, and design patterns.

---

## Key Differences

| **Feature**                 | **Abstract Class (`extends`)** | **Interface (`implements`)** |
|-----------------------------|--------------------------------|------------------------------|
| **Can have attributes?**    |  Yes (instance variables)    |  Yes, but only `final static` (constants) |
| **Can have method body?**   |  Yes (both abstract & normal methods) |  No (only declarations, unless using `default`) |
| **Can have constructors?**  |  Yes                        |  No |
| **Supports multiple inheritance?** |  No (only one superclass) |  Yes (can implement multiple interfaces) |
| **Purpose**                 | Shared behavior & properties  | Blueprint for implementation |

---

##  Abstract Class Example
```java
// ABSTRACT CLASS
abstract class Animal {
    String name;

    // Constructor
    Animal(String name) {
        this.name = name;
    }

    // Abstract method (must be implemented by subclass)
    abstract void makeSound();

    // Regular method
    void sleep() {
        System.out.println(name + " is sleeping... ");
    }
}

// SUBCLASS
class Cat extends Animal {
    Cat(String name) {
        super(name);
    }

    @Override
    void makeSound() {
        System.out.println(name + " says: Meow! ");
    }
}

// MAIN
public class Main {
    public static void main(String[] args) {
        Cat myCat = new Cat("Mochi");
        myCat.makeSound();
        myCat.sleep();
    }
}
```
**Output:**
```
Mochi says: Meow! 
Mochi is sleeping... 
```
 **Abstract class can have attributes, constructors, and method implementations.**

---

##  Interface Example
```java
// INTERFACE
interface Animal {
    void makeSound(); // No implementation!
}

// CLASS implementing interface
class Cat implements Animal {
    String name;

    Cat(String name) {
        this.name = name;
    }

    @Override
    public void makeSound() {
        System.out.println(name + " says: Meow! ");
    }
}

// MAIN
public class Main {
    public static void main(String[] args) {
        Cat myCat = new Cat("Mochi");
        myCat.makeSound();
    }
}
```
**📝 Output:**
```
Mochi says: Meow! 
```
 **Interface only declares methods, which must be implemented in `Cat`.**

---

##  Multiple Interface Implementation
Java **does not support multiple inheritance** with classes, but it **supports multiple interface implementation**.

### **Example: Implementing Multiple Interfaces**
```java
// INTERFACE 1
interface Animal {
    void makeSound();
}

// INTERFACE 2
interface Pet {
    void play();
}

// CLASS implementing multiple interfaces
class Dog implements Animal, Pet {
    String name;

    Dog(String name) {
        this.name = name;
    }

    @Override
    public void makeSound() {
        System.out.println(name + " says: Woof! ");
    }

    @Override
    public void play() {
        System.out.println(name + " is playing fetch");
    }
}

// MAIN
public class Main {
    public static void main(String[] args) {
        Dog myDog = new Dog("Buddy");
        myDog.makeSound();
        myDog.play();
    }
}
```
**📝 Output:**
```
Buddy says: Woof! 
Buddy is playing fetch!
```
 **`Dog` can implement both `Animal` and `Pet` without any issues!**

---

##  Design Patterns: Singleton Pattern
**Design patterns** are reusable solutions for common problems in software design. One of them is the **Singleton Pattern**, which ensures **only one instance** of a class exists.

### **Example: Singleton Pattern**
```java
// SINGLETON CLASS
class Database {
    private static Database instance; // The only instance

    private Database() {} // Private constructor (prevents direct instantiation)

    public static Database getInstance() {
        if (instance == null) {
            instance = new Database();
        }
        return instance;
    }

    public void connect() {
        System.out.println("Connected to database! 🔗");
    }
}

// MAIN
public class Main {
    public static void main(String[] args) {
        Database db1 = Database.getInstance();
        Database db2 = Database.getInstance();

        db1.connect();

        // Check if db1 and db2 are the same object
        System.out.println(db1 == db2); // Output: true (only one instance exists)
    }
}
```
**Output:**
```
Connected to database! 
true
```
 **Ensures only one `Database` instance is used throughout the application.**

---

## Summary
1. **Abstract Class vs Interface**
   - **Abstract Class** → Can have attributes, constructors, and method implementations.
   - **Interface** → Defines only method signatures (implementations must be provided in classes).

2. **Multiple Interface Implementation**
   - Java **does not support multiple inheritance** with classes, but **supports multiple interface implementation**.

3. **Design Patterns**
   - **Singleton Pattern** ensures that only **one instance** of a class exists.
   - Other patterns include **Factory, Observer, Strategy**, etc.

**Use `extends` for inheritance, `implements` for multiple behaviors!** 

> 📚 This is part of the Java OOP chapter.


