# Try-With-Resources in Java

## Definition

`try-with-resources` is a feature in Java that allows you to automatically close resources (like files, streams, etc.) after they are used. This avoids resource leaks and makes code cleaner and safer. It was introduced in Java 7.

Resources must implement the `AutoCloseable` interface (or its subinterface `Closeable`).

## Purpose

* Automatically close resources
* Eliminate the need for explicit `finally` blocks
* Make code more readable and less error-prone

## Syntax

```java
try (ResourceType name = new ResourceType()) {
    // Use the resource here
} catch (ExceptionType e) {
    // Handle exception
}
```

### Explanation

| Part                                       | Description                                    |
| ------------------------------------------ | ---------------------------------------------- |
| `try`                                      | Starts a block where the resource is used      |
| `(ResourceType name = new ResourceType())` | Declares and initializes one or more resources |
| `{ ... }`                                  | Code that uses the resource                    |
| `catch`                                    | Optional block to handle exceptions            |

You can declare multiple resources using semicolons:

```java
try (Resource1 r1 = new Resource1(); Resource2 r2 = new Resource2()) {
    // Use both r1 and r2
}
```

## Example

### Example using `BufferedReader`

```java
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class ReadFileExample {
    public static void main(String[] args) {
        try (BufferedReader reader = new BufferedReader(new FileReader("example.txt"))) {
            String line;
            while ((line = reader.readLine()) != null) {
                System.out.println(line);
            }
        } catch (IOException e) {
            System.out.println("An error occurred: " + e.getMessage());
        }
    }
}
```

### Output

If `example.txt` contains:

```
Hello, Dokja!
Welcome to the world of Java!
```

The output will be:

```
Hello, Dokja!
Welcome to the world of Java!
```

## Without Try-With-Resources (Manual Close)

```java
BufferedReader reader = null;
try {
    reader = new BufferedReader(new FileReader("example.txt"));
    String line;
    while ((line = reader.readLine()) != null) {
        System.out.println(line);
    }
} catch (IOException e) {
    System.out.println("An error occurred: " + e.getMessage());
} finally {
    try {
        if (reader != null) reader.close();
    } catch (IOException ex) {
        ex.printStackTrace();
    }
}
```

**As you can see**, `try-with-resources` removes the need for `finally` and makes the code shorter and safer.

## Custom Resource (Implementing AutoCloseable)

```java
class MyResource implements AutoCloseable {
    public void doSomething() {
        System.out.println("Doing something with MyResource");
    }

    @Override
    public void close() {
        System.out.println("MyResource is now closed");
    }
}

public class Main {
    public static void main(String[] args) {
        try (MyResource res = new MyResource()) {
            res.doSomething();
        }
    }
}
```

### Output

```
Doing something with MyResource
MyResource is now closed
```

## Notes

* Resources are closed in **reverse order** of their creation.
* Each resource must be **effectively final** (not reassigned after initialization).
* Works with any class that implements `AutoCloseable`, including `Closeable`.

## 🏁 Summary

| Feature            | With Try-With-Resources | Without        |
| ------------------ | ----------------------- | -------------- |
| Auto Close         |  Yes                   |  No           |
| Requires `finally` |  No                    |  Yes          |
| Readable           |  Cleaner               |  More verbose |

---
> 📚 This is part of the Java OOP chapter.

