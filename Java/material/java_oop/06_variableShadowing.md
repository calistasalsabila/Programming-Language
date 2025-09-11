# Java Variable Shadowing

## 🔹 What is Variable Shadowing?
Variable shadowing in Java occurs when a variable in a subclass or method hides (or "shadows") a variable of the same name in the superclass or enclosing scope. This can lead to confusion if not handled properly.

 **Key Characteristics:**
- Happens when a local variable has the same name as an instance or class variable.
- The local variable temporarily hides the original variable.
- Can occur in methods, constructors, or subclasses.
- Accessing the shadowed variable requires using `this` or `super`.

---

## 🔹 Purpose of Variable Shadowing
Variable shadowing can be used to:
1. **Differentiate between local and instance variables** in constructors and methods.
2. **Override variables in subclasses** while maintaining the ability to access the original variable.
3. **Improve readability** when used correctly, but may introduce confusion if not managed properly.

---

## 🔹 Syntax of Variable Shadowing
### 1. **Shadowing Instance Variables in a Method**
```java
class Example {
    int number = 10; // Instance variable

    void display() {
        int number = 20; // Local variable shadows the instance variable
        System.out.println("Local number: " + number);
        System.out.println("Instance number: " + this.number);
    }
}

public class Main {
    public static void main(String[] args) {
        Example obj = new Example();
        obj.display();
    }
}
```
**Output:**
```
Local number: 20
Instance number: 10
```

---

### 2. **Shadowing a Superclass Variable in a Subclass**
```java
class Parent {
    String name = "Parent";
}

class Child extends Parent {
    String name = "Child"; // Shadows the parent's variable

    void display() {
        System.out.println("Child name: " + name);
        System.out.println("Parent name: " + super.name);
    }
}

public class Main {
    public static void main(String[] args) {
        Child obj = new Child();
        obj.display();
    }
}
```
**Output:**
```
Child name: Child
Parent name: Parent
```

---

### 3. **Shadowing Static Variables**
```java
class Parent {
    static String message = "Hello from Parent";
}

class Child extends Parent {
    static String message = "Hello from Child"; // Shadows static variable
}

public class Main {
    public static void main(String[] args) {
        System.out.println(Child.message);  // Accessing shadowed variable
        System.out.println(Parent.message); // Accessing parent variable
    }
}
```
 **Output:**
```
Hello from Child
Hello from Parent
```

---

## 🔹 How to Avoid Confusion
🔸 Use `this` to refer to instance variables inside methods.
🔸 Use `super` to refer to parent class variables in a subclass.
🔸 Avoid unnecessary shadowing unless required for clarity or design reasons.

---

## Conclusion
Variable shadowing is an important concept in Java that helps differentiate between variables in different scopes. While useful in certain cases, it should be used carefully to avoid confusion and maintain readability in your code. Happy coding! 

> 📚 This is part of the Java OOP chapter.


