# Importing All Classes from a Package in Java

---

### Purpose
To understand how to import all classes from a package in Java using the wildcard symbol (`*`), how it works behind the scenes, and when it's useful.

---

### Theory Explanation
In Java, when working with multiple classes that belong to the same package, we can simplify our import statements using the `*` wildcard:

```java
import namaPackage.*;
```

This tells the compiler to import **all** public classes and interfaces from the specified package. However, this does **not** include sub-packages.

#### Key Notes:
- Only **public** classes are accessible via `import`.
- Wildcard `*` only works at **class-level**, **not** package-level.
- Java **does not actually import everything**, it just makes them available for reference; unused classes won't be loaded.
- Sub-packages must be imported **explicitly**.

---

### Example Code & Output

#### Folder Structure:
```
project-folder/
├── app/
│   ├── MainApp.java
├── data/
    ├── A.java
    └── B.java
```

#### File: `data/A.java`
```java
package data;

public class A {
    public void greet() {
        System.out.println("Hello from A!");
    }
}
```

#### File: `data/B.java`
```java
package data;

public class B {
    public void greet() {
        System.out.println("Hello from B!");
    }
}
```

#### File: `app/MainApp.java`
```java
package app;

import data.*; // Import all public classes in 'data'

public class MainApp {
    public static void main(String[] args) {
        A objA = new A();
        B objB = new B();

        objA.greet(); // Output: Hello from A!
        objB.greet(); // Output: Hello from B!
    }
}
```

---

### Real-World Use Case
Wildcard imports are useful when:
- You're working with many utility/helper classes from the same package
- In rapid prototyping or beginner projects
- In academic environments for cleaner syntax

**But**, in production-grade code, explicit imports are often preferred for readability and clarity.

---

### Conclusion

- `import package.*` makes all public classes in that package accessible.
- Sub-packages require separate import.
- Use wildcard for convenience, but explicit imports for clarity.

---

### 📅 Reference:
- [Oracle Java Docs](https://docs.oracle.com/javase/tutorial/java/package/usepkgs.html)
- [GeeksForGeeks Java Packages](https://www.geeksforgeeks.org/packages-in-java/)
- [Java Wildcard Import Best Practice](https://stackoverflow.com/questions/147454/why-is-using-a-wild-card-with-a-java-import-statement-bad)

> 📚 This is part of the Java OOP chapter.


