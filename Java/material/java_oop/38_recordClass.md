# Java Record Class

## Definition

A `record` in Java is a special type of class introduced as a preview feature in Java 14 and officially added in Java 16. It is a concise way to create data-carrying classes that are immutable by default. Records are ideal for simple data aggregation where behavior is less important than data itself.

When you define a record, Java automatically provides:

* A constructor
* Getter methods (named exactly like the fields)
* `toString()` method
* `equals()` and `hashCode()` methods

---

## Purpose of Using Record

* To store immutable data
* To reduce boilerplate code in data classes
* Useful for DTOs (Data Transfer Objects), configuration holders, value objects, etc.
* Enforces immutability, leading to safer code and easier debugging

---

## Basic Syntax

```java
public record RecordName(Type1 field1, Type2 field2) {}
```

### Example

```java
public record Student(String name, int age) {}
```

This single line automatically generates the following:

* A canonical constructor: `Student(String name, int age)`
* Getters: `name()`, `age()`
* `toString()`: returns something like `Student[name=Dokja, age=20]`
* `equals()` and `hashCode()` methods based on fields

---

## Example Usage

```java
public class Main {
    public static void main(String[] args) {
        Student dokja = new Student("Dokja", 20);
        System.out.println(dokja.name());   // Output: Dokja
        System.out.println(dokja.age());    // Output: 20
        System.out.println(dokja);          // Output: Student[name=Dokja, age=20]
    }
}
```

---

## Key Characteristics of Records

* Fields declared in the header are **private and final** by default.
* No need (or possibility) to write setters — data is immutable.
* Records **can implement interfaces** but **cannot extend other classes**.
* You can add custom methods and static fields/methods.
* You can also customize the constructor and add validation.

---

## Example with Custom Method and Interface

```java
public interface Introducible {
    String introduce();
}

public record Detective(String name, String agency) implements Introducible {
    @Override
    public String introduce() {
        return "Hi, I'm " + name + " from " + agency + ".";
    }
}

public class Main {
    public static void main(String[] args) {
        Detective dazai = new Detective("Dazai", "Armed Detective Agency");
        System.out.println(dazai.introduce());
    }
}
```

### Output

```
Hi, I'm Dazai from Armed Detective Agency.
```

---

## Immutability and Restrictions

* You cannot reassign values of a record's field after creation.
* You cannot have instance fields outside of the parameter list.
* Static fields/methods are allowed.
* You **can define compact constructors** to validate data:

### Example with Validation

```java
public record User(String username, String email) {
    public User {
        if (username == null || username.isBlank()) {
            throw new IllegalArgumentException("Username must not be blank");
        }
    }
}
```

---

## When *Not* to Use Records

* When your class needs to be mutable
* When behavior and logic outweigh simple data-holding
* When inheritance is required (since records are `final`)
* When you want more control over field visibility or lifecycle

---

## Use Cases

* DTO (Data Transfer Object)
* API response wrappers
* Configuration objects
* Value objects in domain-driven design
* Simple result pairs or holders in utility methods

---

## Comparison: Class vs Record

| Feature          | Class                | Record                        |
| ---------------- | -------------------- | ----------------------------- |
| Boilerplate      | High                 | Low                           |
| Mutability       | Mutable (by default) | Immutable (by default)        |
| Inheritance      | Supports `extends`   | Cannot extend another class   |
| Interfaces       | Yes                  | Yes                           |
| Constructors     | Manual               | Auto-generated (customizable) |
| Typical Use Case | Business logic       | Data carrier                  |

---

## References

* [Oracle Docs - Record](https://docs.oracle.com/en/java/javase/17/language/records.html)
* [Baeldung - Java Records](https://www.baeldung.com/java-record-keyword)
* [Official JEP 395](https://openjdk.org/jeps/395)

---

> 📚 This is part of the Java OOP chapter.

