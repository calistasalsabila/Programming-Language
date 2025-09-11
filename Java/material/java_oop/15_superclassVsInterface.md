# Superclass vs Interface in Java

## Overview
In Java, **superclass (`extends`)** and **interface (`implements`)** are used for inheritance, but they work differently. This document explains their differences, usage, and examples.

---

## Key Differences

| Feature | Superclass (`extends`) | Interface (`implements`) |
|---------|-----------------------|--------------------------|
| **Usage** | `class Child extends Parent {}` | `class Child implements Interface {}` |
| **Multiple Inheritance?** | ❌ No (only one superclass) |  Yes (can implement multiple interfaces) |
| **Method Implementation?** |  Can have method implementations | ❌ Only method declarations (must be overridden) |
| **Has Constructors?** |  Yes | ❌ No |
| **Attributes** |  Can have instance variables |  Can have variables, but they are `final static` (constants) |

---

## Superclass (`extends`) Example
```java
// SUPERCLASS
class Animal {
    String name;
    
    // Constructor
    Animal(String name) {
        this.name = name;
    }
    
    void makeSound() {
        System.out.println("Some generic animal sound...");
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
    }
}
```
**📝 Output:**
```
Mochi says: Meow! 
```
 **Superclass (`Animal`) provides a constructor and method that can be inherited and modified by `Cat`.**

---

##  Interface (`implements`) Example
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
        System.out.println(name + " says: Meow! 😺");
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
**Output:**
```
Mochi says: Meow!
```
 **Interface (`Animal`) only declares the method, which must be implemented in `Cat`.**

---

## When to Use?
1. **Use Superclass (`extends`)** when:
   - You need to share **attributes, methods, and constructors**.
   - You want **single inheritance** (one parent class).
   
2.  **Use Interface (`implements`)** when:
   - You need a **contract/blueprint** for multiple classes.
   - You want **multiple inheritance** (a class can implement multiple interfaces).
   
> 📚 This is part of the Java OOP chapter.


