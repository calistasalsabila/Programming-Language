# Java Fields

## Introduction
Fields in Java are variables that belong to a class or an object. They store data that defines the state of an object.

## Defining Fields
Fields are declared inside a class but outside any methods, constructors, or blocks.

### Syntax
```java
class Car {
    // Fields (Instance Variables)
    String brand;
    int speed;
}
```

## Types of Fields
Java fields can be categorized into three main types:

1. **Instance Variables** - Belong to an instance of a class.
2. **Static Variables** - Shared among all instances of a class.
3. **Final Variables** - Immutable values that cannot be changed once assigned.

## Instance Variables
Instance variables are unique to each object of a class.

### Example:
```java
class Car {
    String brand;
    int speed;
    
    // Constructor
    Car(String brand, int speed) {
        this.brand = brand;
        this.speed = speed;
    }
}

public class Main {
    public static void main(String[] args) {
        Car car1 = new Car("Toyota", 120);
        Car car2 = new Car("Honda", 140);

        System.out.println(car1.brand + " - " + car1.speed + " km/h");
        System.out.println(car2.brand + " - " + car2.speed + " km/h");
    }
}
```

## 🔗 Static Fields
Static fields belong to the class itself and are shared by all objects.

### Example:
```java
class Car {
    static int totalCars = 0; // Static field
    
    Car() {
        totalCars++;
    }
}

public class Main {
    public static void main(String[] args) {
        new Car();
        new Car();
        System.out.println("Total Cars: " + Car.totalCars);
    }
}
```

## Final Fields
Final fields cannot be modified after assignment.

### Example:
```java
class Car {
    final int maxSpeed = 200; // Cannot be changed
}
```

## Conclusion
Fields define the state of an object. Understanding their types and behavior is crucial for effective Java programming.

> 📚 This is part of the Java OOP chapter.

