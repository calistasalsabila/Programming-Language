# Polymorphism in Java

## 🔍 What is Polymorphism?
Polymorphism is one of the core concepts of Object-Oriented Programming (OOP) in Java. It allows a single interface to be used for different data types or objects. The word "Polymorphism" means "many forms," enabling a method, function, or operator to behave differently based on the context.

### Why Use Polymorphism?
- Improves **code reusability**
- Enhances **scalability and maintainability**
- Enables **method overriding and method overloading**
- Supports **dynamic method dispatch** for flexibility

---

## Types of Polymorphism in Java

### 1. **Compile-time Polymorphism (Method Overloading)**
Compile-time polymorphism is achieved using **method overloading**, where multiple methods in the same class have the same name but different parameter lists.

```java
class MathOperations {
    // Method with two integer parameters
    int add(int a, int b) {
        return a + b;
    }

    // Method with three integer parameters
    int add(int a, int b, int c) {
        return a + b + c;
    }

    // Method with double parameters
    double add(double a, double b) {
        return a + b;
    }
}

public class Main {
    public static void main(String[] args) {
        MathOperations math = new MathOperations();
        System.out.println(math.add(2, 3));        // Output: 5
        System.out.println(math.add(2, 3, 4));     // Output: 9
        System.out.println(math.add(2.5, 3.5));   // Output: 6.0
    }
}
```

### Explanation
- The `add()` method is **overloaded** with different parameter lists.
- The compiler determines which method to call **at compile time** based on arguments passed.

---

### 2. **Runtime Polymorphism (Method Overriding)**
Runtime polymorphism is achieved using **method overriding**, where a subclass provides a specific implementation of a method already defined in the parent class.

```java
class Person {
    void introduce() {
        System.out.println("I am a person.");
    }
}

class Dokja extends Person {
    @Override
    void introduce() {
        System.out.println("I am Dokja, a reader of stories.");
    }
}

class Jeha extends Person {
    @Override
    void introduce() {
        System.out.println("I am Jeha, an ambitious developer.");
    }
}

public class Main {
    public static void main(String[] args) {
        Person p1 = new Dokja();
        Person p2 = new Jeha();
        
        p1.introduce();  // Output: I am Dokja, a reader of stories.
        p2.introduce();  // Output: I am Jeha, an ambitious developer.
    }
}
```

### Explanation
- `Person` is the **parent class**.
- `Dokja` and `Jeha` **override** the `introduce()` method.
- Even though `p1` and `p2` are declared as `Person`, the method that gets executed is determined **at runtime**.

---

## Key Differences Between Overloading and Overriding

| Feature            | Method Overloading | Method Overriding |
|--------------------|-------------------|-------------------|
| Type of Polymorphism | Compile-time | Runtime |
| Method Name | Same | Same |
| Parameter List | Must be different | Must be the same |
| Return Type | Can be different | Should be the same or covariant |
| Access Modifier | Can be different | Cannot be more restrictive |

---

## Conclusion
- **Polymorphism** allows methods to take different forms, improving code reusability and flexibility.
- **Method Overloading** happens **at compile-time** and allows multiple methods with the same name but different parameters.
- **Method Overriding** happens **at runtime** and allows subclasses to provide specific implementations of inherited methods.
- **Dynamic method dispatch** ensures that the method called is determined based on the object's actual type, not the reference type.

> 📚 This is part of the Java OOP chapter.

