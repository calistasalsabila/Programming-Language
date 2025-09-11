# Java Access Modifiers

---

## What Are Access Modifiers?

> **Access modifiers** in Java define the **visibility** or **access level** of classes, constructors, methods, and variables.

They control **where** a class member can be accessed **from other parts of your program**.

---

## Types of Access Modifiers

Java provides **four** types of access modifiers:

| Modifier     | Class | Package | Subclass | World (Anywhere) |
|--------------|-------|---------|----------|------------------|
| `public`     | ✅    | ✅      | ✅       | ✅               |
| `protected`  | ✅    | ✅      | ✅       | ❌               |
| (default)    | ✅    | ✅      | ❌       | ❌               |
| `private`    | ✅    | ❌      | ❌       | ❌               |

> **Note:** The (default) access modifier (aka *package-private*) is applied when no modifier is specified.

---

## `public`

### Access Level:
- Accessible **from anywhere** in the program.

### Example:
```java
public class Dokja {
    public int age = 25;

    public void greet() {
        System.out.println("Hi from Dokja!");
    }
}
```
You can access `age` and `greet()` from any other class in any package.

---

## `protected`

### Access Level:
- Accessible within the **same package** and by **subclasses** in other packages.

### Example:
```java
public class Jeha {
    protected String name = "Jeha";

    protected void show() {
        System.out.println("Hello " + name);
    }
}
```
A subclass outside the package can access `name` using inheritance.

---

## (No Modifier) - *Default / Package-private*

### Access Level:
- Accessible **only within the same package**.

### Example:
```java
class Hamin {
    int score = 90;  // default access

    void printScore() {
        System.out.println("Score: " + score);
    }
}
```
`score` and `printScore()` are **not accessible** from classes outside the package.

---

## `private`

### Access Level:
- Accessible **only within the class** where it is declared.

### Example:
```java
public class Dazai {
    private String secret = "I'm not okay.";

    private void whisper() {
        System.out.println(secret);
    }
}
```
No other class (even in the same package) can access `secret` or call `whisper()`.

>  Use `getter` and `setter` methods to access `private` data safely.

---

##  Access Modifiers in Different Contexts

### For Classes
- Only `public` and *default* are allowed.
```java
public class Main {}     // OK
class Helper {}          // OK
private class Test {}    // ❌ Compilation Error
```

### For Variables & Methods
- All four access levels (`public`, `protected`, `default`, `private`) are allowed.

### For Constructors
- Use `private` to implement singleton patterns or restrict instantiation.

```java
public class Singleton {
    private static Singleton instance = null;

    private Singleton() {}  // Private constructor

    public static Singleton getInstance() {
        if (instance == null) {
            instance = new Singleton();
        }
        return instance;
    }
}
```

---

## Summary Table

| Modifier     | Class | Same Package | Subclass | Other Packages |
|--------------|--------|--------------|----------|----------------|
| `public`     | ✅     | ✅           | ✅       | ✅             |
| `protected`  | ✅     | ✅           | ✅       | ❌             |
| (default)    | ✅     | ✅           | ❌       | ❌             |
| `private`    | ✅     | ❌           | ❌       | ❌             |

---

> 📚 This is part of the Java OOP chapter.


