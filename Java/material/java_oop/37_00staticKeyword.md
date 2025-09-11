# Static Keyword in Java

## What is `static` in Java?

The `static` keyword in Java is used for **memory management**. It can be applied to:

* Variables
* Methods
* Static blocks
* Nested classes
* Static imports

Anything marked as `static` **belongs to the class itself**, not to instances of the class.

> This means you can access it **without creating an object** of the class.

---

## Static Variables (Class Variables)

Static variables are **shared among all instances** of a class. They are initialized only once at the start of program execution.

### Purpose:

To have a common variable shared across all objects.

### Example:

```java
class Counter {
    static int count = 0;  // shared across all instances

    Counter() {
        count++;
        System.out.println(count);
    }
}

public class Main {
    public static void main(String[] args) {
        new Counter();  // prints: 1
        new Counter();  // prints: 2
        new Counter();  // prints: 3
    }
}
```

### Output:

```
1
2
3
```

### Explanation:

All objects share the same `count`. If it were non-static, each object would maintain its own copy.

---

## Static Methods

Static methods can be called **without creating an instance** of the class. They typically perform operations that are not dependent on object state.

### Purpose:

Used for utility or helper methods like `Math.sqrt()` or `Collections.sort()`.

### Example:

```java
class Utility {
    static void sayHi() {
        System.out.println("Hi from Utility");
    }
}

public class Main {
    public static void main(String[] args) {
        Utility.sayHi(); // no object needed
    }
}
```

### Output:

```
Hi from Utility 🔧
```

### Note:

* Static methods **cannot access instance variables or methods** directly.
* They **cannot use `this` or `super` keywords**.

---

## Static Blocks

A static block is a **block of code inside a class that runs only once** when the class is first loaded into memory.

### Purpose:

Used for **static variable initialization** or configuration at class loading time.

### Example:

```java
class AppConfig {
    static String version;

    static {
        version = "1.0.0";
        System.out.println("Static block executed");
    }
}

public class Main {
    public static void main(String[] args) {
        System.out.println("Version: " + AppConfig.version);
    }
}
```

### Output:

```
Static block executed 
Version: 1.0.0
```

### Explanation:

The static block runs automatically when the class is loaded, even before `main()` is executed.

---

## Static Nested Class

A static nested class is a nested class that **does not require an instance of the outer class** to be created.

### Purpose:

Used to logically group classes and when the nested class does not require access to instance members of the outer class.

### Example:

```java
class Outer {
    static class Inner {
        void show() {
            System.out.println("Hello from static nested class!");
        }
    }
}

public class Main {
    public static void main(String[] args) {
        Outer.Inner obj = new Outer.Inner();
        obj.show();
    }
}
```

### Output:

```
Hello from static nested class!
```

---

## Static Import

Static import allows members (fields and methods) defined in another class as `public static` to be **used in the current class without class qualification**.

### Purpose:

Used to improve readability and reduce verbosity when accessing static members frequently.

### 🧪 Example:

```java
import static java.lang.Math.*;  // static import

public class Main {
    public static void main(String[] args) {
        double result = sqrt(16);      // no need for Math.sqrt()
        double piValue = PI;           // no need for Math.PI

        System.out.println("Square root: " + result);
        System.out.println("PI value: " + piValue);
    }
}
```

### Output:

```
Square root: 4.0
PI value: 3.141592653589793
```

### Note:

* Use static import **carefully** — overuse can make code less readable.

---

## Static vs Non-Static Comparison

| Feature         | Static                     | Non-Static                   |
| --------------- | -------------------------- | ---------------------------- |
| Belongs to      | Class                      | Instance/object              |
| Access via      | ClassName.member           | objectReference.member       |
| Memory          | Shared among all instances | Each object has its own copy |
| Can use `this`? | No                         | Yes                        |
| Initialization  | When class is loaded       | When object is created       |

---

## Summary

* `static` is used to define class-level members.
* Helps in reducing memory usage and creating utility or shared members.
* Applicable to: variables, methods, blocks, nested classes, and imports.
* Avoid misuse to keep your code clean and maintainable.

---

> 📚 This is part of the Java OOP chapter.

