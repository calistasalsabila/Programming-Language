# Encapsulation & Getter Setter in Java

**Encapsulation** is one of the fundamental principles in OOP (Object-Oriented Programming). It is the practice of hiding internal data of a class and only allowing access to it through public methods. This makes the class more secure, maintainable, and easier to manage.

---

## What is Encapsulation?

Encapsulation = Wrapping data + hiding it from outside access.

**Main Goals:**

* Prevent direct access to variables from outside the class.
* Allow controlled access through defined methods.
* Maintain data integrity and security.

---

## How to Implement Encapsulation in Java

Steps:

1. Declare class variables as `private`.
2. Create public **getter** and **setter** methods to access and modify them.

```java
public class Dokja {
    private String name;
    private int age;

    // Getter
    public String getName() {
        return name;
    }

    // Setter
    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        if (age > 0) {
            this.age = age;
        } else {
            System.out.println("Age must be positive!");
        }
    }
}
```

Usage:

```java
Dokja d = new Dokja();
d.setName("Kim Dokja");
d.setAge(27);
System.out.println(d.getName()); // Kim Dokja
System.out.println(d.getAge());  // 27
```

---

## Getter vs Setter

| Method Type | Description            |
| ----------- | ---------------------- |
| Getter      | Used to read a value   |
| Setter      | Used to update a value |

### Getter & Setter Naming Conventions

| Data Type | Getter Method | Setter Method             |
| --------- | ------------- | ------------------------- |
| `boolean` | `isXxx()`     | `setXxx(boolean value)`   |
| primitive | `getXxx()`    | `setXxx(primitive value)` |
| `Object`  | `getXxx()`    | `setXxx(Object value)`    |

Example for `boolean`:

```java
private boolean active;

public boolean isActive() {
    return active;
}

public void setActive(boolean active) {
    this.active = active;
}
```

---

## Benefits of Encapsulation

* ✅ Keeps internal data safe
* ✅ Adds validation before changing values
* ✅ Easy to maintain and update code
* ✅ Makes classes modular and reusable

---

## Easy Analogy

Think of a **capsule medicine**. You cannot see or access what's inside directly. You just consume it and trust that it works. In the same way, the class hides the internal logic and exposes only the necessary parts.

---

## Important Notes

* You can create **getter only** → making the variable **read-only**.
* You can create **setter only** → making the variable **write-only**.
* You can add logic/validation in setter methods to protect your data.

---

 **Additional Example:**

```java
public class Jeha {
    private double balance;

    public double getBalance() {
        return balance;
    }

    public void setBalance(double amount) {
        if (amount >= 0) {
            this.balance = amount;
        } else {
            System.out.println("Balance cannot be negative!");
        }
    }
}
```
---
> 📚 This is part of the Java OOP chapter.


