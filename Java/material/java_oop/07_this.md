# `this` Keyword in Java

## What is `this` Keyword?
In Java, `this` is a reference variable that refers to the **current object** of a class. It is mainly used to eliminate confusion between instance variables and parameters, and to access members of the current object.

---
## Purpose of `this` Keyword
`this` keyword is used for:
1. **Referring to instance variables** when shadowed by method or constructor parameters.
2. **Invoking current class methods**.
3. **Calling another constructor** in the same class using `this()`.
4. **Returning the current instance**.
5. **Passing the current instance as a parameter**.

---
## 🔹 Syntax
`this` is used within an instance method or constructor:

```java
class ClassName {
    int instanceVar;

    ClassName(int instanceVar) {
        this.instanceVar = instanceVar; // Refers to the instance variable
    }
}
```

---
## Example 1: `this` for Instance Variable
**Avoiding variable shadowing**

```java
class Person {
    String name;
    
    Person(String name) {
        this.name = name; // 'this.name' refers to the instance variable
    }
    
    void display() {
        System.out.println("Name: " + this.name);
    }
}

public class Main {
    public static void main(String[] args) {
        Person p = new Person("Calista");
        p.display(); // Output: Name: Calista
    }
}
```

**Explanation:**
- `this.name` refers to the instance variable `name`.
- Without `this`, `name = name;` would assign the parameter to itself, causing no change.

---
## Example 2: `this` for Calling a Constructor
A constructor can call another constructor using `this()` to avoid redundant code.

```java
class Car {
    String brand;
    int year;

    Car() {
        this("Toyota", 2023); // Calls parameterized constructor
    }

    Car(String brand, int year) {
        this.brand = brand;
        this.year = year;
    }

    void display() {
        System.out.println("Brand: " + brand + ", Year: " + year);
    }
}

public class Main {
    public static void main(String[] args) {
        Car car1 = new Car();
        Car car2 = new Car("Honda", 2022);

        car1.display(); // Output: Brand: Toyota, Year: 2023
        car2.display(); // Output: Brand: Honda, Year: 2022
    }
}
```

🔍 **Explanation:**
- `this("Toyota", 2023);` calls the parameterized constructor from the default constructor.

---
## Example 3: Returning the Current Object
`this` can be returned from a method to allow method chaining.

```java
class Example {
    int num;

    Example setNum(int num) {
        this.num = num;
        return this; // Returning the current instance
    }

    void display() {
        System.out.println("Number: " + num);
    }
}

public class Main {
    public static void main(String[] args) {
        Example obj = new Example();
        obj.setNum(10).display(); // Output: Number: 10
    }
}
```

**Explanation:**
- `return this;` returns the current instance, enabling method chaining.

---
## Key Takeaways
✅ `this` refers to the **current object**.  
✅ It helps **resolve variable shadowing** between instance and local variables.  
✅ Used to **call another constructor** in the same class.  
✅ Can be **returned** to enable method chaining.  
✅ Helps **pass the current instance** to another method.

---
## Conclusion
The `this` keyword is an essential part of Java OOP, ensuring clarity in code by properly referencing instance variables, calling constructors, and supporting method chaining. Mastering `this` improves Java programming efficiency! 🚀

> 📚 This is part of the Java OOP chapter.
