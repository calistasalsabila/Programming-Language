# Comparison: Static vs Non-Static Inner Classes in Java

This document provides a comprehensive comparison between **static** and **non-static inner classes** in Java. It includes detailed definitions, complete code examples, practical use cases, and feature comparisons.

---

## What Are Inner Classes?

In Java, an **inner class** is a class declared within another class. Java supports two main types of inner classes:

* **Static Inner Class**
* **Non-Static Inner Class (also called Member Inner Class)**

Each has distinct characteristics and use cases.

---

## Static Inner Class

### Characteristics:

* Declared with the `static` keyword.
* Does **not** have a reference to an instance of the outer class.
* Can only access **static members** of the outer class.
* Can be instantiated without an object of the outer class.

### Use Cases:

* Utility classes that logically belong inside another class.
* Helper classes that do not need access to the outer class instance.

### Example:

```java
class Outer {
    private static String staticName = "Outer";

    public static class Inner {
        private String name;

        public void setName(String name) {
            this.name = name;
        }

        public String getName() {
            return name;
        }
    }
}

public class MainStatic {
    public static void main(String[] args) {
        Outer.Inner inner = new Outer.Inner();
        inner.setName("Static Inner");
        System.out.println(inner.getName()); // Output: Static Inner
    }
}
```

---

## Non-Static Inner Class

### Characteristics:

* Declared without the `static` keyword.
* Has an implicit reference to an instance of the outer class.
* Can access both **instance and static members** of the outer class.
* Requires an instance of the outer class to be instantiated.

### Use Cases:

* When the inner class needs access to instance variables or methods of the outer class.
* For tightly coupled classes.

### Example:

```java
class Outer {
    private String outerName = "Outer";

    public class Inner {
        private String name;

        public void setName(String name) {
            this.name = name;
        }

        public String getName() {
            return name + " from " + outerName;
        }
    }
}

public class MainNonStatic {
    public static void main(String[] args) {
        Outer outer = new Outer();
        Outer.Inner inner = outer.new Inner();
        inner.setName("Non-Static Inner");
        System.out.println(inner.getName()); // Output: Non-Static Inner from Outer
    }
}
```

---

## 🧾 Feature Comparison Table

| Feature                            | Static Inner Class     | Non-Static Inner Class        |
| ---------------------------------- | ---------------------- | ----------------------------- |
| Requires outer class instance?     |  No                   |  Yes                         |
| Access outer class instance?       |  No                   |  Yes                         |
| Can access static outer members?   |  Yes                  |  Yes                         |
| Can access instance outer members? |  No                   |  Yes                         |
| Instantiation Syntax               | `new Outer.Inner()`    | `outerInstance.new Inner()`   |
| Use Case                           | Utility/helper classes | Classes needing outer context |

---

## When to Use Each?

### Use **Static Inner Class** if:

* The inner class is **logically independent** of the outer class's instance.
* You don’t need to access any non-static fields or methods of the outer class.
* You want to reduce memory usage and prevent implicit references.

### Use **Non-Static Inner Class** if:

* The inner class needs to **access instance members** of the outer class.
* There is a strong coupling between the outer and inner class.

---

## Additional Notes

* Java also supports other types of inner classes: **local classes** (defined inside methods) and **anonymous classes** (for one-time use).
* Inner classes are a powerful way to logically group classes that are only used in one place.

---

##  Summary

Inner classes allow better encapsulation and organization of code. Understanding the difference between static and non-static inner classes helps in designing robust, memory-efficient, and maintainable Java applications.

```java
// Summary Instantiation Syntax:
// Static:        Outer.Inner obj = new Outer.Inner();
// Non-Static:    Outer outer = new Outer();
//                Outer.Inner obj = outer.new Inner();
```

> 📚 This is part of the Java OOP chapter.
