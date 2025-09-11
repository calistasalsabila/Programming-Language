## Java Exception Handling 

### What is an Exception?

An **exception** is an event that disrupts the normal flow of a program during execution. It represents an error or unexpected behavior that occurs while a program is running.

> "Think of an exception as a red flag that tells the program: 'Hey! Something went wrong here!'"

### Purpose of Exception Handling

* Prevents program crash by handling unexpected errors gracefully.
* Helps identify bugs or faults in code.
* Enhances program robustness and user experience.

---

### Types of Exceptions in Java

#### 1. **Checked Exceptions**

Exceptions that are checked at **compile time**.

*Examples:* `IOException`, `SQLException`, `FileNotFoundException`

You must either handle them using `try-catch` or declare them using `throws`.

```java
import java.io.*;

public class CheckedExample {
    public static void main(String[] args) throws IOException {
        FileReader fr = new FileReader("file.txt");
    }
}
```

#### 2. **Unchecked Exceptions**

Exceptions that occur at **runtime**.

*Examples:* `ArithmeticException`, `NullPointerException`, `ArrayIndexOutOfBoundsException`

```java
public class UncheckedExample {
    public static void main(String[] args) {
        int x = 5 / 0;  // ArithmeticException
    }
}
```

#### 3. **Errors**

Serious issues that a typical application should not try to handle.

*Examples:* `OutOfMemoryError`, `StackOverflowError`

---

### Exception Handling Keywords

| Keyword   | Description                                              |
| --------- | -------------------------------------------------------- |
| `try`     | Block where code is written that may cause an exception. |
| `catch`   | Used to handle the exception.                            |
| `finally` | Executes code regardless of exception (optional).        |
| `throw`   | Used to explicitly throw an exception.                   |
| `throws`  | Declares exceptions that a method might throw.           |

---

### Syntax Example: Try-Catch-Finally

```java
public class TryCatchExample {
    public static void main(String[] args) {
        try {
            int[] arr = {1, 2, 3};
            System.out.println(arr[5]);  // Throws ArrayIndexOutOfBoundsException
        } catch (ArrayIndexOutOfBoundsException e) {
            System.out.println("Error: Index out of bounds!");
        } finally {
            System.out.println("Finally block executed.");
        }
    }
}
```

---

### Throwing Custom Exceptions

You can define your own exception by extending `Exception` or `RuntimeException`.

```java
class InvalidAgeException extends Exception {
    public InvalidAgeException(String message) {
        super(message);
    }
}

public class CustomExceptionDemo {
    public static void validate(int age) throws InvalidAgeException {
        if (age < 18) {
            throw new InvalidAgeException("Age must be 18 or older.");
        }
    }

    public static void main(String[] args) {
        try {
            validate(15);
        } catch (InvalidAgeException e) {
            System.out.println("Caught Exception: " + e.getMessage());
        }
    }
}
```

---

### Best Practices

* Always catch specific exceptions first.
* Avoid catching `Exception` unless necessary.
* Use `finally` to release resources like files, DB connections, etc.
* Never ignore exceptions (empty catch blocks).
* Create meaningful custom exceptions for clarity.

---

### Summary

| Topic               | Details                                            |
| ------------------- | -------------------------------------------------- |
| Exception           | Runtime anomaly in code                            |
| Checked Exception   | Compile-time checked (e.g., IOException)           |
| Unchecked Exception | Runtime errors (e.g., NullPointerException)        |
| `try-catch-finally` | Control structure to handle exceptions             |
| `throw/throws`      | Used for manually throwing or declaring exceptions |
| Custom Exception    | User-defined for specific needs                    |

---

### Example Real Case: Login System

```java
class WrongPasswordException extends Exception {
    public WrongPasswordException(String msg) {
        super(msg);
    }
}

public class LoginSystem {
    public static void login(String username, String password) throws WrongPasswordException {
        if (!password.equals("12345")) {
            throw new WrongPasswordException("Invalid password for user: " + username);
        }
        System.out.println("Welcome, " + username + "!");
    }

    public static void main(String[] args) {
        try {
            login("Dokja", "wrongpass");
        } catch (WrongPasswordException e) {
            System.out.println("Login failed: " + e.getMessage());
        }
    }
}
```

---
> 📚 This is part of the Java OOP chapter.

