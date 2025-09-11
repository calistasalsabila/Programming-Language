# Reference vs Object in Java

## Purpose

This markdown serves as a complete guide to deeply understand the critical concepts in Java Object-Oriented Programming (OOP), focusing on the differences between **reference types** and **actual objects**, how **inheritance**, **method overriding**, and **casting (upcasting/downcasting)** behave, and **how the JVM resolves method calls at runtime**.

---

## Theoretical Explanation

### 1. **Reference vs Object**

- **Reference Type**: The type used in the declaration (e.g., `Dokja dokjaRef`). It determines what methods/fields are visible to the compiler.
- **Object (Instance)**: The actual class of the object created with `new`. This determines which implementation of a method gets executed **at runtime**.

```java
Dokja dokjaRef = new Jeha();
```

Here, the reference type is `Dokja`, but the actual object is `Jeha`. So:

- At **compile time**, only methods defined in `Dokja` can be accessed.
- At **runtime**, if a method is **overridden** in `Jeha`, the `Jeha` version is executed.

### 2. **Upcasting (Child → Parent)**

- Happens **implicitly**, no need to cast.
- Only members visible to the **parent class** are accessible.

```java
Jeha jeha = new Jeha();
Dokja dokjaRef = jeha; // Upcasting
```

Safe, always allowed.

### 3. **Downcasting (Parent → Child)**

- Requires **explicit cast**.
- Safe **only if** the actual object is an instance of the child class.

```java
Dokja dokja = new Jeha();
Jeha jehaRef = (Jeha) dokja; // Downcasting OK
```

⚠️ If the object was not originally a `Jeha`, this cast will throw `ClassCastException`.

```java
Dokja dokja = new Dokja();
Jeha jehaRef = (Jeha) dokja; // ❌ Runtime Error
```

### 4. **Why Does Java Allow Dangerous Downcasting?**

- Because Java assumes **you know what you're doing**.
- The compiler allows it with a warning, but it's your job to ensure the object is actually of the casted type.

You can prevent runtime errors using:

```java
if (dokja instanceof Jeha) {
    Jeha jehaRef = (Jeha) dokja;
    jehaRef.code();
}
```

### 5. **Method Overriding vs Variable Hiding**

- **Methods are polymorphic** → Resolved at runtime using the object's actual type.
- **Variables are not polymorphic** → Resolved at compile time using the reference type.

```java
class Person {
    String name = "Dokja";
    void speak() {
        System.out.println("I'm " + name);
    }
}

class Student extends Person {
    String name = "Jeha";
    @Override
    void speak() {
        System.out.println("I'm " + name + " (a student)");
    }
}

public class Main {
    public static void main(String[] args) {
        Person p = new Student();
        System.out.println(p.name); // Dokja
        p.speak(); // I'm Jeha (a student)
    }
}
```

Variable hiding uses reference type.
Method overriding uses object type.

### 6. **Static Methods Are Not Overridden**

Static methods are resolved **at compile-time**, not runtime. Even if a static method is re-declared in the subclass, it doesn't participate in polymorphism.

```java
class Dokja {
    static void method() {
        System.out.println("Static from Dokja");
    }
}

class Jeha extends Dokja {
    static void method() {
        System.out.println("Static from Jeha");
    }
}

public class Main {
    public static void main(String[] args) {
        Dokja dokjaRef = new Jeha();
        dokjaRef.method(); // Output: Static from Dokja
    }
}
```

Even though the object is `Jeha`, because `method()` is static, the reference type `Dokja` determines which method is executed.

---

## Code Example and Output

```java
class Dokja {
    void speak() {
        System.out.println("I'm Dokja.");
    }
}

class Jeha extends Dokja {
    void code() {
        System.out.println("I'm coding in Java!");
    }
}

public class Main {
    public static void main(String[] args) {
        Jeha jeha = new Jeha();
        Dokja dokjaRef = jeha; // Upcasting
        dokjaRef.speak(); // Output: I'm Dokja.

        // dokjaRef.code(); // ❌ Compile error

        Jeha jehaRef = (Jeha) dokjaRef; // Downcasting OK
        jehaRef.code(); // Output: I'm coding in Java!
    }
}
```

### Output:

```
I'm Dokja.
I'm coding in Java!
```

---

## 🔍 Real-Life Analogy

Think of:

- **Dokja (parent class)** as a general role like "Person"
- **Jeha (child class)** as a specific role like "Student"

You can treat a `Student` as a `Person` (upcasting), but not every `Person` is a `Student` (downcasting must be checked).

---

## JVM Method Dispatch Table (V-Table)

### Deep Dive: How JVM Uses the Method Dispatch Table

To deeply understand how **dynamic dispatch** works in Java, especially when dealing with inheritance and overriding, we need to explore how the **JVM internally organizes method calls** using structures like the **method table** or **vtable (virtual method table)**.

### V-Table Structure in JVM

Each **class** (not object) in Java that has non-static methods will have a **vtable**, which is an internal array-like structure maintained by the JVM:

1. For every instance method, a pointer is stored in the vtable that refers to the actual compiled implementation (machine code).
2. If the method is **inherited**, the child’s vtable inherits the parent's entry.
3. If the method is **overridden**, the child’s vtable **replaces the pointer** at that slot with its own method implementation.

So when you write:

```java
Dokja dokja = new Jeha();
dokja.speak();
```

Here's what the JVM does:

### 🔍 Step-by-Step: Dynamic Dispatch via V-Table

1. **Compile Time**:
   - The compiler checks if `speak()` is declared in the reference type `Dokja`.
   - If found, the code compiles.

2. **Runtime**:
   - The JVM checks the actual object type → `Jeha`.
   - It finds the `vtable` associated with class `Jeha`.
   - In the vtable, it finds the `speak()` method pointer → calls `Jeha.speak()`.

That’s why even if your reference is `Dokja`, the version that’s executed is from `Jeha`.

### Visualization Example

```java
class Dokja {
    void speak() { System.out.println("Dokja speaking"); }
    void walk()  { System.out.println("Dokja walking"); }
}

class Jeha extends Dokja {
    @Override
    void speak() { System.out.println("Jeha speaking"); }
}
```

#### Corresponding V-Table:

| Slot | Dokja vtable         | Jeha vtable          |
|------|----------------------|-----------------------|
| 0    | Dokja.speak()        | Jeha.speak() ✅       |
| 1    | Dokja.walk()         | Dokja.walk() (inherited) |

### Static Methods are Not Included

Static methods are resolved **statically** (at compile-time), so they are not stored in the vtable. They are accessed based on reference type.

---

## Conclusion

- The **reference type** limits what the compiler allows you to call.
- The **object type** determines what happens at runtime.
- Upcasting is safe and allows polymorphism.
- Downcasting is risky and should be used with `instanceof`.
- Methods follow **dynamic dispatch** (runtime resolution), while variables use **static resolution** (compile-time).
- Static methods are **not overridden**, they're hidden — and called based on reference type.
- JVM uses **V-Table** to support polymorphism by maintaining per-class method dispatch tables.

---
> 📚 This is part of the Java OOP chapter.

