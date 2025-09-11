# Java Errors Explained

## Definition

In Java, an **error** is a serious problem that occurs either at **compile-time** or **runtime**, and it usually indicates issues that are **not intended to be handled** by normal application code. Unlike exceptions, errors often represent **system-level problems** or **critical failures** that the application should not try to recover from.

Errors are subclasses of the class `java.lang.Error`, which is a subclass of `java.lang.Throwable`.

---

## Types of Errors in Java

Errors can generally be categorized into two main types:

### 1. Compile-Time Errors

These are detected by the Java compiler before the program runs. They include:

* **Syntax Errors**: Mistakes in code structure (e.g., missing semicolon, incorrect method signature)
* **Type Errors**: Assigning incompatible types
* **Missing Classes or Methods**: Using undefined variables, classes, or methods

*These must be fixed before the program can run.*

### 2. Run-Time Errors (Unchecked Errors)

These occur during program execution and are usually represented by objects of type `Error`. Common subtypes include:

| Error Type             | Description                                        |
| ---------------------- | -------------------------------------------------- |
| `StackOverflowError`   | Recursion goes too deep and stack memory overflows |
| `OutOfMemoryError`     | JVM runs out of heap memory                        |
| `VirtualMachineError`  | General JVM-level failure                          |
| `AssertionError`       | Failure of an assert statement                     |
| `NoClassDefFoundError` | JVM can't find the class definition                |

---

## Example 1: StackOverflowError

```java
public class Dokja {
    public static void callForever() {
        callForever();
    }
    public static void main(String[] args) {
        callForever();
    }
}
```

**Output:**

```
Exception in thread "main" java.lang.StackOverflowError
```

---

## Example 2: OutOfMemoryError

```java
import java.util.*;

public class Hamin {
    public static void main(String[] args) {
        List<int[]> list = new ArrayList<>();
        while (true) {
            list.add(new int[1_000_000]);
        }
    }
}
```

**Output:**

```
Exception in thread "main" java.lang.OutOfMemoryError: Java heap space
```

---

## Example 3: NoClassDefFoundError

```java
// Let's say the compiled class file of Jeha.class is missing at runtime
public class Dazai {
    public static void main(String[] args) {
        Jeha j = new Jeha(); // JVM can't find Jeha class
    }
}
```

**Output:**

```
Exception in thread "main" java.lang.NoClassDefFoundError: Jeha
```

---

## Can Errors be Caught?

Technically, yes—you can catch `Error` objects using `try-catch`, but it's **not recommended** in most cases because:

* Errors are **unrecoverable** (e.g., memory overflow)
* Catching them can **mask critical problems**

```java
try {
    // risky code
} catch (Error e) {
    System.out.println("Caught an error (not recommended)");
}
```

---

## Difference Between Error and Exception

| Feature   | Error                | Exception                  |
| --------- | -------------------- | -------------------------- |
| Type      | Unrecoverable issues | Recoverable program issues |
| Package   | `java.lang.Error`    | `java.lang.Exception`      |
| Checked?  | Unchecked            | Checked or Unchecked       |
| Handling? | Not recommended      | Should be handled          |

---

## Best Practices

* Avoid recursive calls unless necessary 
* Monitor memory usage in large applications 
* Don’t catch `Error` unless there's a **very specific** reason 
* Use JVM options (like `-Xmx`) to manage heap size 

---

## Summary

* **Errors** indicate **serious problems** in Java programs, especially related to system or environment failures ❗
* Not meant to be handled in application logic
* Common errors: `OutOfMemoryError`, `StackOverflowError`, `NoClassDefFoundError`
* Focus on **prevention**, not catching

> 📚 This is part of the Java OOP chapter.

