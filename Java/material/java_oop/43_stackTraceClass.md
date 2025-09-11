# StackTraceElement Class in Java

## Definition

The `StackTraceElement` class in Java is part of the `java.lang` package. It represents a single **stack frame**, which is an element of the **call stack** displayed when an exception is thrown.

Each `StackTraceElement` gives detailed information about the **location** in the code where the method was called, including:

* Class name
* Method name
* File name
* Line number

---

## Purpose

* Help **debug** exceptions and errors
* Provide **traceability** of how the program reached a certain point
* Allow developers to log or analyze exception flows systematically

It is especially useful when combined with exception handling via `Throwable.getStackTrace()`.

---

## Constructor

```java
StackTraceElement(String declaringClass, String methodName, String fileName, int lineNumber)
```

Creates a new `StackTraceElement` manually (mostly used for advanced logging or testing).

---

## Methods Overview

Here are the common methods provided by `StackTraceElement`:

| Method             | Description                                          |
| ------------------ | ---------------------------------------------------- |
| `getClassName()`   | Returns the fully qualified name of the class        |
| `getMethodName()`  | Returns the name of the method                       |
| `getFileName()`    | Returns the source file name                         |
| `getLineNumber()`  | Returns the line number in the file                  |
| `isNativeMethod()` | Returns true if the method is native                 |
| `toString()`       | Returns a readable string of the stack trace element |

---

## Example: Getting Stack Trace

```java
public class Dokja {
    public static void methodA() {
        methodB();
    }

    public static void methodB() {
        throw new RuntimeException("Something went wrong");
    }

    public static void main(String[] args) {
        try {
            methodA();
        } catch (Exception e) {
            for (StackTraceElement element : e.getStackTrace()) {
                System.out.println("Class: " + element.getClassName());
                System.out.println("Method: " + element.getMethodName());
                System.out.println("File: " + element.getFileName());
                System.out.println("Line: " + element.getLineNumber());
                System.out.println("Native? " + element.isNativeMethod());
                System.out.println("---");
            }
        }
    }
}
```

---

## Sample Output

```
Class: Dokja
Method: methodB
File: Dokja.java
Line: 7
Native? false
---
Class: Dokja
Method: methodA
File: Dokja.java
Line: 3
Native? false
---
Class: Dokja
Method: main
File: Dokja.java
Line: 12
Native? false
---
```

---

## Practical Usage

You can use StackTraceElement to:

* Create **custom exception logs**
* Extract **file and line info** for logging frameworks (e.g., Log4j, SLF4J)
* Filter and process stack traces programmatically

```java
Throwable t = new Throwable();
StackTraceElement caller = t.getStackTrace()[0];
System.out.println("Called from: " + caller);
```

---

## Notes

* Stack traces are printed from **most recent call (top)** to **oldest (bottom)**
* `getStackTrace()` returns an array of `StackTraceElement`
* A single exception can give you a **complete trail** of method calls 

---

## Summary

* `StackTraceElement` gives detailed info on each method call in the stack 
* It’s vital for debugging and logging
* Can be used programmatically to trace code execution

---
> 📚 This is part of the Java OOP chapter.

