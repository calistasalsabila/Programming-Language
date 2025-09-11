# Java Objects

## Introduction
Objects are the fundamental building blocks of Object-Oriented Programming (OOP) in Java. An object is an instance of a class that contains attributes (fields) and behaviors (methods).

## Defining an Object
In Java, an object is created from a class. A class is a blueprint that defines the properties and behaviors of an object.

### Syntax
```java
// Define a class
class Car {
    String brand;
    int speed;
    
    // Constructor
    Car(String brand, int speed) {
        this.brand = brand;
        this.speed = speed;
    }
    
    // Method to display car details
    void display() {
        System.out.println("Brand: " + brand + ", Speed: " + speed + " km/h");
    }
}

// Main class
public class Main {
    public static void main(String[] args) {
        // Creating an object
        Car myCar = new Car("Toyota", 120);
        myCar.display();
    }
}
```

## Object Characteristics
1. **State** - Represented by attributes (fields/variables) of the object.
2. **Behavior** - Represented by methods that define what an object can do.
3. **Identity** - Each object has a unique memory address.

## Creating Objects in Java
Objects are created using the `new` keyword, which allocates memory for the object and calls the constructor.

### Example:
```java
Car myCar = new Car("Tesla", 150);
```

## Accessing Object Members
Object members (fields and methods) can be accessed using the dot (`.`) operator.
```java
System.out.println(myCar.brand); // Accessing field
myCar.display(); // Calling method
```

## Garbage Collection
Java automatically handles memory management using **Garbage Collection**. When an object is no longer referenced, it is removed from memory.

## Conclusion
Objects in Java are essential for structuring programs using OOP principles. Understanding objects, classes, and their interactions is crucial for mastering Java programming. 

> 📚 This is part of the Java OOP chapter.
