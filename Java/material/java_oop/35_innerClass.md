# Java Inner Class

## Definition

An **Inner Class** is a class defined inside another class. It's used to logically group classes that are only used in one place, enhancing encapsulation and readability.

> Inner class = class inside another class 

---

## Purpose

* Organize code more effectively 
* Simplify access to members of the outer class 
* Enhance encapsulation and hide logic 
* Ideal for logic that's not reused elsewhere 

---

## Types of Inner Classes

1. **Non-static (Regular Inner Class)**
2. **Static Nested Class**
3. **Local Class (inside a method)**
4. **Anonymous Class**

---

## Examples and Explanations

### 1. Non-static Inner Class

```java
public class Dokja {
    private String name = "Dokja";

    class Jeha {
        void sayHi() {
            System.out.println("Hi from " + name); // direct access to outer
        }
    }

    public static void main(String[] args) {
        Dokja outer = new Dokja();
        Jeha inner = outer.new Jeha();
        inner.sayHi();
    }
}
```

*Explanation:*

* `Jeha` is a non-static inner class.
* Can directly access the outer class's field `name`.
* Requires an instance of the outer class.

---

### 2. Static Nested Class

```java
public class Dokja {
    static String title = "Outer";

    static class Jeha {
        void show() {
            System.out.println("Inside static nested class: " + title);
        }
    }

    public static void main(String[] args) {
        Dokja.Jeha inner = new Dokja.Jeha();
        inner.show();
    }
}
```

 *Explanation:*

* `Jeha` is a static nested class.
* Can only access static members of the outer class.
* No need to instantiate the outer class.

---

### 3. Local Class (inside method)

```java
public class Dokja {
    void greet() {
        class Hamin {
            void hello() {
                System.out.println("Hello from local class!");
            }
        }

        Hamin hamin = new Hamin();
        hamin.hello();
    }

    public static void main(String[] args) {
        new Dokja().greet();
    }
}
```

 *Explanation:*

* `Hamin` is a local class within the `greet` method.
* Only accessible within the method.
* Used for logic scoped to a specific method.

---

### 4. Anonymous Class

```java
interface Greeting {
    void sayHello();
}

public class Dokja {
    public static void main(String[] args) {
        Greeting greet = new Greeting() {
            public void sayHello() {
                System.out.println("Hi from anonymous class!");
            }
        };

        greet.sayHello();
    }
}
```

*Explanation:*

* An instance of `Greeting` is implemented anonymously.
* Commonly used for short logic, callbacks, or listeners.
* Has no class name.

---

## Summary

| Type            | Can Access Outer Class | Needs Outer Instance? | When to Use       |
| --------------- | ---------------------- | --------------------- | ----------------- |
| Non-static      |  Yes                  |  Yes                 | Regular logic     |
| Static Nested   |  Static only          |  No                  | Utility/helper    |
| Local Class     |  Yes (in method)      |  Yes                 | Scoped to method  |
| Anonymous Class |  Yes                  |  Yes                 | Short logic block |

---

## Tips

* Use inner classes when the relationship is tightly coupled with the outer class.
* Avoid overusing them — prefer standalone classes for reusable logic.

> 📚 This is part of the Java OOP chapter.
