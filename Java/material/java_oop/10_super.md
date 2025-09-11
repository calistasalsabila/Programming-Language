# Super Keyword in Java 

## Introduction
The `super` keyword in Java is a reference variable used to refer to the **immediate parent class**. It is commonly used in **inheritance** to call the **parent class methods, constructors, and variables**. This keyword helps avoid naming conflicts between parent and child class members.

## Purpose of `super`
1. **Access parent class methods** when they are overridden in the child class.
2. **Call parent class constructors** from the child class constructor.
3. **Access parent class fields** when they are shadowed by child class fields.

## Syntax
```java
super.memberName; // Access parent class variable
super.methodName(); // Call parent class method
super(); // Call parent class constructor
```

## Example 1: Using `super` to Call Parent Class Method
```java
class Parent {
    void display() {
        System.out.println("Hello from Parent class");
    }
}

class Child extends Parent {
    void display() {
        System.out.println("Hello from Child class");
    }
    
    void show() {
        super.display(); // Calls Parent's display method
    }
}

public class Main {
    public static void main(String[] args) {
        Child obj = new Child();
        obj.show();
    }
}
```
**Output:**
```
Hello from Parent class
```

## Example 2: Using `super` to Call Parent Class Constructor
```java
class Parent {
    Parent() {
        System.out.println("Parent Constructor Called");
    }
}

class Child extends Parent {
    Child() {
        super(); // Calls Parent's constructor
        System.out.println("Child Constructor Called");
    }
}

public class Main {
    public static void main(String[] args) {
        Child obj = new Child();
    }
}
```
**Output:**
```
Parent Constructor Called
Child Constructor Called
```

## Example 3: Using `super` to Access Parent Class Variable
```java
class Parent {
    String name = "Parent";
}

class Child extends Parent {
    String name = "Child";
    
    void showNames() {
        System.out.println("Child Name: " + name);
        System.out.println("Parent Name: " + super.name); // Accessing parent class variable
    }
}

public class Main {
    public static void main(String[] args) {
        Child obj = new Child();
        obj.showNames();
    }
}
```
**Output:**
```
Child Name: Child
Parent Name: Parent
```

## Important Notes
- `super()` must **always be the first statement** in a constructor if used.
- If a method is overridden in the child class, **`super.methodName()` explicitly calls the parent’s version**.
- `super` cannot be used in a **static** context since it belongs to an instance.

## Conclusion
The `super` keyword is a powerful feature in Java that allows child classes to **access parent class members**, **avoid redundancy**, and **maintain clear code structure**. Mastering `super` ensures better understanding and application of **inheritance** in Java.

> 📚 This is part of the Java OOP chapter.


