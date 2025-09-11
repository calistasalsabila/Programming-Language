# Java: `equals()` and `hashCode()` Methods

Understanding how Java compares and hashes objects is essential for using collections like `HashMap`, `HashSet`, and ensuring object uniqueness and retrieval accuracy. 🧠📦

---

## What is `equals()`?

The `equals()` method is used to compare two objects for **logical equality** — whether their **contents** are the same, not just their memory addresses.

### Default Behavior:

* Defined in the `Object` class.
* Compares memory addresses (like `==`).

### Custom Implementation:

To compare based on field values, override `equals()`:

```java
@Override
public boolean equals(Object obj) {
    if (this == obj) return true;
    if (obj == null || getClass() != obj.getClass()) return false;
    
    Dokja dokja = (Dokja) obj;
    return name.equals(dokja.name);
}
```

> Always use `@Override` to ensure proper override and avoid mistakes.

---

## What is `hashCode()`?

The `hashCode()` method returns an integer value (the hash code) that represents the object. It’s used in **hash-based collections** like `HashMap`, `HashSet`, etc.

> Think of it as a unique ID used for fast indexing.

---

## Relationship Between `equals()` and `hashCode()`

| Condition                         | Must be true                               |
| --------------------------------- | ------------------------------------------ |
| If `a.equals(b)` is `true`        | `a.hashCode() == b.hashCode()`             |
| If `a.hashCode() == b.hashCode()` | `a.equals(b)` may be true (not guaranteed) |

> Always override `hashCode()` when overriding `equals()` to maintain consistency.

---

## Combined Example

```java
import java.util.Objects;

class Dokja {
    String name;

    Dokja(String name) {
        this.name = name;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        
        Dokja dokja = (Dokja) obj;
        return Objects.equals(name, dokja.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(name);
    }
}

public class Main {
    public static void main(String[] args) {
        Dokja a = new Dokja("Kim Dokja");
        Dokja b = new Dokja("Kim Dokja");

        System.out.println(a.equals(b));       // true 
        System.out.println(a.hashCode());      // same hash
        System.out.println(b.hashCode());      // same hash
    }
}
```

---

## Use in Collections

### Example with `HashSet`

```java
import java.util.*;

HashSet<Dokja> set = new HashSet<>();
set.add(new Dokja("Kim Dokja"));
set.add(new Dokja("Kim Dokja"));

System.out.println(set.size()); // 1 
```

Without overriding `equals()` and `hashCode()`, Java would treat the two instances as **distinct**.

---

## Summary Table

| Method       | Purpose                   | Overridable | Must with each other |
| ------------ | ------------------------- | ----------- | -------------------- |
| `equals()`   | Compares logical equality |  Yes        |  Yes                |
| `hashCode()` | Generates integer hash    | Yes         |  Yes                |

---

## Best Practices

* Always override both `equals()` and `hashCode()` together.
* Use `Objects.equals()` and `Objects.hash()` for null safety and simplicity.
* Avoid mutable fields in hash-based collections.
* Use `@Override` to catch errors during compile-time.

---

## Conclusion

Properly implementing `equals()` and `hashCode()` is crucial when working with object comparisons and collections. It ensures your objects behave correctly, are stored efficiently, and maintain integrity in sets, maps, and other structures. 

> 📚 This is part of the Java OOP chapter.

